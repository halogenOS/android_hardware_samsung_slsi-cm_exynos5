# Copyright (C) 2013 The Android Open Source Project
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

ifeq ($(filter-out exynos5,$(TARGET_BOARD_PLATFORM)),)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libexynosutils libexynosv4l2

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../include \
	$(TOP)/hardware/samsung_slsi-cm/exynos/include \
	$(TOP)/hardware/samsung_slsi-cm/exynos/libexynosutils

LOCAL_HEADER_LIBRARIES := generated_kernel_headers

LOCAL_SRC_FILES := libscaler.cpp

LOCAL_CFLAGS := -Wno-mismatched-tags -Wno-unused-parameter -Wno-format -Wno-unused-variable -Wno-gnu-designator -Wno-error

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := libexynosscaler
include $(BUILD_SHARED_LIBRARY)

endif
