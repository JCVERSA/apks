package com.transsion.http.impl;

import java.io.File;

public abstract class DownloadCallback extends q {

    private long f44589e;

    private long f44590f = 300;

    public void A(int i10, String str, File file) {
        h(new e(this, str, file));
    }

    public abstract void B(String str, File file);

    @Override
    public void m(int i10, byte[] bArr, Throwable th2) {
    }

    @Override
    public void s(int i10, byte[] bArr) {
    }

    public void w(int i10, String str, String str2) {
        h(new d(this, str, str2));
    }

    public abstract void x(String str, String str2);

    public void y(int i10, String str, long j10, long j11) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f44589e >= this.f44590f) {
            this.f44589e = jCurrentTimeMillis;
            h(new f(this, str, j10, j11));
        }
    }

    public abstract void z(String str, long j10, long j11);
}
