#ifndef __XGRIL_SHIM_H__
#define __XGRIL_SHIM_H__

#define LOG_TAG "xgril-shim"
#define RIL_SHLIB

#include <dlfcn.h>
#include <inttypes.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include <cutils/compiler.h>
#include <cutils/properties.h>
#include <sys/cdefs.h>
#include <telephony/ril.h>
#include <utils/Log.h>

#define RIL_LIB_PATH "/system/lib/libril-qc-qmi-1.so"

#define LIBRIL_PATH "/system/lib/libril.so"

extern const char * requestToString(int request);

typedef struct {
    int requestNumber;
    void (*dispatchFunction) (void *p, void *pRI);
    int(*responseFunction) (void *p, void *response, size_t responselen);
} CommandInfo;

typedef struct RequestInfo {
    int32_t token;
    CommandInfo *pCI;
    struct RequestInfo *p_next;
    char cancelled;
    char local;
    int client_id;      // 0 or 1 corresponding to each of RIL.java clients
} RequestInfo;

#endif /* __XGRIL_SHIM__ */
