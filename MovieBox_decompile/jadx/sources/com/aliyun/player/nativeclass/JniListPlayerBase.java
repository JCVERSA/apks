package com.aliyun.player.nativeclass;

import android.content.Context;
import com.aliyun.utils.NativeLoader;

public class JniListPlayerBase {
    private long mNativeContext = 0;

    static {
        NativeLoader.loadPlayer();
    }

    public JniListPlayerBase(Context context, long j10) {
        nConstruct(j10);
    }

    public void clear() {
        nClear();
    }

    public String getCurrentUid() {
        return nGetCurrentUid();
    }

    public int getMaxPreloadMemorySizeMB() {
        return nGetMaxPreloadMemorySizeMB();
    }

    protected long getNativeListContext() {
        return this.mNativeContext;
    }

    native void nClear();

    native void nConstruct(long j10);

    native String nGetCurrentUid();

    native int nGetMaxPreloadMemorySizeMB();

    native void nRelease();

    native void nRemoveSource(String str);

    native void nSetMaxPreloadMemorySizeMB(int i10);

    native void nSetPreloadCount(int i10);

    native void nStop();

    public void release() {
        nRelease();
    }

    public void removeSource(String str) {
        nRemoveSource(str);
    }

    public void setMaxPreloadMemorySizeMB(int i10) {
        nSetMaxPreloadMemorySizeMB(i10);
    }

    protected void setNativeListContext(long j10) {
        this.mNativeContext = j10;
    }

    public void setPreloadCount(int i10) {
        nSetPreloadCount(i10);
    }

    public void stop() {
        nStop();
    }

    public static void loadClass() {
    }
}
