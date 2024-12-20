-dontwarn com.lody.whale.**
-keep class com.lody.whale.** { *; }

-dontwarn de.robv.android.xposed.**
-keep class de.robv.android.xposed.** { *; }

-keepclasseswithmembernames class * {
    native<methods>;
}  