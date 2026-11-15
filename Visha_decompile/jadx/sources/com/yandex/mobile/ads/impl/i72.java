package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.IOException;

public final class i72 {
    private final byte[] a = new byte[10];
    private boolean b;
    private int c;
    private long d;
    private int e;
    private int f;
    private int g;

    public final void a(a62 a62Var, @Nullable a62.a aVar) {
        if (this.c > 0) {
            a62Var.a(this.d, this.e, this.f, this.g, aVar);
            this.c = 0;
        }
    }

    public final void a() {
        this.b = false;
        this.c = 0;
    }

    public final void a(a62 a62Var, long j, int i, int i2, int i3, @Nullable a62.a aVar) {
        if (this.g <= i2 + i3) {
            if (this.b) {
                int i4 = this.c;
                int i5 = i4 + 1;
                this.c = i5;
                if (i4 == 0) {
                    this.d = j;
                    this.e = i;
                    this.f = 0;
                }
                this.f += i2;
                this.g = i3;
                if (i5 >= 16) {
                    a(a62Var, aVar);
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("TrueHD chunk samples must be contiguous in the sample queue.");
    }

    public final void a(a80 a80Var) throws IOException {
        if (this.b) {
            return;
        }
        a80Var.a(this.a, 0, 10);
        a80Var.c();
        byte[] bArr = this.a;
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b = bArr[7];
            if ((b & 254) != 186) {
                return;
            }
            if ((40 << ((bArr[(b & 255) == 187 ? '\t' : '\b'] >> 4) & 7)) == 0) {
                return;
            }
            this.b = true;
        }
    }
}
