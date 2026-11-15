package com.mgmi.platform.view;

import com.mgmi.ads.api.a.i;
import com.mgmi.model.VASTFloatAd;

public class a {
    public String A;
    public int B;
    public int C;
    public boolean D;
    private String E;
    private int F;
    private i G;
    private String H;
    public int a;
    public float b;
    public float c;
    public long d;
    public boolean e;
    public int f;
    public long g;
    public boolean h;
    public boolean i;
    public int j;
    public VASTFloatAd k;
    public int l;
    public boolean m;
    public boolean n;
    public int o;
    public boolean p;
    public boolean q;
    public boolean r;
    public long s;
    public int t;
    public String u;
    public long v;
    public int w;
    public int x;
    public int y;
    public String z;

    public a(int i, long j, int i2, int i3) {
        this(i, j, i2, i3);
        if (9 == i) {
            this.d = j;
        }
    }

    public i A() {
        return this.G;
    }

    public void B() {
        this.s = System.currentTimeMillis();
    }

    public long C() {
        return this.g;
    }

    public String D() {
        return this.E;
    }

    public int E() {
        return this.F;
    }

    public boolean a() {
        return q() && !this.q;
    }

    public VASTFloatAd b() {
        return this.k;
    }

    public String c() {
        return this.H;
    }

    public void d() {
        this.q = false;
        this.h = false;
        this.p = false;
        this.r = false;
        this.i = false;
    }

    public boolean e() {
        return this.D;
    }

    public void f() {
        this.h = true;
        this.r = false;
    }

    public boolean g() {
        return this.j == 1;
    }

    public boolean h() {
        return this.r;
    }

    public void i() {
        this.r = true;
    }

    public void j() {
        this.q = true;
    }

    public boolean k() {
        return this.p;
    }

    public boolean l() {
        return this.f != 9000114;
    }

    public long m() {
        return this.v;
    }

    public boolean n() {
        return this.m;
    }

    public boolean o() {
        return this.t == 1;
    }

    public boolean p() {
        return this.n;
    }

    public boolean q() {
        return this.h;
    }

    public boolean r() {
        return this.i;
    }

    public int s() {
        return this.a;
    }

    public float t() {
        return this.b;
    }

    public String toString() {
        return "AdTimeEntry{type=" + this.a + ", time=" + this.b + ", rollNextTime=" + this.c + ", longLiveTime=" + this.d + ", isMqtt=" + this.e + ", adid=" + this.f + ", catterTime=" + this.g + ", used=" + this.h + ", isTickMills=" + this.i + ", localEntry=" + this.j + ", localVastData=" + this.k + ", fixed=" + this.l + ", mClosed=" + this.m + ", hasRender=" + this.n + ", mcls_req=" + this.o + ", hasCountdown=" + this.p + ", startPlay=" + this.q + ", getData=" + this.r + ", mTickBuild=" + this.s + ", mReq=" + this.t + ", mPlainId='" + this.u + "', trigger_nt=" + this.v + ", prePlayTime=" + this.w + ", reqType=" + this.x + ", showType=" + this.y + ", extraType='" + this.z + "', extra='" + this.A + "', daoTime=" + this.B + ", imp_tp=" + this.C + ", hasReqData=" + this.D + ", gid='" + this.E + "', cnt=" + this.F + ", mBaseAdsLoader=" + this.G + '}';
    }

    public long u() {
        long j = this.d;
        return j <= 0 ? (long) this.b : j;
    }

    public int v() {
        return this.f;
    }

    public boolean w() {
        return this.l == 1;
    }

    public int x() {
        return this.w;
    }

    public int y() {
        return this.y;
    }

    public int z() {
        return this.C;
    }

    public void a(String str) {
        this.H = str;
    }

    public a b(int i) {
        this.o = i;
        return this;
    }

    public void c(boolean z) {
        this.i = z;
    }

    public void e(int i) {
        this.y = i;
    }

    public void g(int i) {
        this.C = i;
    }

    public boolean h(int i) {
        return System.currentTimeMillis() - this.s > ((long) i);
    }

    public boolean i(int i) {
        if (this.s == 0) {
            return true;
        }
        return h(i);
    }

    public void j(int i) {
        this.F = i;
    }

    public a(int i, float f, int i2, int i3) {
        this.e = false;
        this.j = 0;
        this.s = 0L;
        this.a = i;
        this.b = f;
        this.f = i2;
        this.t = i3;
        this.h = false;
        this.q = false;
        this.o = 0;
        this.r = false;
        this.l = 0;
        this.m = false;
        this.n = true;
        this.p = false;
        this.c = f;
    }

    public a a(int i) {
        this.j = i;
        return this;
    }

    public void b(boolean z) {
        this.n = z;
    }

    public a c(int i) {
        this.l = i;
        return this;
    }

    public void f(int i) {
        this.B = i;
    }

    public void a(boolean z) {
        this.p = z;
    }

    public void b(long j) {
        this.g = j;
    }

    public void a(long j) {
        this.v = j;
    }

    public void b(String str) {
        this.E = str;
    }

    public void a(i iVar) {
        this.G = iVar;
    }

    public void d(int i) {
        this.w = i;
    }

    public void d(boolean z) {
        this.e = z;
    }

    public a(int i) {
        this.e = false;
        this.j = 0;
        this.s = 0L;
        this.a = i;
    }
}
