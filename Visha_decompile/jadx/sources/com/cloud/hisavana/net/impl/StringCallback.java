package com.cloud.hisavana.net.impl;

import okhttp3.Headers;

public abstract class StringCallback extends HttpCallbackImpl {
    public StringCallback() {
    }

    public static String w(byte[] bArr, String str) {
        String str2 = bArr == null ? null : new String(bArr, str);
        if (str2 == null) {
            return str2;
        }
        try {
            return str2.startsWith("\ufeff") ? str2.substring(1) : str2;
        } catch (Exception unused) {
            return str2;
        }
    }

    @Override
    public void i(final int i, byte[] bArr, final Throwable th) {
        try {
            final String strW = w(bArr, "UTF-8");
            q(new Runnable() {
                @Override
                public void run() {
                    StringCallback.this.x(i, strW, th);
                }
            });
        } catch (Exception e) {
            q(new Runnable() {
                @Override
                public void run() {
                    StringCallback.this.x(i, null, e.getCause());
                }
            });
        }
    }

    @Override
    public void l(Headers headers) {
    }

    @Override
    public void n(final int i, byte[] bArr) {
        try {
            final String strW = w(bArr, "UTF-8");
            q(new Runnable() {
                @Override
                public void run() {
                    StringCallback.this.y(i, strW);
                }
            });
        } catch (Exception e) {
            q(new Runnable() {
                @Override
                public void run() {
                    StringCallback.this.x(i, null, e.getCause());
                }
            });
        }
    }

    public abstract void x(int i, String str, Throwable th);

    public abstract void y(int i, String str);

    public StringCallback(boolean z) {
        super(z);
    }
}
