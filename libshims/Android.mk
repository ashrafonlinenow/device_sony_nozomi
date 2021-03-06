# Copyright (C) 2015-2016 The CyanogenMod Project
# Copyright (C) 2017 nAOSP ROM
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

# libshim_ATFWD
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    symbols/Parcel.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder
    
LOCAL_MODULE := libshim_ATFWD

#LOCAL_MODULE_TAGS := optimal
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

# libshim_cald
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    gui/SensorManager.cpp \
    utils/Looper.cpp \
    utils/VectorImpl.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    external/safe-iop/include \
    system/core/libutils

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libcutils \
    libgui \
    libsensor \
    libutils \
    liblog

LOCAL_MODULE := libshim_cald

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

# libshim_camera
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    gui/SurfaceComposerClient.cpp \
    utils/VectorImpl.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    external/safe-iop/include \
    system/core/libutils

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libgui \
    libui \
    libbinder \
    libhardware \
    liblog \
    libsync \
    libutils

LOCAL_MODULE := libshim_camera

#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

# libshim_suntrold
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    bionic/md5.c

LOCAL_MODULE := libshim_suntrold

#LOCAL_MODULE_TAGS := optimal
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
