# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright 2020 Paranoid Android

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),nord)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif