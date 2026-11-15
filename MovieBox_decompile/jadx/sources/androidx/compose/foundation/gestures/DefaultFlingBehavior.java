package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.w;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class DefaultFlingBehavior implements g {

    private w f2340a;

    private final androidx.compose.ui.j f2341b;

    private int f2342c;

    public DefaultFlingBehavior(w wVar, androidx.compose.ui.j jVar) {
        this.f2340a = wVar;
        this.f2341b = jVar;
    }

    @Override
    public Object a(k kVar, float f10, Continuation continuation) {
        this.f2342c = 0;
        return kotlinx.coroutines.i.g(this.f2341b, new DefaultFlingBehavior$performFling$2(f10, this, kVar, null), continuation);
    }

    public final w b() {
        return this.f2340a;
    }

    public final int c() {
        return this.f2342c;
    }

    public final void d(w wVar) {
        this.f2340a = wVar;
    }

    public final void e(int i10) {
        this.f2342c = i10;
    }

    public DefaultFlingBehavior(w wVar, androidx.compose.ui.j jVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(wVar, (i10 & 2) != 0 ? ScrollableKt.e() : jVar);
    }
}
