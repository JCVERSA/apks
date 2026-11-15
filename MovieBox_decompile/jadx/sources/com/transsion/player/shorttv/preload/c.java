package com.transsion.player.shorttv.preload;

import androidx.collection.s;

public final class c {

    private final boolean f46518a;

    private final long f46519b;

    public c(boolean z10, long j10) {
        this.f46518a = z10;
        this.f46519b = j10;
    }

    public final boolean a() {
        return this.f46518a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f46518a == cVar.f46518a && this.f46519b == cVar.f46519b;
    }

    public int hashCode() {
        return (androidx.compose.foundation.e.a(this.f46518a) * 31) + s.a(this.f46519b);
    }

    public String toString() {
        return "VideoPreloadConfig(enable=" + this.f46518a + ", cacheByte=" + this.f46519b + ")";
    }
}
