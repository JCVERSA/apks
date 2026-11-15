package androidx.compose.ui.draganddrop;

import android.graphics.Canvas;
import android.graphics.Point;
import android.view.View;
import androidx.compose.ui.graphics.h0;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import y.m;

public final class a extends View.DragShadowBuilder {

    private final o0.e f3831a;

    private final long f3832b;

    private final Function1 f3833c;

    public a(o0.e eVar, long j10, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(eVar, j10, function1);
    }

    @Override
    public void onDrawShadow(Canvas canvas) {
        z.a aVar = new z.a();
        o0.e eVar = this.f3831a;
        long j10 = this.f3832b;
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        m1 m1VarB = h0.b(canvas);
        Function1 function1 = this.f3833c;
        z.a.C0951a c0951aF = aVar.F();
        o0.e eVarA = c0951aF.a();
        LayoutDirection layoutDirectionB = c0951aF.b();
        m1 m1VarC = c0951aF.c();
        long jD = c0951aF.d();
        z.a.C0951a c0951aF2 = aVar.F();
        c0951aF2.j(eVar);
        c0951aF2.k(layoutDirection);
        c0951aF2.i(m1VarB);
        c0951aF2.l(j10);
        m1VarB.n();
        function1.invoke(aVar);
        m1VarB.j();
        z.a.C0951a c0951aF3 = aVar.F();
        c0951aF3.j(eVarA);
        c0951aF3.k(layoutDirectionB);
        c0951aF3.i(m1VarC);
        c0951aF3.l(jD);
    }

    @Override
    public void onProvideShadowMetrics(Point point, Point point2) {
        o0.e eVar = this.f3831a;
        point.set(eVar.c0(eVar.x0(m.i(this.f3832b))), eVar.c0(eVar.x0(m.g(this.f3832b))));
        point2.set(point.x / 2, point.y / 2);
    }

    private a(o0.e eVar, long j10, Function1 function1) {
        this.f3831a = eVar;
        this.f3832b = j10;
        this.f3833c = function1;
    }
}
