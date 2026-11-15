package com.mgmi.net.bean;

import android.os.SystemClock;

public class a {
    public boolean a;
    public long b;
    public long c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public boolean i;
    private long j;
    private long k;
    private long l;
    private long m;

    public long a() {
        return this.j;
    }

    public void b(long j) {
        this.k = j;
    }

    public long c() {
        return this.m;
    }

    public void d() {
        this.m = SystemClock.elapsedRealtime();
    }

    public long e() {
        return c() - b();
    }

    public String toString() {
        return "ReportCreativeTrackInfo{hasReport=" + this.a + ", reqDaration=" + this.b + ", renderDuration=" + this.c + ", adType='" + this.d + "', adStatus='" + this.e + "', recUrl='" + this.f + "', recType='" + this.g + "', pageStatus='" + this.h + "', hasReportTrace=" + this.i + '}';
    }

    public void a(long j) {
        this.j = j;
    }

    public long b() {
        return this.l;
    }
}
