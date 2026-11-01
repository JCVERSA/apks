package com.wandoujia.download.rpc;

import java.util.List;

public class g {
    public final long a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final int f;
    public final long g;
    public long h;
    public final String i;
    public final String j;
    public final long k;
    public final long l;
    public final boolean m;
    public final DownloadConstants.ResourceType n;

    public final int f497o;
    public boolean p;
    public List q;
    public final long r;
    public final long s;
    public final String t;

    public g(h hVar) {
        this.l = hVar.a;
        this.a = hVar.r;
        this.b = hVar.b;
        this.c = hVar.b();
        this.d = hVar.z;
        this.e = hVar.d;
        this.g = 0L;
        long j = hVar.f;
        if (j > 0) {
            this.h = j - 1;
        }
        this.i = hVar.F;
        this.j = hVar.c;
        this.k = hVar.j;
        this.m = hVar.A;
        this.n = hVar.g;
        this.f497o = hVar.B;
        this.r = j;
        this.f = 0;
        this.s = hVar.t;
        this.t = hVar.i;
    }

    public g(h hVar, String str, int i, long j, long j2, long j3, List list, long j4, long j5, int i2) {
        this.l = hVar.a;
        this.a = j3;
        this.b = str;
        this.r = j4;
        this.c = hVar.b();
        this.d = hVar.z;
        this.e = hVar.d;
        this.g = j;
        this.h = j2;
        this.i = hVar.F;
        this.j = hVar.c;
        this.k = hVar.j;
        this.m = hVar.A;
        this.n = hVar.g;
        this.f497o = hVar.B;
        this.f = i;
        this.p = i2 > 1;
        this.q = list;
        this.s = j5;
        this.t = hVar.i;
    }
}
