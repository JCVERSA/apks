package com.mbridge.msdk.thrid.okhttp.internal.http2;

import java.util.Arrays;
import okhttp3.internal.http2.Settings;

public final class m {

    private int f37385a;

    private final int[] f37386b = new int[10];

    void a() {
        this.f37385a = 0;
        Arrays.fill(this.f37386b, 0);
    }

    int b() {
        if ((this.f37385a & 2) != 0) {
            return this.f37386b[1];
        }
        return -1;
    }

    int c(int i10) {
        return (this.f37385a & 32) != 0 ? this.f37386b[5] : i10;
    }

    boolean d(int i10) {
        return ((1 << i10) & this.f37385a) != 0;
    }

    int b(int i10) {
        return (this.f37385a & 16) != 0 ? this.f37386b[4] : i10;
    }

    int c() {
        return (this.f37385a & 128) != 0 ? this.f37386b[7] : Settings.DEFAULT_INITIAL_WINDOW_SIZE;
    }

    int d() {
        return Integer.bitCount(this.f37385a);
    }

    m a(int i10, int i11) {
        if (i10 >= 0) {
            int[] iArr = this.f37386b;
            if (i10 < iArr.length) {
                this.f37385a = (1 << i10) | this.f37385a;
                iArr[i10] = i11;
            }
        }
        return this;
    }

    int a(int i10) {
        return this.f37386b[i10];
    }

    void a(m mVar) {
        for (int i10 = 0; i10 < 10; i10++) {
            if (mVar.d(i10)) {
                a(i10, mVar.a(i10));
            }
        }
    }
}
