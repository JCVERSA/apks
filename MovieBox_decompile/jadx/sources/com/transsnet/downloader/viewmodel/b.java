package com.transsnet.downloader.viewmodel;

import com.transsion.baselib.db.download.DownloadBean;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final int f57864a;

    private final String f57865b;

    private final DownloadBean f57866c;

    private final boolean f57867d;

    public b(int i10, String formatSize, DownloadBean downloadBean, boolean z10) {
        Intrinsics.h(formatSize, "formatSize");
        Intrinsics.h(downloadBean, "downloadBean");
        this.f57864a = i10;
        this.f57865b = formatSize;
        this.f57866c = downloadBean;
        this.f57867d = z10;
    }

    public final int a() {
        return this.f57864a;
    }

    public final DownloadBean b() {
        return this.f57866c;
    }

    public final String c() {
        return this.f57865b;
    }

    public final boolean d() {
        return this.f57867d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f57864a == bVar.f57864a && Intrinsics.c(this.f57865b, bVar.f57865b) && Intrinsics.c(this.f57866c, bVar.f57866c) && this.f57867d == bVar.f57867d;
    }

    public int hashCode() {
        return (((((this.f57864a * 31) + this.f57865b.hashCode()) * 31) + this.f57866c.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f57867d);
    }

    public String toString() {
        return "Download2ResultContent(count=" + this.f57864a + ", formatSize=" + this.f57865b + ", downloadBean=" + this.f57866c + ", isCancel=" + this.f57867d + ")";
    }
}
