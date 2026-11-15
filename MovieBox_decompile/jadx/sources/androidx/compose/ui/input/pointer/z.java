package androidx.compose.ui.input.pointer;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class z {

    private final long f4768a;

    private final long f4769b;

    private final long f4770c;

    private final long f4771d;

    private final boolean f4772e;

    private final float f4773f;

    private final int f4774g;

    private final boolean f4775h;

    private final List f4776i;

    private final long f4777j;

    private final long f4778k;

    public z(long j10, long j11, long j12, long j13, boolean z10, float f10, int i10, boolean z11, List list, long j14, long j15, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13, z10, f10, i10, z11, list, j14, j15);
    }

    public final boolean a() {
        return this.f4775h;
    }

    public final boolean b() {
        return this.f4772e;
    }

    public final List c() {
        return this.f4776i;
    }

    public final long d() {
        return this.f4768a;
    }

    public final long e() {
        return this.f4778k;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return v.d(this.f4768a, zVar.f4768a) && this.f4769b == zVar.f4769b && y.g.j(this.f4770c, zVar.f4770c) && y.g.j(this.f4771d, zVar.f4771d) && this.f4772e == zVar.f4772e && Float.compare(this.f4773f, zVar.f4773f) == 0 && h0.g(this.f4774g, zVar.f4774g) && this.f4775h == zVar.f4775h && Intrinsics.c(this.f4776i, zVar.f4776i) && y.g.j(this.f4777j, zVar.f4777j) && y.g.j(this.f4778k, zVar.f4778k);
    }

    public final long f() {
        return this.f4771d;
    }

    public final long g() {
        return this.f4770c;
    }

    public final float h() {
        return this.f4773f;
    }

    public int hashCode() {
        return (((((((((((((((((((v.e(this.f4768a) * 31) + androidx.collection.s.a(this.f4769b)) * 31) + y.g.o(this.f4770c)) * 31) + y.g.o(this.f4771d)) * 31) + androidx.compose.foundation.e.a(this.f4772e)) * 31) + Float.floatToIntBits(this.f4773f)) * 31) + h0.h(this.f4774g)) * 31) + androidx.compose.foundation.e.a(this.f4775h)) * 31) + this.f4776i.hashCode()) * 31) + y.g.o(this.f4777j)) * 31) + y.g.o(this.f4778k);
    }

    public final long i() {
        return this.f4777j;
    }

    public final int j() {
        return this.f4774g;
    }

    public final long k() {
        return this.f4769b;
    }

    public String toString() {
        return "PointerInputEventData(id=" + ((Object) v.f(this.f4768a)) + ", uptime=" + this.f4769b + ", positionOnScreen=" + ((Object) y.g.t(this.f4770c)) + ", position=" + ((Object) y.g.t(this.f4771d)) + ", down=" + this.f4772e + ", pressure=" + this.f4773f + ", type=" + ((Object) h0.i(this.f4774g)) + ", activeHover=" + this.f4775h + ", historical=" + this.f4776i + ", scrollDelta=" + ((Object) y.g.t(this.f4777j)) + ", originalEventPosition=" + ((Object) y.g.t(this.f4778k)) + ')';
    }

    private z(long j10, long j11, long j12, long j13, boolean z10, float f10, int i10, boolean z11, List list, long j14, long j15) {
        this.f4768a = j10;
        this.f4769b = j11;
        this.f4770c = j12;
        this.f4771d = j13;
        this.f4772e = z10;
        this.f4773f = f10;
        this.f4774g = i10;
        this.f4775h = z11;
        this.f4776i = list;
        this.f4777j = j14;
        this.f4778k = j15;
    }
}
