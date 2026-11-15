package defpackage;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

public final class zci {
    public Uri a;
    public Map b;
    public long c;
    public final long d;
    public int e;

    public zci(cfi cfiVar, aei aeiVar) {
        this.a = cfiVar.a;
        this.b = cfiVar.d;
        this.c = cfiVar.e;
        this.d = cfiVar.f;
        this.e = cfiVar.g;
    }

    public final zci a(int i) {
        this.e = 6;
        return this;
    }

    public final zci b(Map map) {
        this.b = map;
        return this;
    }

    public final zci c(long j) {
        this.c = j;
        return this;
    }

    public final zci d(Uri uri) {
        this.a = uri;
        return this;
    }

    public final cfi e() {
        if (this.a == null) {
            throw new IllegalStateException("The uri must be set.");
        }
        return new cfi(this.a, this.b, this.c, this.d, this.e);
    }

    public zci() {
        this.b = Collections.emptyMap();
        this.d = -1L;
    }
}
