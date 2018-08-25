# Kernel
include vendor/robust/config/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/robust/config/BoardConfigQcom.mk
endif

# Soong
include vendor/robust/config/BoardConfigSoong.mk
