#ifndef PLATHOOK_ANDROID_ART_JNI_TRAMPOLINE_H_
#define PLATHOOK_ANDROID_ART_JNI_TRAMPOLINE_H_

#include "android/art/art_hook_param.h"

namespace whale {
namespace art {


void BuildJniClosure(ArtHookParam *param);


}  // namespace art
}  // namespace whale

#endif  // PLATHOOK_ANDROID_ART_JNI_TRAMPOLINE_H_
