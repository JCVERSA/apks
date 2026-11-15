package com.google.android.exoplayer2.source.rtsp;

import com.google.android.exoplayer2.util.p0;
import okhttp3.internal.http2.Settings;

public final class g {

    private static final byte[] f25714l = new byte[0];

    public final byte f25715a;

    public final boolean f25716b;

    public final boolean f25717c;

    public final byte f25718d;

    public final boolean f25719e;

    public final byte f25720f;

    public final int f25721g;

    public final long f25722h;

    public final int f25723i;

    public final byte[] f25724j;

    public final byte[] f25725k;

    public static final class b {

        private boolean f25726a;

        private boolean f25727b;

        private byte f25728c;

        private int f25729d;

        private long f25730e;

        private int f25731f;

        private byte[] f25732g = g.f25714l;

        private byte[] f25733h = g.f25714l;

        public g i() {
            return new g(this);
        }

        public b j(byte[] bArr) {
            com.google.android.exoplayer2.util.a.e(bArr);
            this.f25732g = bArr;
            return this;
        }

        public b k(boolean z10) {
            this.f25727b = z10;
            return this;
        }

        public b l(boolean z10) {
            this.f25726a = z10;
            return this;
        }

        public b m(byte[] bArr) {
            com.google.android.exoplayer2.util.a.e(bArr);
            this.f25733h = bArr;
            return this;
        }

        public b n(byte b10) {
            this.f25728c = b10;
            return this;
        }

        public b o(int i10) {
            com.google.android.exoplayer2.util.a.a(i10 >= 0 && i10 <= 65535);
            this.f25729d = i10 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
            return this;
        }

        public b p(int i10) {
            this.f25731f = i10;
            return this;
        }

        public b q(long j10) {
            this.f25730e = j10;
            return this;
        }
    }

    public static int b(int i10) {
        return com.google.common.math.d.g(i10 + 1, 65536);
    }

    public static int c(int i10) {
        return com.google.common.math.d.g(i10 - 1, 65536);
    }

    public static g d(com.google.android.exoplayer2.util.d0 d0Var) {
        byte[] bArr;
        if (d0Var.a() < 12) {
            return null;
        }
        int iD = d0Var.D();
        byte b10 = (byte) (iD >> 6);
        boolean z10 = ((iD >> 5) & 1) == 1;
        byte b11 = (byte) (iD & 15);
        if (b10 != 2) {
            return null;
        }
        int iD2 = d0Var.D();
        boolean z11 = ((iD2 >> 7) & 1) == 1;
        byte b12 = (byte) (iD2 & 127);
        int iJ = d0Var.J();
        long jF = d0Var.F();
        int iN = d0Var.n();
        if (b11 > 0) {
            bArr = new byte[b11 * 4];
            for (int i10 = 0; i10 < b11; i10++) {
                d0Var.j(bArr, i10 * 4, 4);
            }
        } else {
            bArr = f25714l;
        }
        byte[] bArr2 = new byte[d0Var.a()];
        d0Var.j(bArr2, 0, d0Var.a());
        return new b().l(z10).k(z11).n(b12).o(iJ).q(jF).p(iN).j(bArr).m(bArr2).i();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f25720f == gVar.f25720f && this.f25721g == gVar.f25721g && this.f25719e == gVar.f25719e && this.f25722h == gVar.f25722h && this.f25723i == gVar.f25723i;
    }

    public int hashCode() {
        int i10 = (((((527 + this.f25720f) * 31) + this.f25721g) * 31) + (this.f25719e ? 1 : 0)) * 31;
        long j10 = this.f25722h;
        return ((i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f25723i;
    }

    public String toString() {
        return p0.C("RtpPacket(payloadType=%d, seq=%d, timestamp=%d, ssrc=%x, marker=%b)", Byte.valueOf(this.f25720f), Integer.valueOf(this.f25721g), Long.valueOf(this.f25722h), Integer.valueOf(this.f25723i), Boolean.valueOf(this.f25719e));
    }

    private g(b bVar) {
        this.f25715a = (byte) 2;
        this.f25716b = bVar.f25726a;
        this.f25717c = false;
        this.f25719e = bVar.f25727b;
        this.f25720f = bVar.f25728c;
        this.f25721g = bVar.f25729d;
        this.f25722h = bVar.f25730e;
        this.f25723i = bVar.f25731f;
        byte[] bArr = bVar.f25732g;
        this.f25724j = bArr;
        this.f25718d = (byte) (bArr.length / 4);
        this.f25725k = bVar.f25733h;
    }
}
