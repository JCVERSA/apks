package com.google.android.exoplayer2.upstream.cache;

import java.io.File;

public abstract class h implements Comparable {

    public final String f26565a;

    public final long f26566b;

    public final long f26567c;

    public final boolean f26568d;

    public final File f26569e;

    public final long f26570f;

    public h(String str, long j10, long j11, long j12, File file) {
        this.f26565a = str;
        this.f26566b = j10;
        this.f26567c = j11;
        this.f26568d = file != null;
        this.f26569e = file;
        this.f26570f = j12;
    }

    @Override
    public int compareTo(h hVar) {
        if (!this.f26565a.equals(hVar.f26565a)) {
            return this.f26565a.compareTo(hVar.f26565a);
        }
        long j10 = this.f26566b - hVar.f26566b;
        if (j10 == 0) {
            return 0;
        }
        return j10 < 0 ? -1 : 1;
    }

    public boolean b() {
        return !this.f26568d;
    }

    public boolean d() {
        return this.f26567c == -1;
    }

    public String toString() {
        return "[" + this.f26566b + ", " + this.f26567c + "]";
    }
}
