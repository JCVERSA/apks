package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import androidx.compose.runtime.a3;
import kotlin.jvm.internal.Intrinsics;

final class q {

    private final a3 f6024a;

    private final q f6025b;

    private final Object f6026c;

    public q(a3 a3Var, q qVar) {
        this.f6024a = a3Var;
        this.f6025b = qVar;
        this.f6026c = a3Var.getValue();
    }

    public final Typeface a() {
        Object obj = this.f6026c;
        Intrinsics.f(obj, "null cannot be cast to non-null type android.graphics.Typeface");
        return (Typeface) obj;
    }

    public final boolean b() {
        q qVar;
        return this.f6024a.getValue() != this.f6026c || ((qVar = this.f6025b) != null && qVar.b());
    }
}
