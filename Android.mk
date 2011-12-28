LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional 
LOCAL_STATIC_JAVA_LIBRARIES := libanymote libpolo libbcprov-jdk15-143 libprotobuf-java-2.2.0-lite
LOCAL_SRC_FILES := $(call all-java-files-under, src) 
LOCAL_PACKAGE_NAME := Google-tv-Remote 
LOCAL_PROGUARD_ENABLED := disabled
include $(BUILD_PACKAGE) 
include $(CLEAR_VARS) 
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libanymote:lib/anymote.jar libpolo:lib/polo.jar libbcprov-jdk15-143:lib/bcprov-jdk15-143.jar libprotobuf-java-2.2.0-lite:lib/protobuf-java-2.2.0-lite.jar
include $(BUILD_MULTI_PREBUILT)
