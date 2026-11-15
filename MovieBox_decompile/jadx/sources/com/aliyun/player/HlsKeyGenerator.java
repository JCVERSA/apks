package com.aliyun.player;

import com.aliyun.utils.NativeLoader;

public class HlsKeyGenerator {
    private static HlsKeyGenerator instance;
    private OnKeyGenerateListener mOnKeyGenerateListener = null;

    public interface OnKeyGenerateListener {
        byte[] getHlsKey(String str);

        void onHlsKeyInfoInit(String str, int i10);
    }

    static {
        NativeLoader.loadPlayer();
        instance = null;
    }

    private HlsKeyGenerator() {
    }

    private static byte[] getHlsKey(String str) {
        OnKeyGenerateListener onKeyGenerateListener = getInstance().mOnKeyGenerateListener;
        if (onKeyGenerateListener != null) {
            return onKeyGenerateListener.getHlsKey(str);
        }
        return null;
    }

    public static HlsKeyGenerator getInstance() {
        if (instance == null) {
            synchronized (HlsKeyGenerator.class) {
                try {
                    if (instance == null) {
                        instance = new HlsKeyGenerator();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return instance;
    }

    private static void onHlsKeyInfoInit(String str, int i10) {
        OnKeyGenerateListener onKeyGenerateListener = getInstance().mOnKeyGenerateListener;
        if (onKeyGenerateListener != null) {
            onKeyGenerateListener.onHlsKeyInfoInit(str, i10);
        }
    }

    public void setOnKeyGenerateListener(OnKeyGenerateListener onKeyGenerateListener) {
        this.mOnKeyGenerateListener = onKeyGenerateListener;
    }

    public static void loadClass() {
    }
}
