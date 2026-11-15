package androidx.compose.ui.text.platform;

import android.graphics.Paint;
import android.graphics.Shader;
import android.text.TextPaint;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.r2;
import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.n4;
import androidx.compose.ui.graphics.t0;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.graphics.y4;
import androidx.compose.ui.graphics.z4;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class AndroidTextPaint extends TextPaint {

    private m4 f6003a;

    private androidx.compose.ui.text.style.i f6004b;

    private int f6005c;

    private z4 f6006d;

    private j1 f6007e;

    private a3 f6008f;

    private y.m f6009g;

    private z.h f6010h;

    public AndroidTextPaint(int i10, float f10) {
        super(i10);
        ((TextPaint) this).density = f10;
        this.f6004b = androidx.compose.ui.text.style.i.f6100b.c();
        this.f6005c = z.g.f76450o1.a();
        this.f6006d = z4.f4612d.a();
    }

    private final void a() {
        this.f6008f = null;
        this.f6007e = null;
        this.f6009g = null;
        setShader(null);
    }

    private final m4 c() {
        m4 m4Var = this.f6003a;
        if (m4Var != null) {
            return m4Var;
        }
        m4 m4VarB = t0.b(this);
        this.f6003a = m4VarB;
        return m4VarB;
    }

    public final int b() {
        return this.f6005c;
    }

    public final void d(int i10) {
        if (c1.E(i10, this.f6005c)) {
            return;
        }
        c().n(i10);
        this.f6005c = i10;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0035  */
    /* JADX WARN: Code duplicated, block: B:18:0x003e  */
    /* JADX WARN: Code duplicated, block: B:20:0x0041  */
    public final void e(final j1 j1Var, final long j10, float f10) {
        if (j1Var == null) {
            a();
            return;
        }
        if (j1Var instanceof b5) {
            f(androidx.compose.ui.text.style.k.b(((b5) j1Var).b(), f10));
            return;
        }
        if (j1Var instanceof y4) {
            if (Intrinsics.c(this.f6007e, j1Var)) {
                y.m mVar = this.f6009g;
                if (!(mVar == null ? false : y.m.f(mVar.m(), j10))) {
                    if (j10 != 9205357640488583168L) {
                        this.f6007e = j1Var;
                        this.f6009g = y.m.c(j10);
                        this.f6008f = r2.c(new Function0<Shader>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override
                            public final Shader invoke() {
                                return ((y4) j1Var).b(j10);
                            }
                        });
                    }
                }
            } else {
                if (j10 != 9205357640488583168L) {
                    this.f6007e = j1Var;
                    this.f6009g = y.m.c(j10);
                    this.f6008f = r2.c(new Function0<Shader>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override
                        public final Shader invoke() {
                            return ((y4) j1Var).b(j10);
                        }
                    });
                }
            }
            m4 m4VarC = c();
            a3 a3Var = this.f6008f;
            m4VarC.x(a3Var != null ? (Shader) a3Var.getValue() : null);
            f.a(this, f10);
        }
    }

    public final void f(long j10) {
        if (j10 != 16) {
            setColor(w1.j(j10));
            a();
        }
    }

    public final void g(z.h hVar) {
        if (hVar == null || Intrinsics.c(this.f6010h, hVar)) {
            return;
        }
        this.f6010h = hVar;
        if (Intrinsics.c(hVar, z.l.f76454a)) {
            setStyle(Paint.Style.FILL);
            return;
        }
        if (hVar instanceof z.m) {
            c().C(n4.f4299a.b());
            z.m mVar = (z.m) hVar;
            c().setStrokeWidth(mVar.f());
            c().A(mVar.d());
            c().r(mVar.c());
            c().m(mVar.b());
            m4 m4VarC = c();
            mVar.e();
            m4VarC.q(null);
        }
    }

    public final void h(z4 z4Var) {
        if (z4Var == null || Intrinsics.c(this.f6006d, z4Var)) {
            return;
        }
        this.f6006d = z4Var;
        if (Intrinsics.c(z4Var, z4.f4612d.a())) {
            clearShadowLayer();
        } else {
            setShadowLayer(androidx.compose.ui.text.platform.extensions.f.b(this.f6006d.b()), y.g.m(this.f6006d.d()), y.g.n(this.f6006d.d()), w1.j(this.f6006d.c()));
        }
    }

    public final void i(androidx.compose.ui.text.style.i iVar) {
        if (iVar == null || Intrinsics.c(this.f6004b, iVar)) {
            return;
        }
        this.f6004b = iVar;
        androidx.compose.ui.text.style.i.a aVar = androidx.compose.ui.text.style.i.f6100b;
        setUnderlineText(iVar.d(aVar.d()));
        setStrikeThruText(this.f6004b.d(aVar.b()));
    }
}
