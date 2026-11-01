package com.wandoujia.download.rpc;

import android.text.TextUtils;
import com.twmacinta.util.MD5State;
import com.wandoujia.download.model.segments.DownloadConfigInfo;
import java.util.Map;

public class h {
    public boolean A;
    public int B;
    public int C;
    public boolean D;
    public String E;
    public String F;
    public int G;
    public MD5State H;
    public int I;
    public int J;
    public Map K;
    public boolean L;
    public com.wandoujia.mtdownload.c M;
    public String N;
    public long a;
    public String b;
    public String c;
    public String d;
    public String e;
    public long f;
    public DownloadConstants.ResourceType g;
    public String h;
    public String i;
    public long j;
    public String k;
    public String l;
    public String m;
    public String n;

    public int f498o;
    public boolean p;
    public long q;
    public long r;
    public String s;
    public long t;
    public DownloadConstants.VerifyType u;
    public String v;
    public String[] w;
    public DownloadConfigInfo x;
    public long y;
    public String z;

    public h a() {
        h hVar = new h();
        hVar.r = this.r;
        hVar.e = this.e;
        hVar.j = this.j;
        hVar.z = this.z;
        hVar.l = this.l;
        hVar.a = this.a;
        hVar.h = this.h;
        hVar.m = this.m;
        hVar.c = this.c;
        hVar.i = this.i;
        hVar.k = this.k;
        hVar.I = this.I;
        hVar.J = this.J;
        hVar.d = this.d;
        hVar.f = this.f;
        hVar.g = this.g;
        hVar.b = this.b;
        hVar.n = this.n;
        hVar.f498o = this.f498o;
        hVar.A = this.A;
        hVar.p = this.p;
        hVar.B = this.B;
        hVar.C = this.C;
        hVar.q = this.q;
        hVar.D = this.D;
        hVar.E = this.E;
        hVar.F = this.F;
        hVar.G = this.G;
        hVar.x = this.x;
        hVar.w = this.w;
        hVar.y = this.y;
        hVar.s = this.s;
        hVar.t = this.t;
        hVar.H = this.H;
        hVar.K = this.K;
        hVar.L = this.L;
        hVar.M = new com.wandoujia.mtdownload.c(this.M);
        hVar.N = this.N;
        return hVar;
    }

    public String b() {
        if (TextUtils.isEmpty(this.m)) {
            return null;
        }
        return this.m + ".download";
    }

    public long c() {
        if (this.I == 192) {
            return this.y;
        }
        return 0L;
    }

    public Object clone() {
        return a();
    }

    public int d() {
        return this.I;
    }

    public void e(long j) {
        if (j > 0) {
            this.y = j;
        }
    }

    public void f(int i) {
        this.J = this.I;
        this.I = i;
    }
}
