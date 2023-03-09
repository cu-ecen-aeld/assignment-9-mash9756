
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = b16c638508af19bad7e2d1f2eac1cddc0d74d4fd
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-mash9756.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

# LDD_LICENSE = GPL-2.0
# LDD_LICENSE_FILES = COPYING

LDD_MODULE_SUBDIRS = scull misc-modules
LDD_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

# invoke kernel module helper infrastructure
$(eval $(kernel-module))

# install load and unload scripts
define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/sbin/
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/sbin/
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/sbin/
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/sbin/
endef

$(eval $(generic-package))
