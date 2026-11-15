package defpackage;

import androidx.media3.muxer.MuxerUtil;

public class fw2 {
    public long a;
    public int b;

    public fw2() {
        this.a = 0L;
        this.b = 0;
    }

    public static fw2 c(fw2 fw2Var, fw2 fw2Var2) {
        fw2 fw2Var3 = new fw2(fw2Var.a, fw2Var.b);
        fw2Var3.h(fw2Var2);
        return fw2Var3;
    }

    public static fw2 i(fw2 fw2Var, fw2 fw2Var2) {
        fw2 fw2Var3 = new fw2(fw2Var.a, fw2Var.b);
        fw2Var3.d(fw2Var2);
        return fw2Var3;
    }

    public int a() {
        return this.b;
    }

    public long b() {
        return this.a;
    }

    public void d(fw2 fw2Var) {
        long j = this.a;
        long j2 = j >>> 32;
        long j3 = j & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = fw2Var.a;
        long j5 = j4 >>> 32;
        long j6 = j4 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j7 = j2 * j5;
        long j8 = j5 * j3;
        long j9 = j2 * j6;
        long j10 = j7 + (j9 >>> 32) + (j8 >>> 32) + ((((((j3 * j6) >>> 32) + (j9 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j8)) + 2147483648L) >>> 32);
        this.b += fw2Var.b + 64;
        this.a = j10;
    }

    public void e() {
        long j = this.a;
        int i = this.b;
        while (((-18014398509481984L) & j) == 0) {
            j <<= 10;
            i -= 10;
        }
        while ((Long.MIN_VALUE & j) == 0) {
            j <<= 1;
            i--;
        }
        this.a = j;
        this.b = i;
    }

    public void f(int i) {
        this.b = i;
    }

    public void g(long j) {
        this.a = j;
    }

    public void h(fw2 fw2Var) {
        this.a -= fw2Var.a;
    }

    public String toString() {
        return "[DiyFp f:" + this.a + ", e:" + this.b + "]";
    }

    public fw2(long j, int i) {
        this.a = j;
        this.b = i;
    }
}
