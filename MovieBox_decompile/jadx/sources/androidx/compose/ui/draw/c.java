package androidx.compose.ui.draw;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import o0.m;

public final class c implements o0.e {

    private a f3857a = i.f3863a;

    private h f3858b;

    private z.c f3859c;

    private Function0 f3860d;

    public final void B(z.c cVar) {
        this.f3859c = cVar;
    }

    @Override
    public float B0() {
        return this.f3857a.getDensity().B0();
    }

    public final void C(h hVar) {
        this.f3858b = hVar;
    }

    public final void D(Function0 function0) {
        this.f3860d = function0;
    }

    @Override
    public float D0(float f10) {
        return o0.d.d(this, f10);
    }

    @Override
    public long H(float f10) {
        return m.b(this, f10);
    }

    @Override
    public float J(long j10) {
        return m.a(this, j10);
    }

    @Override
    public long P0(long j10) {
        return o0.d.e(this, j10);
    }

    @Override
    public long Q(float f10) {
        return o0.d.f(this, f10);
    }

    @Override
    public int c0(float f10) {
        return o0.d.a(this, f10);
    }

    @Override
    public float getDensity() {
        return this.f3857a.getDensity().getDensity();
    }

    public final LayoutDirection getLayoutDirection() {
        return this.f3857a.getLayoutDirection();
    }

    @Override
    public float h0(long j10) {
        return o0.d.c(this, j10);
    }

    public final long i() {
        return this.f3857a.i();
    }

    public final h n() {
        return this.f3858b;
    }

    public final h v(Function1 function1) {
        h hVar = new h(function1);
        this.f3858b = hVar;
        return hVar;
    }

    @Override
    public float x0(float f10) {
        return o0.d.b(this, f10);
    }

    public final void z(a aVar) {
        this.f3857a = aVar;
    }
}
