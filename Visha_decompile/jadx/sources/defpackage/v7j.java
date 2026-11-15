package defpackage;

import androidx.media3.common.C;

public final class v7j {
    public long a;
    public float b;
    public long c;

    public v7j() {
        this.a = C.TIME_UNSET;
        this.b = -3.4028235E38f;
        this.c = C.TIME_UNSET;
    }

    public final v7j d(long j) {
        boolean z = true;
        if (j < 0) {
            if (j == C.TIME_UNSET) {
                j = -9223372036854775807L;
            } else {
                z = false;
            }
        }
        n7g.d(z);
        this.c = j;
        return this;
    }

    public final v7j e(long j) {
        this.a = j;
        return this;
    }

    public final v7j f(float f) {
        boolean z = true;
        if (f <= 0.0f && f != -3.4028235E38f) {
            z = false;
        }
        n7g.d(z);
        this.b = f;
        return this;
    }

    public final z7j g() {
        return new z7j(this, null);
    }

    public v7j(z7j z7jVar, x7j x7jVar) {
        this.a = z7jVar.a;
        this.b = z7jVar.b;
        this.c = z7jVar.c;
    }
}
