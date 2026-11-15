package com.aliyun.player;

import com.aliyun.utils.NativeLoader;
import com.cicada.player.utils.NativeUsed;

public class AliPlayerGlobalSettings {
    private static OnGetUrlHashCallback sOnGetUrlHashCallback;

    public interface OnGetUrlHashCallback {
        String getUrlHashCallback(String str);
    }

    public enum StreamType {
        STREAM_VOICE_CALL,
        STREAM_SYSTEM,
        STREAM_RING,
        STREAM_MUSIC,
        STREAM_ALARM,
        STREAM_NOTIFICATION
    }

    static {
        NativeLoader.loadPlayer();
        sOnGetUrlHashCallback = null;
    }

    public static void clearCaches() {
        nClearCaches();
    }

    public static void enableHttpDns(boolean z10) {
        nEnableHttpDns(z10);
    }

    public static void enableLocalCache(boolean z10, int i10, String str) {
        nEnableLocalCache(z10, i10, str);
    }

    public static void enableNetworkBalance(boolean z10) {
        nEnableNetworkBalance(z10);
    }

    public static void forceAudioRendingFormat(boolean z10, String str, int i10, int i11) {
        nForceAudioRendingFormat(z10, str, i10, i11);
    }

    private static native void nClearCaches();

    private static native void nEnableHttpDns(boolean z10);

    private static native void nEnableLocalCache(boolean z10, int i10, String str);

    private static native void nEnableNetworkBalance(boolean z10);

    private static native void nForceAudioRendingFormat(boolean z10, String str, int i10, int i11);

    @NativeUsed
    private static synchronized String nOnGetUrlHashCallback(String str) {
        OnGetUrlHashCallback onGetUrlHashCallback = sOnGetUrlHashCallback;
        if (onGetUrlHashCallback == null) {
            return null;
        }
        return onGetUrlHashCallback.getUrlHashCallback(str);
    }

    private static native void nSetAudioStreamType(int i10);

    private static native void nSetCacheFileClearConfig(long j10, long j11, long j12);

    private static native void nSetCacheUrlHashCallback(boolean z10);

    private static native void nSetDNSResolve(String str, String str2);

    private static native void nSetIPResolveType(int i10);

    private static native void nSetUseHttp2(boolean z10);

    public static void setAudioStreamType(StreamType streamType) {
        nSetAudioStreamType(streamType.ordinal());
    }

    public static void setCacheFileClearConfig(long j10, long j11, long j12) {
        nSetCacheFileClearConfig(j10, j11, j12);
    }

    public static synchronized void setCacheUrlHashCallback(OnGetUrlHashCallback onGetUrlHashCallback) {
        sOnGetUrlHashCallback = onGetUrlHashCallback;
        nSetCacheUrlHashCallback(onGetUrlHashCallback != null);
    }

    public static void setDNSResolve(String str, String str2) {
        nSetDNSResolve(str, str2);
    }

    public static void setIPResolveType(IPlayer.IPResolveType iPResolveType) {
        nSetIPResolveType(iPResolveType.ordinal());
    }

    public static void setUseHttp2(boolean z10) {
        nSetUseHttp2(z10);
    }

    public static void loadClass() {
    }
}
