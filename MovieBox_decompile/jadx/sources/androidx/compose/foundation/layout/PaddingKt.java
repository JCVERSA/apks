package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.z0;
import androidx.compose.ui.unit.LayoutDirection;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public abstract class PaddingKt {
    public static final t a(float f10) {
        return new u(f10, f10, f10, f10, null);
    }

    public static final t b(float f10, float f11) {
        return new u(f10, f11, f10, f11, null);
    }

    public static t c(float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = o0.i.g(0);
        }
        if ((i10 & 2) != 0) {
            f11 = o0.i.g(0);
        }
        return b(f10, f11);
    }

    public static final float d(t tVar, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? tVar.c(layoutDirection) : tVar.b(layoutDirection);
    }

    public static final float e(t tVar, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? tVar.b(layoutDirection) : tVar.c(layoutDirection);
    }

    public static final androidx.compose.ui.f f(androidx.compose.ui.f fVar, final float f10, final float f11) {
        return fVar.e(new PaddingElement(f10, f11, f10, f11, true, new Function1<z0, Unit>() {
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
                z0Var.b("padding");
                z0Var.a().b("horizontal", o0.i.d(f10));
                z0Var.a().b("vertical", o0.i.d(f11));
            }
        }, null));
    }

    public static androidx.compose.ui.f g(androidx.compose.ui.f fVar, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = o0.i.g(0);
        }
        if ((i10 & 2) != 0) {
            f11 = o0.i.g(0);
        }
        return f(fVar, f10, f11);
    }

    public static final androidx.compose.ui.f h(androidx.compose.ui.f fVar, final float f10, final float f11, final float f12, final float f13) {
        return fVar.e(new PaddingElement(f10, f11, f12, f13, true, new Function1<z0, Unit>() {
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
                z0Var.b("padding");
                z0Var.a().b("start", o0.i.d(f10));
                z0Var.a().b(IntegrationConstants.TAB_BAR_POSITION_TOP, o0.i.d(f11));
                z0Var.a().b(TtmlNode.END, o0.i.d(f12));
                z0Var.a().b(IntegrationConstants.TAB_BAR_POSITION_DEFAULT, o0.i.d(f13));
            }
        }, null));
    }

    public static androidx.compose.ui.f i(androidx.compose.ui.f fVar, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = o0.i.g(0);
        }
        if ((i10 & 2) != 0) {
            f11 = o0.i.g(0);
        }
        if ((i10 & 4) != 0) {
            f12 = o0.i.g(0);
        }
        if ((i10 & 8) != 0) {
            f13 = o0.i.g(0);
        }
        return h(fVar, f10, f11, f12, f13);
    }
}
