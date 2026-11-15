package androidx.compose.foundation.gestures;

import android.content.Context;
import androidx.compose.animation.core.u;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.r;
import androidx.compose.runtime.s1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.jvm.functions.Function1;

public abstract class BringIntoViewSpec_androidKt {

    private static final s1 f2321a = CompositionLocalKt.e(new Function1<r, d>() {
        @Override
        public final d invoke(r rVar) {
            return !((Context) rVar.c(AndroidCompositionLocals_androidKt.g())).getPackageManager().hasSystemFeature("android.software.leanback") ? d.f2407a.b() : BringIntoViewSpec_androidKt.b();
        }
    });

    private static final d f2322b = new a();

    public static final class a implements d {

        private final float f2324c;

        private final float f2323b = 0.3f;

        private final androidx.compose.animation.core.g f2325d = androidx.compose.animation.core.h.f(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 0, new u(0.25f, 0.1f, 0.25f, 1.0f), 2, null);

        a() {
        }

        @Override
        public float a(float f10, float f11, float f12) {
            float fAbs = Math.abs((f11 + f10) - f10);
            boolean z10 = fAbs <= f12;
            float f13 = (this.f2323b * f12) - (this.f2324c * fAbs);
            float f14 = f12 - f13;
            if (z10 && f14 < fAbs) {
                f13 = f12 - fAbs;
            }
            return f10 - f13;
        }

        @Override
        public androidx.compose.animation.core.g b() {
            return this.f2325d;
        }
    }

    public static final s1 a() {
        return f2321a;
    }

    public static final d b() {
        return f2322b;
    }
}
