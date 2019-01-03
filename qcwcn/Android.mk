# adp8064 and fox box do not share wifi code
ifeq ($(filter adp8064 fox,$(TARGET_DEVICE)),)
  ifeq ($(strip $(BOARD_WLAN_DEVICE)), $(filter $(BOARD_WLAN_DEVICE), UNITE qcwcn))
    include $(call all-subdir-makefiles)
  endif
endif
