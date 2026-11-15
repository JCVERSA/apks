package defpackage;

import androidx.media3.common.C;

public final class g6e {
    public boolean c;
    public int e;
    public f6e a = new f6e();
    public f6e b = new f6e();
    public long d = C.TIME_UNSET;

    public final float a() {
        if (this.a.f()) {
            return (float) (1.0E9d / this.a.a());
        }
        return -1.0f;
    }

    public final int b() {
        return this.e;
    }

    public final long c() {
        return this.a.f() ? this.a.a() : C.TIME_UNSET;
    }

    public final long d() {
        return this.a.f() ? this.a.b() : C.TIME_UNSET;
    }

    public final void e(long j) {
        this.a.c(j);
        if (this.a.f()) {
            this.c = false;
        } else if (this.d != C.TIME_UNSET) {
            if (!this.c || this.b.e()) {
                this.b.d();
                this.b.c(this.d);
            }
            this.c = true;
            this.b.c(j);
        }
        if (this.c && this.b.f()) {
            f6e f6eVar = this.a;
            this.a = this.b;
            this.b = f6eVar;
            this.c = false;
        }
        this.d = j;
        this.e = this.a.f() ? 0 : this.e + 1;
    }

    public final void f() {
        this.a.d();
        this.b.d();
        this.c = false;
        this.d = C.TIME_UNSET;
        this.e = 0;
    }

    public final boolean g() {
        return this.a.f();
    }
}
