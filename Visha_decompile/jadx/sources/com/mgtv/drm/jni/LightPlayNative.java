package com.mgtv.drm.jni;

public class LightPlayNative {
    public static native void closeSession(long j);

    public static native byte[] getLicenseRequest(long j);

    public static native byte[] getProvisionRequest();

    public static native String getVersion();

    public static native String getVersionTime();

    public static native int initialize();

    public static native boolean isProvisioned();

    public static native long openSession();

    public static native int provideLicenseResponse(long j, byte[] bArr);

    public static native int provideProvisionResponse(byte[] bArr);

    public static native void terminate();

    public static native String testJNI();
}
