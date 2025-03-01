#ifndef PLATHOOK_ANDROID_NATIVE_ON_LOAD_H_
#define PLATHOOK_ANDROID_NATIVE_ON_LOAD_H_

#include <jni.h>

constexpr const char *kMethodReserved0 = "reserved0";
constexpr const char *kMethodReserved1 = "reserved1";

/**
 * DO NOT rename the following function
 */
extern "C" {

void PlatHookJava_reserved0(JNIEnv *env, jclass cl);

void PlatHookJava_reserved1(JNIEnv *env, jclass cl);

}

#ifndef PLATHOOK_ANDROID_AUTO_LOAD
JNIEXPORT jint JNICALL PlatHook_OnLoad(JavaVM *vm, void *reserved);
#endif


#endif  // PLATHOOK_ANDROID_NATIVE_ON_LOAD_H_
