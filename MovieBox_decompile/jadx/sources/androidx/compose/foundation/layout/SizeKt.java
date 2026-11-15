package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.z0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class SizeKt {

    private static final FillElement f2469a;

    private static final FillElement f2470b;

    private static final FillElement f2471c;

    private static final WrapContentElement f2472d;

    private static final WrapContentElement f2473e;

    private static final WrapContentElement f2474f;

    private static final WrapContentElement f2475g;

    private static final WrapContentElement f2476h;

    private static final WrapContentElement f2477i;

    static {
        FillElement.Companion aVar = FillElement.INSTANCE;
        f2469a = aVar.c(1.0f);
        f2470b = aVar.a(1.0f);
        f2471c = aVar.b(1.0f);
        WrapContentElement.Companion companion = WrapContentElement.INSTANCE;
        androidx.compose.ui.b.a aVar2 = androidx.compose.ui.b.f3778a;
        f2472d = companion.c(aVar2.f(), false);
        f2473e = companion.c(aVar2.i(), false);
        f2474f = companion.a(aVar2.h(), false);
        f2475g = companion.a(aVar2.j(), false);
        f2476h = companion.b(aVar2.d(), false);
        f2477i = companion.b(aVar2.m(), false);
    }

    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, float f10) {
        return fVar.e(f10 == 1.0f ? f2471c : FillElement.INSTANCE.b(f10));
    }

    public static androidx.compose.ui.f b(androidx.compose.ui.f fVar, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        return a(fVar, f10);
    }

    public static final androidx.compose.ui.f c(androidx.compose.ui.f fVar, float f10) {
        return fVar.e(f10 == 1.0f ? f2469a : FillElement.INSTANCE.c(f10));
    }

    public static androidx.compose.ui.f d(androidx.compose.ui.f fVar, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        return c(fVar, f10);
    }

    public static final androidx.compose.ui.f e(androidx.compose.ui.f fVar, final float f10) {
        return fVar.e(new SizeElement(0.0f, f10, 0.0f, f10, true, InspectableValueKt.b() ? new Function1<z0, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f64096a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("height");
                z0Var.c(o0.i.d(f10));
            }
        } : InspectableValueKt.a(), 5, null));
    }

    public static final androidx.compose.ui.f f(androidx.compose.ui.f fVar, final float f10, final float f11) {
        return fVar.e(new SizeElement(0.0f, f10, 0.0f, f11, true, InspectableValueKt.b() ? new Function1<z0, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f64096a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("heightIn");
                z0Var.a().b("min", o0.i.d(f10));
                z0Var.a().b("max", o0.i.d(f11));
            }
        } : InspectableValueKt.a(), 5, null));
    }

    public static androidx.compose.ui.f g(androidx.compose.ui.f fVar, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = o0.i.f67404b.b();
        }
        if ((i10 & 2) != 0) {
            f11 = o0.i.f67404b.b();
        }
        return f(fVar, f10, f11);
    }

    public static final androidx.compose.ui.f h(androidx.compose.ui.f fVar, final float f10, final float f11, final float f12, final float f13) {
        return fVar.e(new SizeElement(f10, f11, f12, f13, false, InspectableValueKt.b() ? new Function1<z0, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f64096a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("requiredSizeIn");
                z0Var.a().b("minWidth", o0.i.d(f10));
                z0Var.a().b("minHeight", o0.i.d(f11));
                z0Var.a().b("maxWidth", o0.i.d(f12));
                z0Var.a().b("maxHeight", o0.i.d(f13));
            }
        } : InspectableValueKt.a(), null));
    }

    public static androidx.compose.ui.f i(androidx.compose.ui.f fVar, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = o0.i.f67404b.b();
        }
        if ((i10 & 2) != 0) {
            f11 = o0.i.f67404b.b();
        }
        if ((i10 & 4) != 0) {
            f12 = o0.i.f67404b.b();
        }
        if ((i10 & 8) != 0) {
            f13 = o0.i.f67404b.b();
        }
        return h(fVar, f10, f11, f12, f13);
    }

    public static final androidx.compose.ui.f j(androidx.compose.ui.f fVar, final float f10) {
        return fVar.e(new SizeElement(f10, f10, f10, f10, true, InspectableValueKt.b() ? new Function1<z0, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f64096a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("size");
                z0Var.c(o0.i.d(f10));
            }
        } : InspectableValueKt.a(), null));
    }

    public static final androidx.compose.ui.f k(androidx.compose.ui.f fVar, final float f10, final float f11) {
        return fVar.e(new SizeElement(f10, f11, f10, f11, true, InspectableValueKt.b() ? new Function1<z0, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f64096a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("size");
                z0Var.a().b("width", o0.i.d(f10));
                z0Var.a().b("height", o0.i.d(f11));
            }
        } : InspectableValueKt.a(), null));
    }

    public static final androidx.compose.ui.f l(androidx.compose.ui.f fVar, final float f10) {
        return fVar.e(new SizeElement(f10, 0.0f, f10, 0.0f, true, InspectableValueKt.b() ? new Function1<z0, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f64096a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("width");
                z0Var.c(o0.i.d(f10));
            }
        } : InspectableValueKt.a(), 10, null));
    }

    public static final androidx.compose.ui.f m(androidx.compose.ui.f fVar, final float f10, final float f11) {
        return fVar.e(new SizeElement(f10, 0.0f, f11, 0.0f, true, InspectableValueKt.b() ? new Function1<z0, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f64096a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("widthIn");
                z0Var.a().b("min", o0.i.d(f10));
                z0Var.a().b("max", o0.i.d(f11));
            }
        } : InspectableValueKt.a(), 10, null));
    }

    public static androidx.compose.ui.f n(androidx.compose.ui.f fVar, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = o0.i.f67404b.b();
        }
        if ((i10 & 2) != 0) {
            f11 = o0.i.f67404b.b();
        }
        return m(fVar, f10, f11);
    }

    public static final androidx.compose.ui.f o(androidx.compose.ui.f fVar, androidx.compose.ui.b.c cVar, boolean z10) {
        WrapContentElement wrapContentElementA;
        androidx.compose.ui.b.a aVar = androidx.compose.ui.b.f3778a;
        if (!Intrinsics.c(cVar, aVar.h()) || z10) {
            wrapContentElementA = (!Intrinsics.c(cVar, aVar.j()) || z10) ? WrapContentElement.INSTANCE.a(cVar, z10) : f2475g;
        } else {
            wrapContentElementA = f2474f;
        }
        return fVar.e(wrapContentElementA);
    }

    public static androidx.compose.ui.f p(androidx.compose.ui.f fVar, androidx.compose.ui.b.c cVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cVar = androidx.compose.ui.b.f3778a.h();
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return o(fVar, cVar, z10);
    }
}
