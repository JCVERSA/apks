package com.bykv.vk.openvk.Sj.Sj.sP.EjP;

public abstract class a implements b {

    private b.InterfaceC0168b f19546a;

    private b.f f19547b;

    private b.d f19548c;

    private b.g f19549d;

    private b.c f19550e;

    private b.e f19551f;

    private b.a f19552g;

    protected boolean f19553h = false;

    @Override
    public void Sj(boolean z10) {
        this.f19553h = z10;
    }

    @Override
    public final void a(b.g gVar) {
        this.f19549d = gVar;
    }

    @Override
    public final void b(b.d dVar) {
        this.f19548c = dVar;
    }

    @Override
    public final void c(b.a aVar) {
        this.f19552g = aVar;
    }

    @Override
    public final void d(b.f fVar) {
        this.f19547b = fVar;
    }

    @Override
    public final void e(b.e eVar) {
        this.f19551f = eVar;
    }

    @Override
    public final void h(b.c cVar) {
        this.f19550e = cVar;
    }

    @Override
    public final void j(b.InterfaceC0168b interfaceC0168b) {
        this.f19546a = interfaceC0168b;
    }

    protected final void k() {
        try {
            b.g gVar = this.f19549d;
            if (gVar != null) {
                gVar.TKC(this);
            }
        } catch (Throwable unused) {
        }
    }

    public void l() {
        this.f19546a = null;
        this.f19548c = null;
        this.f19547b = null;
        this.f19549d = null;
        this.f19550e = null;
        this.f19551f = null;
        this.f19552g = null;
    }

    protected final void m(int i10) {
        try {
            b.d dVar = this.f19548c;
            if (dVar != null) {
                dVar.Sj(this, i10);
            }
        } catch (Throwable unused) {
        }
    }

    protected final void n(int i10, int i11, int i12, int i13) {
        try {
            b.c cVar = this.f19550e;
            if (cVar != null) {
                cVar.Sj(this, i10, i11, i12, i13);
            }
        } catch (Throwable unused) {
        }
    }

    protected final boolean o(int i10, int i11) {
        try {
            b.e eVar = this.f19551f;
            return eVar != null && eVar.Sj(this, i10, i11);
        } catch (Throwable unused) {
        }
    }

    protected final void p() {
        try {
            b.f fVar = this.f19547b;
            if (fVar != null) {
                fVar.Sj(this);
            }
        } catch (Throwable unused) {
        }
    }

    protected final void q() {
        try {
            b.InterfaceC0168b interfaceC0168b = this.f19546a;
            if (interfaceC0168b != null) {
                interfaceC0168b.sP(this);
            }
        } catch (Throwable unused) {
        }
    }

    protected final boolean r(int i10, int i11) {
        try {
            b.a aVar = this.f19552g;
            return aVar != null && aVar.sP(this, i10, i11);
        } catch (Throwable unused) {
        }
    }
}
