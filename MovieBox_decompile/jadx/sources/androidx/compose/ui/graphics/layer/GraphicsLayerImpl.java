package androidx.compose.ui.graphics.layer;

import android.graphics.Matrix;
import android.graphics.Outline;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.w4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public interface GraphicsLayerImpl {

    public static final Companion f4184a = Companion.f4185a;

    public static final class Companion {

        static final Companion f4185a = new Companion();

        private static final Function1 f4186b = new Function1<z.g, Unit>() {
            @Override
            public Object invoke(Object obj) {
                invoke((z.g) obj);
                return Unit.f64096a;
            }

            public final void invoke(z.g gVar) {
                z.f.j(gVar, u1.f4349b.d(), 0L, 0L, 0.0f, null, null, 0, 126, null);
            }
        };

        private Companion() {
        }

        public final Function1 a() {
            return f4186b;
        }
    }

    float A();

    void B(int i10, int i11, long j10);

    long C();

    long D();

    Matrix E();

    void F(boolean z10);

    void G(Outline outline, long j10);

    void H(long j10);

    void I(o0.e eVar, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1);

    void J(int i10);

    float K();

    void L(m1 m1Var);

    void a(float f10);

    void b(float f10);

    void c(w4 w4Var);

    void d(float f10);

    void e(float f10);

    void f(float f10);

    void g(float f10);

    float getAlpha();

    void h(float f10);

    v1 i();

    void j(float f10);

    void k();

    int l();

    float m();

    boolean n();

    float o();

    void p(long j10);

    float q();

    void r(boolean z10);

    void s(long j10);

    void setAlpha(float f10);

    float t();

    void u(float f10);

    w4 v();

    float w();

    float x();

    float y();

    int z();
}
