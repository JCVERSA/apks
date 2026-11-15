package androidx.compose.foundation;

import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v4;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.z0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public abstract class BackgroundKt {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, final long j10, final a5 a5Var) {
        return fVar.e(new BackgroundElement(j10, null, 1.0f, a5Var, InspectableValueKt.b() ? new Function1<z0, Unit>() {
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
                z0Var.b("background");
                z0Var.c(u1.g(j10));
                z0Var.a().b(TtmlNode.ATTR_TTS_COLOR, u1.g(j10));
                z0Var.a().b("shape", a5Var);
            }
        } : InspectableValueKt.a(), 2, null));
    }

    public static androidx.compose.ui.f b(androidx.compose.ui.f fVar, long j10, a5 a5Var, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            a5Var = v4.a();
        }
        return a(fVar, j10, a5Var);
    }
}
