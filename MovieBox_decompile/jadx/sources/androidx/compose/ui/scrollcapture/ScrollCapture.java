package androidx.compose.ui.scrollcapture;

import android.graphics.Point;
import android.view.ScrollCaptureTarget;
import android.view.View;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.graphics.u4;
import androidx.compose.ui.semantics.m;
import java.util.function.Consumer;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.o0;
import o0.p;
import o0.s;

public final class ScrollCapture implements ComposeScrollCaptureCallback.a {

    private final i1 f5592a = u2.c(Boolean.FALSE, null, 2, null);

    private final void e(boolean z10) {
        this.f5592a.setValue(Boolean.valueOf(z10));
    }

    @Override
    public void a() {
        e(true);
    }

    @Override
    public void b() {
        e(false);
    }

    public final boolean c() {
        return ((Boolean) this.f5592a.getValue()).booleanValue();
    }

    public final void d(View view, m mVar, CoroutineContext coroutineContext, Consumer<ScrollCaptureTarget> consumer) {
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new i[16], 0);
        j.f(mVar.a(), 0, new ScrollCapture$onScrollCaptureSearch$1(bVar), 2, null);
        bVar.A(ComparisonsKt.b(new Function1<i, Comparable<?>>() {
            @Override
            public final Comparable<?> invoke(i iVar) {
                return Integer.valueOf(iVar.b());
            }
        }, new Function1<i, Comparable<?>>() {
            @Override
            public final Comparable<?> invoke(i iVar) {
                return Integer.valueOf(iVar.d().e());
            }
        }));
        i iVar = (i) (bVar.p() ? null : bVar.m()[bVar.n() - 1]);
        if (iVar == null) {
            return;
        }
        ComposeScrollCaptureCallback composeScrollCaptureCallback = new ComposeScrollCaptureCallback(iVar.c(), iVar.d(), o0.a(coroutineContext), this);
        y.i iVarB = androidx.compose.ui.layout.m.b(iVar.a());
        long jI = iVar.d().i();
        ScrollCaptureTarget scrollCaptureTargetA = h.a(view, u4.a(s.b(iVarB)), new Point(p.h(jI), p.i(jI)), f.a(composeScrollCaptureCallback));
        scrollCaptureTargetA.setScrollBounds(u4.a(iVar.d()));
        consumer.accept(scrollCaptureTargetA);
    }
}
