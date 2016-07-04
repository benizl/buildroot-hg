################################################################################
#
# python-cherrypy
#
################################################################################

PYTHON_CHERRYPY_VERSION = 5.1.0
PYTHON_CHERRYPY_SOURCE = CherryPy-$(PYTHON_CHERRYPY_VERSION).tar.gz
PYTHON_CHERRYPY_SITE = https://pypi.python.org/packages/source/C/CherryPy
PYTHON_CHERRYPY_LICENSE = BSD
PYTHON_CHERRYPY_LICENSE_FILES = LICENSE
PYTHON_CHERRYPY_SETUP_TYPE = setuptools

define PYTHON_CHERRYPY_REMOVE_TESTS
	rm -r $(TARGET_DIR)/usr/lib/python2.7/site-packages/cherrypy/test
endef

PYTHON_CHERRYPY_POST_INSTALL_TARGET_HOOKS += PYTHON_CHERRYPY_REMOVE_TESTS

$(eval $(python-package))
