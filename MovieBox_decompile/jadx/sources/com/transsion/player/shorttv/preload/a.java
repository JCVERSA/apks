package com.transsion.player.shorttv.preload;

import androidx.collection.s;
import androidx.media3.exoplayer.offline.DownloadRequest;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final String f46509a;

    private final String f46510b;

    private final DownloadRequest f46511c;

    private long f46512d;

    private long f46513e;

    private long f46514f;

    private final boolean f46515g;

    public a(String id2, String url, DownloadRequest request, long j10, long j11, long j12, boolean z10) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(url, "url");
        Intrinsics.h(request, "request");
        this.f46509a = id2;
        this.f46510b = url;
        this.f46511c = request;
        this.f46512d = j10;
        this.f46513e = j11;
        this.f46514f = j12;
        this.f46515g = z10;
    }

    public final long a() {
        return this.f46512d;
    }

    public final long b() {
        return this.f46513e;
    }

    public final String c() {
        return this.f46509a;
    }

    public final long d() {
        return this.f46514f;
    }

    public final DownloadRequest e() {
        return this.f46511c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f46509a, aVar.f46509a) && Intrinsics.c(this.f46510b, aVar.f46510b) && Intrinsics.c(this.f46511c, aVar.f46511c) && this.f46512d == aVar.f46512d && this.f46513e == aVar.f46513e && this.f46514f == aVar.f46514f && this.f46515g == aVar.f46515g;
    }

    public final boolean f() {
        return this.f46515g;
    }

    public final void g(long j10) {
        this.f46512d = j10;
    }

    public final void h(long j10) {
        this.f46513e = j10;
    }

    public int hashCode() {
        return (((((((((((this.f46509a.hashCode() * 31) + this.f46510b.hashCode()) * 31) + this.f46511c.hashCode()) * 31) + s.a(this.f46512d)) * 31) + s.a(this.f46513e)) * 31) + s.a(this.f46514f)) * 31) + androidx.compose.foundation.e.a(this.f46515g);
    }

    public final void i(long j10) {
        this.f46514f = j10;
    }

    public String toString() {
        return "VideoDownloadBean(id=" + this.f46509a + ", url=" + this.f46510b + ", request=" + this.f46511c + ", contentLength=" + this.f46512d + ", downloadLength=" + this.f46513e + ", maxLength=" + this.f46514f + ", isAdd=" + this.f46515g + ")";
    }
}
