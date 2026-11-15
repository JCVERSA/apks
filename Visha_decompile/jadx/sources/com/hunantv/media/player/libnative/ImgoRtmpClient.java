package com.hunantv.media.player.libnative;

public class ImgoRtmpClient {
    private long mNativeImgoRtmpClient;

    static {
        System.loadLibrary("ImgoRtmpSource");
    }

    public native int close();

    public native int isConnected();

    public native int open(String str);

    public native int read(byte[] bArr, int i, int i2);

    public native int seek(int i);
}
