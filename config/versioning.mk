#
# Copyright (C) 2020 Raphielscape LLC.
# Copyright (C) 2022 Robust Group LLC.
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
#

PLATFORM_ROBUST_RELEASE := REBORN
PLATFORM_ROBUST_VERSION := $(PLATFORM_ROBUST_RELEASE).$(shell date +%m%d%H%M)

TARGET_PRODUCT_SHORT := $(subst robust_,,$(TARGET_DEVICE))

ifeq ($(TARGET_BUILD_VARIANT),OFFICIAL)
    PLATFORM_ROBUST_VERSION := $(PLATFORM_ROBUST_RELEASE)
    PROD_VERSION += RobustOS-$(PLATFORM_ROBUST_RELEASE)-$(TARGET_DEVICE)-$(shell date +%m%d%H%M)-OFFICIAL
else
    PLATFORM_ROBUST_VERSION := $(PLATFORM_ROBUST_RELEASE)
    PROD_VERSION += RobustOS-$(PLATFORM_ROBUST_RELEASE)-$(TARGET_DEVICE)-$(shell date +%m%d%H%M)-UNOFFICIAL
endif

PRODUCT_PRODUCT_PROPERTIES += \
    ro.system.robust.version=$(PLATFORM_ROBUST_VERSION)
