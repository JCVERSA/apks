package androidx.compose.ui.node;

import androidx.compose.ui.graphics.c4;
import androidx.compose.ui.graphics.e5;

final class u {

    private float f5144c;

    private float f5145d;

    private float f5146e;

    private float f5147f;

    private float f5148g;

    private float f5142a = 1.0f;

    private float f5143b = 1.0f;

    private float f5149h = 8.0f;

    private long f5150i = e5.f4127a.a();

    public final void a(c4 c4Var) {
        this.f5142a = c4Var.t();
        this.f5143b = c4Var.A();
        this.f5144c = c4Var.x();
        this.f5145d = c4Var.w();
        this.f5146e = c4Var.y();
        this.f5147f = c4Var.m();
        this.f5148g = c4Var.o();
        this.f5149h = c4Var.q();
        this.f5150i = c4Var.b0();
    }

    public final void b(u uVar) {
        this.f5142a = uVar.f5142a;
        this.f5143b = uVar.f5143b;
        this.f5144c = uVar.f5144c;
        this.f5145d = uVar.f5145d;
        this.f5146e = uVar.f5146e;
        this.f5147f = uVar.f5147f;
        this.f5148g = uVar.f5148g;
        this.f5149h = uVar.f5149h;
        this.f5150i = uVar.f5150i;
    }

    public final boolean c(u uVar) {
        return this.f5142a == uVar.f5142a && this.f5143b == uVar.f5143b && this.f5144c == uVar.f5144c && this.f5145d == uVar.f5145d && this.f5146e == uVar.f5146e && this.f5147f == uVar.f5147f && this.f5148g == uVar.f5148g && this.f5149h == uVar.f5149h && e5.c(this.f5150i, uVar.f5150i);
    }
}
