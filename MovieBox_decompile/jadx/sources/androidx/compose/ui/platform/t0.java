package androidx.compose.ui.platform;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.w4;
import kotlin.jvm.functions.Function1;

public interface t0 {
    void A(float f10);

    void B(float f10);

    void C(Outline outline);

    void D(int i10);

    void E(boolean z10);

    void F(androidx.compose.ui.graphics.n1 n1Var, Path path, Function1 function1);

    void G(int i10);

    float H();

    void a(float f10);

    void b(float f10);

    void c(w4 w4Var);

    void d(float f10);

    void e(float f10);

    void f(float f10);

    void g(float f10);

    float getAlpha();

    int getHeight();

    int getWidth();

    void h(float f10);

    int i();

    void j(float f10);

    void k();

    void l(int i10);

    int m();

    boolean n();

    void o(Canvas canvas);

    void p(boolean z10);

    boolean q(int i10, int i11, int i12, int i13);

    void r(float f10);

    void s(int i10);

    void setAlpha(float f10);

    boolean t();

    int u();

    boolean v();

    boolean w(boolean z10);

    void x(Matrix matrix);

    void y(int i10);

    int z();
}
