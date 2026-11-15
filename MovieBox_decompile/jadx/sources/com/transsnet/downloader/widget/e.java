package com.transsnet.downloader.widget;

import kotlin.jvm.internal.Intrinsics;

public final class e {

    private final String f57973a;

    private boolean f57974b;

    public e(String name, boolean z10) {
        Intrinsics.h(name, "name");
        this.f57973a = name;
        this.f57974b = z10;
    }

    public final String a() {
        return this.f57973a;
    }

    public final boolean b() {
        return this.f57974b;
    }

    public final void c(boolean z10) {
        this.f57974b = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.c(this.f57973a, eVar.f57973a) && this.f57974b == eVar.f57974b;
    }

    public int hashCode() {
        return (this.f57973a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f57974b);
    }

    public String toString() {
        return "DownloadGridTabBean(name=" + this.f57973a + ", isSelected=" + this.f57974b + ")";
    }
}
