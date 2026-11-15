package defpackage;

import com.google.android.gms.common.api.internal.BasePendingResult;

public final class r2e {
    public final BasePendingResult a;

    public r2e(BasePendingResult basePendingResult, p2e p2eVar) {
        this.a = basePendingResult;
    }

    public final void finalize() throws Throwable {
        BasePendingResult.l(this.a.g);
        super.finalize();
    }
}
