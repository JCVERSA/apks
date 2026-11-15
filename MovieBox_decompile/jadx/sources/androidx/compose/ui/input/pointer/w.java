package androidx.compose.ui.input.pointer;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class w {

    private final long f4747a;

    private final long f4748b;

    private final long f4749c;

    private final boolean f4750d;

    private final float f4751e;

    private final long f4752f;

    private final long f4753g;

    private final boolean f4754h;

    private final int f4755i;

    private final long f4756j;

    private List f4757k;

    private long f4758l;

    private d f4759m;

    public w(long j10, long j11, long j12, boolean z10, float f10, long j13, long j14, boolean z11, boolean z12, int i10, long j15, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, z10, f10, j13, j14, z11, z12, i10, j15);
    }

    public final void a() {
        this.f4759m.c(true);
        this.f4759m.d(true);
    }

    public final w b(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, int i10, List list, long j15) {
        return d(j10, j11, j12, z10, this.f4751e, j13, j14, z11, i10, list, j15);
    }

    public final w d(long j10, long j11, long j12, boolean z10, float f10, long j13, long j14, boolean z11, int i10, List list, long j15) {
        w wVar = new w(j10, j11, j12, z10, f10, j13, j14, z11, false, i10, list, j15, this.f4758l, null);
        wVar.f4759m = this.f4759m;
        return wVar;
    }

    public final List e() {
        List list = this.f4757k;
        return list == null ? CollectionsKt.l() : list;
    }

    public final long f() {
        return this.f4747a;
    }

    public final long g() {
        return this.f4758l;
    }

    public final long h() {
        return this.f4749c;
    }

    public final boolean i() {
        return this.f4750d;
    }

    public final float j() {
        return this.f4751e;
    }

    public final long k() {
        return this.f4753g;
    }

    public final boolean l() {
        return this.f4754h;
    }

    public final long m() {
        return this.f4756j;
    }

    public final int n() {
        return this.f4755i;
    }

    public final long o() {
        return this.f4748b;
    }

    public final boolean p() {
        return this.f4759m.a() || this.f4759m.b();
    }

    public String toString() {
        return "PointerInputChange(id=" + ((Object) v.f(this.f4747a)) + ", uptimeMillis=" + this.f4748b + ", position=" + ((Object) y.g.t(this.f4749c)) + ", pressed=" + this.f4750d + ", pressure=" + this.f4751e + ", previousUptimeMillis=" + this.f4752f + ", previousPosition=" + ((Object) y.g.t(this.f4753g)) + ", previousPressed=" + this.f4754h + ", isConsumed=" + p() + ", type=" + ((Object) h0.i(this.f4755i)) + ", historical=" + e() + ",scrollDelta=" + ((Object) y.g.t(this.f4756j)) + ')';
    }

    public w(long j10, long j11, long j12, boolean z10, float f10, long j13, long j14, boolean z11, boolean z12, int i10, List list, long j15, long j16, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, z10, f10, j13, j14, z11, z12, i10, list, j15, j16);
    }

    private w(long j10, long j11, long j12, boolean z10, float f10, long j13, long j14, boolean z11, boolean z12, int i10, long j15) {
        this.f4747a = j10;
        this.f4748b = j11;
        this.f4749c = j12;
        this.f4750d = z10;
        this.f4751e = f10;
        this.f4752f = j13;
        this.f4753g = j14;
        this.f4754h = z11;
        this.f4755i = i10;
        this.f4756j = j15;
        this.f4758l = y.g.f75999b.c();
        this.f4759m = new d(z12, z12);
    }

    public w(long j10, long j11, long j12, boolean z10, float f10, long j13, long j14, boolean z11, boolean z12, int i10, long j15, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, z10, f10, j13, j14, z11, z12, (i11 & 512) != 0 ? h0.f4689a.d() : i10, (i11 & 1024) != 0 ? y.g.f75999b.c() : j15, null);
    }

    private w(long j10, long j11, long j12, boolean z10, float f10, long j13, long j14, boolean z11, boolean z12, int i10, List list, long j15, long j16) {
        this(j10, j11, j12, z10, f10, j13, j14, z11, z12, i10, j15, null);
        this.f4757k = list;
        this.f4758l = j16;
    }
}
