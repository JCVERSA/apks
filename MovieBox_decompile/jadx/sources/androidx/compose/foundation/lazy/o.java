package androidx.compose.foundation.lazy;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class o implements androidx.compose.foundation.lazy.layout.t {

    private final k f2826a;

    private final androidx.compose.foundation.lazy.layout.q f2827b;

    private final long f2828c;

    public o(long j10, boolean z10, k kVar, androidx.compose.foundation.lazy.layout.q qVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, z10, kVar, qVar);
    }

    public static n e(o oVar, int i10, long j10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAndMeasure-0kLqBqw");
        }
        if ((i11 & 2) != 0) {
            j10 = oVar.f2828c;
        }
        return oVar.d(i10, j10);
    }

    public abstract n b(int i10, Object obj, Object obj2, List list, long j10);

    @Override
    public n a(int i10, int i11, int i12, long j10) {
        return d(i10, j10);
    }

    public final n d(int i10, long j10) {
        return b(i10, this.f2826a.b(i10), this.f2826a.c(i10), this.f2827b.S(i10, j10), j10);
    }

    public final long f() {
        return this.f2828c;
    }

    public final androidx.compose.foundation.lazy.layout.p g() {
        return this.f2826a.e();
    }

    private o(long j10, boolean z10, k kVar, androidx.compose.foundation.lazy.layout.q qVar) {
        this.f2826a = kVar;
        this.f2827b = qVar;
        this.f2828c = o0.c.b(0, z10 ? o0.b.l(j10) : Integer.MAX_VALUE, 0, z10 ? Integer.MAX_VALUE : o0.b.k(j10), 5, null);
    }
}
