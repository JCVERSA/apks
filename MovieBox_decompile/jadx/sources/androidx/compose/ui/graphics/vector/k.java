package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.d1;
import androidx.compose.ui.graphics.d5;
import androidx.compose.ui.graphics.q4;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import java.util.List;
import kotlin.collections.CollectionsKt;

public abstract class k {

    private static final List f4545a = CollectionsKt.l();

    private static final int f4546b = c5.f4009a.a();

    private static final int f4547c = d5.f4121a.b();

    private static final int f4548d = c1.f3983a.z();

    private static final long f4549e = u1.f4349b.d();

    private static final int f4550f = q4.f4319a.b();

    public static final int a() {
        return f4550f;
    }

    public static final int b() {
        return f4546b;
    }

    public static final int c() {
        return f4547c;
    }

    public static final List d() {
        return f4545a;
    }

    public static final boolean e(long j10, long j11) {
        return u1.r(j10) == u1.r(j11) && u1.q(j10) == u1.q(j11) && u1.o(j10) == u1.o(j11);
    }

    public static final boolean f(v1 v1Var) {
        if (v1Var instanceof d1) {
            d1 d1Var = (d1) v1Var;
            int iB = d1Var.b();
            c1.a aVar = c1.f3983a;
            if (c1.E(iB, aVar.z()) || c1.E(d1Var.b(), aVar.B())) {
                return true;
            }
        } else if (v1Var == null) {
            return true;
        }
        return false;
    }
}
