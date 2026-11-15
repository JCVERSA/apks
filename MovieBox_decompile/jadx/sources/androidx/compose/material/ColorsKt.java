package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;
import kotlin.jvm.functions.Function0;
import org.apache.tools.zip.UnixStat;

public abstract class ColorsKt {

    private static final s1 f3039a = CompositionLocalKt.f(new Function0<b>() {
        @Override
        public final b invoke() {
            return ColorsKt.d((UnixStat.PERM_MASK & 1) != 0 ? w1.d(4284612846L) : 0L, (UnixStat.PERM_MASK & 2) != 0 ? w1.d(4281794739L) : 0L, (UnixStat.PERM_MASK & 4) != 0 ? w1.d(4278442694L) : 0L, (UnixStat.PERM_MASK & 8) != 0 ? w1.d(4278290310L) : 0L, (UnixStat.PERM_MASK & 16) != 0 ? u1.f4349b.f() : 0L, (UnixStat.PERM_MASK & 32) != 0 ? u1.f4349b.f() : 0L, (UnixStat.PERM_MASK & 64) != 0 ? w1.d(4289724448L) : 0L, (UnixStat.PERM_MASK & 128) != 0 ? u1.f4349b.f() : 0L, (UnixStat.PERM_MASK & 256) != 0 ? u1.f4349b.a() : 0L, (UnixStat.PERM_MASK & 512) != 0 ? u1.f4349b.a() : 0L, (UnixStat.PERM_MASK & 1024) != 0 ? u1.f4349b.a() : 0L, (UnixStat.PERM_MASK & 2048) != 0 ? u1.f4349b.f() : 0L);
        }
    });

    public static final long a(b bVar, long j10) {
        if (u1.m(j10, bVar.h())) {
            return bVar.e();
        }
        if (u1.m(j10, bVar.i())) {
            return bVar.e();
        }
        if (u1.m(j10, bVar.j())) {
            return bVar.f();
        }
        if (u1.m(j10, bVar.k())) {
            return bVar.f();
        }
        if (u1.m(j10, bVar.a())) {
            return bVar.c();
        }
        if (u1.m(j10, bVar.l())) {
            return bVar.g();
        }
        return u1.m(j10, bVar.b()) ? bVar.d() : u1.f4349b.e();
    }

    public static final long b(long j10, androidx.compose.runtime.i iVar, int i10) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(441849991, i10, -1, "androidx.compose.material.contentColorFor (Colors.kt:296)");
        }
        iVar.P(-702395103);
        long jA = a(e.f3100a.a(iVar, 6), j10);
        if (jA == 16) {
            jA = ((u1) iVar.l(ContentColorKt.a())).u();
        }
        iVar.K();
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return jA;
    }

    public static final s1 c() {
        return f3039a;
    }

    public static final b d(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21) {
        return new b(j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, true, null);
    }
}
