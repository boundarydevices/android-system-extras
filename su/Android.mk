LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := su
LOCAL_MODULE_TAGS := optional
LOCAL_WHOLE_STATIC_LIBRARIES := libcutils libutils libbinder liblog
LOCAL_SRC_FILES := su.c daemon.c pts.c
LOCAL_CFLAGS += -Werror

ifeq ($(BOARD_SU_ALLOW_ALL),true)
LOCAL_CFLAGS += -DSU_ALLOW_ALL
endif

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

include $(BUILD_EXECUTABLE)
