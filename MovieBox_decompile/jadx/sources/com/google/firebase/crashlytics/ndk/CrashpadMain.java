package com.google.firebase.crashlytics.ndk;

public class CrashpadMain {
    public static native void crashpadMain(String[] strArr);

    public static void main(String[] strArr) {
        try {
            String str = strArr[1];
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Path to shared objects is ");
            sb2.append(str);
            System.load(str + "libcrashlytics-handler.so");
            crashpadMain(strArr);
        } catch (UnsatisfiedLinkError e10) {
            throw new RuntimeException(e10);
        }
    }
}
