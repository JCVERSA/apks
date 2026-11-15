package androidx.compose.foundation.layout;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

public final class g0 implements h0 {

    private final String f2545a;

    private final i1 f2546b;

    public g0(r rVar, String str) {
        this.f2545a = str;
        this.f2546b = u2.c(rVar, null, 2, null);
    }

    @Override
    public int a(o0.e eVar) {
        return e().d();
    }

    @Override
    public int b(o0.e eVar) {
        return e().a();
    }

    @Override
    public int c(o0.e eVar, LayoutDirection layoutDirection) {
        return e().b();
    }

    @Override
    public int d(o0.e eVar, LayoutDirection layoutDirection) {
        return e().c();
    }

    public final r e() {
        return (r) this.f2546b.getValue();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g0) {
            return Intrinsics.c(e(), ((g0) obj).e());
        }
        return false;
    }

    public final void f(r rVar) {
        this.f2546b.setValue(rVar);
    }

    public int hashCode() {
        return this.f2545a.hashCode();
    }

    public String toString() {
        return this.f2545a + "(left=" + e().b() + ", top=" + e().d() + ", right=" + e().c() + ", bottom=" + e().a() + ')';
    }
}
