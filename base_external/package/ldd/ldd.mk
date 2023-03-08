
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = '134e3c21f988b80ae58ee63a28d20209443060ba'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-mash9756.git'
LDD_SITE_METHOD = git
#LDD_GIT_SUBMODULES = YES

LDD_LICENSE = GPL-2.0
LDD_LICENSE_FILES = COPYING

LDD_MODULE_SUBDIRS = scull
LDD_MODULE_SUBDIRS += misc_modules
LDD_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

#invoke kernel module helper infrastructure
$(eval $(kernel-module))
$(eval $(generic-package))
