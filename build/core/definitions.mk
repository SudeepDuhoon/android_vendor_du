#
# DU-specific macros
#
define uniq
$(if $1,$(firstword $1) $(call uniq,$(filter-out $(firstword $1),$1)))
endef

# Include QCOM macros
include vendor/du/build/core/qcom_utils.mk