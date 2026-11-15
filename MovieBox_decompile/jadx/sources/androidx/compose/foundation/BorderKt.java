package androidx.compose.foundation;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.o4;
import androidx.compose.ui.graphics.s4;
import androidx.compose.ui.graphics.x0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public abstract class BorderKt {
    public static final androidx.compose.ui.f e(androidx.compose.ui.f fVar, float f10, long j10, a5 a5Var) {
        return f(fVar, f10, new b5(j10, null), a5Var);
    }

    public static final androidx.compose.ui.f f(androidx.compose.ui.f fVar, float f10, j1 j1Var, a5 a5Var) {
        return fVar.e(new BorderModifierNodeElement(f10, j1Var, a5Var, null));
    }

    private static final y.k g(float f10, y.k kVar) {
        return new y.k(f10, f10, kVar.j() - f10, kVar.d() - f10, k(kVar.h(), f10), k(kVar.i(), f10), k(kVar.c(), f10), k(kVar.b(), f10), null);
    }

    public static final Path h(Path path, y.k kVar, float f10, boolean z10) {
        path.reset();
        o4.b(path, kVar, null, 2, null);
        if (!z10) {
            Path pathA = x0.a();
            o4.b(pathA, g(f10, kVar), null, 2, null);
            path.l(path, pathA, s4.f4329a.a());
        }
        return path;
    }

    public static final androidx.compose.ui.draw.h i(androidx.compose.ui.draw.c cVar) {
        return cVar.v(new Function1<z.c, Unit>() {
            @Override
            public Object invoke(Object obj) {
                invoke((z.c) obj);
                return Unit.f64096a;
            }

            public final void invoke(z.c cVar2) {
                cVar2.X0();
            }
        });
    }

    public static final androidx.compose.ui.draw.h j(androidx.compose.ui.draw.c cVar, final j1 j1Var, long j10, long j11, boolean z10, float f10) {
        final long jC = z10 ? y.g.f75999b.c() : j10;
        final long jI = z10 ? cVar.i() : j11;
        final z.h mVar = z10 ? z.l.f76454a : new z.m(f10, 0.0f, 0, 0, null, 30, null);
        return cVar.v(new Function1<z.c, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z.c) obj);
                return Unit.f64096a;
            }

            public final void invoke(z.c cVar2) {
                cVar2.X0();
                z.f.i(cVar2, j1Var, jC, jI, 0.0f, mVar, null, 0, 104, null);
            }
        });
    }

    public static final long k(long j10, float f10) {
        return y.b.a(Math.max(0.0f, y.a.d(j10) - f10), Math.max(0.0f, y.a.e(j10) - f10));
    }
}
