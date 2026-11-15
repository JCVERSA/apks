package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.OpusUtil;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Collections;
import java.util.List;

public final class ac0 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final long j;

    @Nullable
    public final a k;

    @Nullable
    private final k01 l;

    public static class a {
        public final long[] a;
        public final long[] b;

        public a(long[] jArr, long[] jArr2) {
            this.a = jArr;
            this.b = jArr2;
        }
    }

    private ac0(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, @Nullable a aVar, @Nullable k01 k01Var) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = b(i5);
        this.g = i6;
        this.h = i7;
        this.i = a(i7);
        this.j = j;
        this.k = aVar;
        this.l = k01Var;
    }

    private static int a(int i) {
        if (i == 8) {
            return 1;
        }
        if (i == 12) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i != 20) {
            return i != 24 ? -1 : 6;
        }
        return 5;
    }

    private static int b(int i) {
        switch (i) {
            case 8000:
                return 4;
            case AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case OpusUtil.SAMPLE_RATE:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND:
                return 3;
            default:
                return -1;
        }
    }

    public final ac0 a(List<jh1> list) {
        k01 k01Var = new k01(list);
        k01 k01Var2 = this.l;
        if (k01Var2 != null) {
            k01Var = k01Var2.a(k01Var);
        }
        return new ac0(this.a, this.b, this.c, this.d, this.e, this.g, this.h, this.j, this.k, k01Var);
    }

    public final ac0 b(List<String> list) {
        k01 k01VarA = gj2.a(list);
        k01 k01Var = this.l;
        if (k01Var != null) {
            k01VarA = k01Var.a(k01VarA);
        }
        return new ac0(this.a, this.b, this.c, this.d, this.e, this.g, this.h, this.j, this.k, k01VarA);
    }

    public final long a() {
        long j;
        long j2;
        int i = this.d;
        if (i > 0) {
            j = (((long) i) + ((long) this.c)) / 2;
            j2 = 1;
        } else {
            int i2 = this.a;
            j = ((((i2 != this.b || i2 <= 0) ? 4096L : i2) * ((long) this.g)) * ((long) this.h)) / 8;
            j2 = 64;
        }
        return j + j2;
    }

    public final long b() {
        long j = this.j;
        return j == 0 ? C.TIME_UNSET : (j * 1000000) / ((long) this.e);
    }

    public final jc0 a(byte[] bArr, @Nullable k01 k01Var) {
        bArr[4] = SocketData.CLAZZ_TYPE_END_SOCKET;
        int i = this.d;
        if (i <= 0) {
            i = -1;
        }
        k01 k01Var2 = this.l;
        if (k01Var2 != null) {
            k01Var = k01Var2.a(k01Var);
        }
        return new jc0.a().e("audio/flac").h(i).c(this.g).l(this.e).a(Collections.singletonList(bArr)).a(k01Var).a();
    }

    public ac0(int i, byte[] bArr) {
        zf1 zf1Var = new zf1(bArr);
        zf1Var.c(i * 8);
        this.a = zf1Var.b(16);
        this.b = zf1Var.b(16);
        this.c = zf1Var.b(24);
        this.d = zf1Var.b(24);
        int iB = zf1Var.b(20);
        this.e = iB;
        this.f = b(iB);
        this.g = zf1Var.b(3) + 1;
        int iB2 = zf1Var.b(5) + 1;
        this.h = iB2;
        this.i = a(iB2);
        this.j = zf1Var.g();
        this.k = null;
        this.l = null;
    }

    public final long a(long j) {
        long j2 = (j * ((long) this.e)) / 1000000;
        long j3 = this.j - 1;
        int i = f92.a;
        return Math.max(0L, Math.min(j2, j3));
    }

    public final ac0 a(@Nullable a aVar) {
        return new ac0(this.a, this.b, this.c, this.d, this.e, this.g, this.h, this.j, aVar, this.l);
    }
}
