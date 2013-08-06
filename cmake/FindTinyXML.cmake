# - Find TinyXML library
# Find the native TinyXML headers and libraries.
#
#  TINYXML_INCLUDE_DIRS - where to find tinyxml.h, etc.
#  TINYXML_LIBRARIES    - List of libraries when using tinyxml.
#  TINYXML_FOUND        - True if tinyxml is found.

#=============================================================================
#Copyright 2000-2009 Kitware, Inc., Insight Software Consortium
#All rights reserved.
#
#Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
#* Redistributions of source code must retain the above copyright notice, 
#this list of conditions and the following disclaimer.
#
#* Redistributions in binary form must reproduce the above copyright notice, 
#this list of conditions and the following disclaimer in the documentation 
#and/or other materials provided with the distribution.
#
#* Neither the names of Kitware, Inc., the Insight Software Consortium, nor 
#the names of their contributors may be used to endorse or promote products 
#derived from this software without specific prior written  permission.
#
#THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
#AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
#IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
#ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
#LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
#CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
#SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
#INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
#CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
#ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
#POSSIBILITY OF SUCH DAMAGE.
#=============================================================================

# Look for the header file.
FIND_PATH(TINYXML_INCLUDE_DIR NAMES tinyxml.h)
MARK_AS_ADVANCED(TINYXML_INCLUDE_DIR)

# Look for the library.
FIND_LIBRARY(TINYXML_LIBRARY NAMES tinyxml)
MARK_AS_ADVANCED(TINYXML_LIBRARY)

# handle the QUIETLY and REQUIRED arguments and set TINYXML_FOUND to TRUE if 
# all listed variables are TRUE
INCLUDE(${CMAKE_ROOT}/Modules/FindPackageHandleStandardArgs.cmake)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(TinyXML DEFAULT_MSG TINYXML_LIBRARY TINYXML_INCLUDE_DIR)

SET(TINYXML_LIBRARIES ${TINYXML_LIBRARY})
SET(TINYXML_INCLUDE_DIRS ${TINYXML_INCLUDE_DIR})