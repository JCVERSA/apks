package com.mgtv.drm;

public interface ILightPlayDrmSession {
    void close();

    byte[] getLicenseRequest();

    int provideLicenseResponse(byte[] bArr);
}
