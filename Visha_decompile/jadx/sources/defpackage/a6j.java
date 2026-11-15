package defpackage;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import android.view.TextureView;

public final class a6j implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, l7e, dhj, ppj, tlj, i0j {
    public final l6j b;

    public a6j(l6j l6jVar, f6j f6jVar) {
        this.b = l6jVar;
    }

    @Override
    public final void a(long j) {
        this.b.q.f(j);
    }

    @Override
    public final void b(Exception exc) {
        this.b.q.l(exc);
    }

    @Override
    public final void c(d1j d1jVar) {
        this.b.q.j(d1jVar);
    }

    @Override
    public final void d(ehj ehjVar) {
        this.b.q.i(ehjVar);
    }

    @Override
    public final void e(final zhf zhfVar) {
        xqg xqgVar = this.b.l;
        xqgVar.d(25, new iog() {
            @Override
            public final void zza(Object obj) {
                ((qze) obj).m(zhfVar);
            }
        });
        xqgVar.c();
    }

    @Override
    public final void f(int i, long j, long j2) {
        this.b.q.R(i, j, j2);
    }

    @Override
    public final void g(d1j d1jVar) {
        this.b.q.g(d1jVar);
    }

    @Override
    public final void h(erj erjVar, g1j g1jVar) {
        this.b.q.p(erjVar, g1jVar);
    }

    @Override
    public final void i(String str, long j, long j2) {
        this.b.q.v(str, j, j2);
    }

    @Override
    public final void j(Object obj, long j) {
        l6j l6jVar = this.b;
        l6jVar.q.x(obj, j);
        if (l6jVar.H == obj) {
            xqg xqgVar = l6jVar.l;
            xqgVar.d(26, new iog() {
                @Override
                public final void zza(Object obj2) {
                }
            });
            xqgVar.c();
        }
    }

    @Override
    public final void k(d1j d1jVar) {
        this.b.q.P(d1jVar);
    }

    @Override
    public final void l(int i, long j) {
        this.b.q.o(i, j);
    }

    @Override
    public final void m(d1j d1jVar) {
        this.b.q.C(d1jVar);
    }

    @Override
    public final void n(Exception exc) {
        this.b.q.J(exc);
    }

    @Override
    public final void o(long j, int i) {
        this.b.q.B(j, i);
    }

    @Override
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        l6j l6jVar = this.b;
        l6j.t(l6jVar, surfaceTexture);
        l6jVar.G(i, i2);
    }

    @Override
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        l6j l6jVar = this.b;
        l6jVar.I(null);
        l6jVar.G(0, 0);
        return true;
    }

    @Override
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.b.G(i, i2);
    }

    @Override
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override
    public final void p(erj erjVar, g1j g1jVar) {
        this.b.q.T(erjVar, g1jVar);
    }

    @Override
    public final void q(String str, long j, long j2) {
        this.b.q.n(str, j, j2);
    }

    @Override
    public final void r(Exception exc) {
        this.b.q.A(exc);
    }

    @Override
    public final void s(ehj ehjVar) {
        this.b.q.b(ehjVar);
    }

    @Override
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.b.G(i2, i3);
    }

    @Override
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    @Override
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.b.G(0, 0);
    }

    @Override
    public final void zzc(String str) {
        this.b.q.zzy(str);
    }

    @Override
    public final void zzn(final boolean z) {
        l6j l6jVar = this.b;
        if (l6jVar.N == z) {
            return;
        }
        l6jVar.N = z;
        xqg xqgVar = l6jVar.l;
        xqgVar.d(23, new iog() {
            @Override
            public final void zza(Object obj) {
                ((qze) obj).y(z);
            }
        });
        xqgVar.c();
    }

    @Override
    public final void zzq(String str) {
        this.b.q.k(str);
    }
}
