package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import androidx.media3.exoplayer.DefaultLoadControl;

public final class c00 implements cs0 {
    private final dz a;
    private final long b;
    private final long c;
    private final long d;
    private final long e;
    private final int f;
    private final boolean g;
    private final long h;
    private final boolean i;
    private int j;
    private boolean k;

    public c00() {
        this(new dz());
    }

    private static void a(int i, int i2, String str, String str2) {
        hg.a(str + " cannot be less than " + str2, i >= i2);
    }

    @Override
    public final void b() {
        int i = this.f;
        if (i == -1) {
            i = 13107200;
        }
        this.j = i;
        this.k = false;
        this.a.d();
    }

    @Override
    public final dz c() {
        return this.a;
    }

    @Override
    public final void d() {
        int i = this.f;
        if (i == -1) {
            i = 13107200;
        }
        this.j = i;
        this.k = false;
        this.a.d();
    }

    @Override
    public final long e() {
        return this.h;
    }

    @Override
    public final void f() {
        int i = this.f;
        if (i == -1) {
            i = 13107200;
        }
        this.j = i;
        this.k = false;
    }

    public c00(dz dzVar) {
        a(2500, 0, "bufferForPlaybackMs", "0");
        a(5000, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(50000, 2500, "minBufferMs", "bufferForPlaybackMs");
        a(50000, 5000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        a(50000, 50000, "maxBufferMs", "minBufferMs");
        a(0, 0, "backBufferDurationMs", "0");
        this.a = dzVar;
        long j = 50000;
        this.b = f92.a(j);
        this.c = f92.a(j);
        this.d = f92.a(2500);
        this.e = f92.a(5000);
        this.f = -1;
        this.j = 13107200;
        this.g = false;
        this.h = f92.a(0);
        this.i = false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public final void a(yo1[] yo1VarArr, h70[] h70VarArr) {
        int iMax = this.f;
        if (iMax == -1) {
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = 13107200;
                if (i < yo1VarArr.length) {
                    if (h70VarArr[i] != null) {
                        switch (yo1VarArr[i].m()) {
                            case -2:
                                i3 = 0;
                                i2 += i3;
                                break;
                            case -1:
                            default:
                                throw new IllegalArgumentException();
                            case 0:
                                i3 = DefaultLoadControl.DEFAULT_MUXED_BUFFER_SIZE;
                                i2 += i3;
                                break;
                            case 1:
                                i2 += i3;
                                break;
                            case 2:
                                i3 = DefaultLoadControl.DEFAULT_VIDEO_BUFFER_SIZE;
                                i2 += i3;
                                break;
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                i3 = 131072;
                                i2 += i3;
                                break;
                        }
                    }
                    i++;
                } else {
                    iMax = Math.max(13107200, i2);
                }
            }
        }
        this.j = iMax;
        this.a.a(iMax);
    }

    @Override
    public final boolean a() {
        return this.i;
    }

    @Override
    public final boolean a(long j, float f) {
        boolean z = true;
        boolean z2 = this.a.c() >= this.j;
        long jMin = this.b;
        if (f > 1.0f) {
            int i = f92.a;
            if (f != 1.0f) {
                jMin = Math.round(jMin * ((double) f));
            }
            jMin = Math.min(jMin, this.c);
        }
        if (j < Math.max(jMin, 500000L)) {
            if (!this.g && z2) {
                z = false;
            }
            this.k = z;
            if (!z && j < 500000) {
                et0.d("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j >= this.c || z2) {
            this.k = false;
        }
        return this.k;
    }

    @Override
    public final boolean a(long j, float f, boolean z, long j2) {
        int i = f92.a;
        if (f != 1.0f) {
            j = Math.round(j / ((double) f));
        }
        long jMin = z ? this.e : this.d;
        if (j2 != C.TIME_UNSET) {
            jMin = Math.min(j2 / 2, jMin);
        }
        return jMin <= 0 || j >= jMin || (!this.g && this.a.c() >= this.j);
    }
}
