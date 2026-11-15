package com.wecloud.load.lib;

import androidx.collection.s;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class n {

    public static final a f58616m = new a(null);

    private final String f58617a;

    private final String f58618b;

    private final boolean f58619c;

    private final int f58620d;

    private final String f58621e;

    private final String f58622f;

    private final int f58623g;

    private final Map f58624h;

    private final String f58625i;

    private final long f58626j;

    private final long f58627k;

    private final String f58628l;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public n(String url, String method, boolean z10, int i10, String serverIp, String errorMessage, int i11, Map httpHeaders, String httpBody, long j10, long j11, String httpProtocol) {
        Intrinsics.h(url, "url");
        Intrinsics.h(method, "method");
        Intrinsics.h(serverIp, "serverIp");
        Intrinsics.h(errorMessage, "errorMessage");
        Intrinsics.h(httpHeaders, "httpHeaders");
        Intrinsics.h(httpBody, "httpBody");
        Intrinsics.h(httpProtocol, "httpProtocol");
        this.f58617a = url;
        this.f58618b = method;
        this.f58619c = z10;
        this.f58620d = i10;
        this.f58621e = serverIp;
        this.f58622f = errorMessage;
        this.f58623g = i11;
        this.f58624h = httpHeaders;
        this.f58625i = httpBody;
        this.f58626j = j10;
        this.f58627k = j11;
        this.f58628l = httpProtocol;
    }

    public final n a(String url, String method, boolean z10, int i10, String serverIp, String errorMessage, int i11, Map httpHeaders, String httpBody, long j10, long j11, String httpProtocol) {
        Intrinsics.h(url, "url");
        Intrinsics.h(method, "method");
        Intrinsics.h(serverIp, "serverIp");
        Intrinsics.h(errorMessage, "errorMessage");
        Intrinsics.h(httpHeaders, "httpHeaders");
        Intrinsics.h(httpBody, "httpBody");
        Intrinsics.h(httpProtocol, "httpProtocol");
        return new n(url, method, z10, i10, serverIp, errorMessage, i11, httpHeaders, httpBody, j10, j11, httpProtocol);
    }

    public final long c() {
        return this.f58627k;
    }

    public final int d() {
        return this.f58623g;
    }

    public final String e() {
        return this.f58622f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return Intrinsics.c(this.f58617a, nVar.f58617a) && Intrinsics.c(this.f58618b, nVar.f58618b) && this.f58619c == nVar.f58619c && this.f58620d == nVar.f58620d && Intrinsics.c(this.f58621e, nVar.f58621e) && Intrinsics.c(this.f58622f, nVar.f58622f) && this.f58623g == nVar.f58623g && Intrinsics.c(this.f58624h, nVar.f58624h) && Intrinsics.c(this.f58625i, nVar.f58625i) && this.f58626j == nVar.f58626j && this.f58627k == nVar.f58627k && Intrinsics.c(this.f58628l, nVar.f58628l);
    }

    public final String f() {
        return this.f58625i;
    }

    public final Map g() {
        return this.f58624h;
    }

    public final String h() {
        return this.f58628l;
    }

    public int hashCode() {
        return (((((((((((((((((((((this.f58617a.hashCode() * 31) + this.f58618b.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f58619c)) * 31) + this.f58620d) * 31) + this.f58621e.hashCode()) * 31) + this.f58622f.hashCode()) * 31) + this.f58623g) * 31) + this.f58624h.hashCode()) * 31) + this.f58625i.hashCode()) * 31) + s.a(this.f58626j)) * 31) + s.a(this.f58627k)) * 31) + this.f58628l.hashCode();
    }

    public final String i() {
        return this.f58618b;
    }

    public final long j() {
        return this.f58626j;
    }

    public final String k() {
        return this.f58621e;
    }

    public final int l() {
        return this.f58620d;
    }

    public final boolean m() {
        return this.f58619c;
    }

    public final String n() {
        return this.f58617a;
    }

    public String toString() {
        return "ProbeResult(url=" + this.f58617a + ", method=" + this.f58618b + ", success=" + this.f58619c + ", statusCode=" + this.f58620d + ", serverIp=" + this.f58621e + ", errorMessage=" + this.f58622f + ", errorCode=" + this.f58623g + ", httpHeaders=" + this.f58624h + ", httpBody=" + this.f58625i + ", requestTime=" + this.f58626j + ", duration=" + this.f58627k + ", httpProtocol=" + this.f58628l + ")";
    }
}
