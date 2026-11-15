package com.cloud.hisavana.net.impl;

import okhttp3.Headers;

public abstract class StringCallback extends HttpCallbackImpl {
    protected StringCallback() {
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
    public void i(final int i10, byte[] bArr, final Throwable th2) {
        try {
            final String strW = w(bArr, "UTF-8");
            q(new Runnable() {
                @Override
                public void run() {
                    StringCallback.this.x(i10, strW, th2);
                }
            });
        } catch (Exception e10) {
            q(new Runnable() {
                @Override
                public void run() {
                    StringCallback.this.x(i10, null, e10.getCause());
                }
            });
        }
    }

    @Override
    public void l(Headers headers) {
    }

    @Override
    public void n(final int i10, byte[] bArr) {
        try {
            final String strW = w(bArr, "UTF-8");
            q(new Runnable() {
                @Override
                public void run() {
                    StringCallback.this.y(i10, strW);
                }
            });
        } catch (Exception e10) {
            q(new Runnable() {
                @Override
                public void run() {
                    StringCallback.this.x(i10, null, e10.getCause());
                }
            });
        }
    }

    public abstract void x(int i10, String str, Throwable th2);

    public abstract void y(int i10, String str);

    public StringCallback(boolean z10) {
        super(z10);
    }
}
