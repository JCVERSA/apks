package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

public final class kzd implements k08.a {
    public final BasePendingResult a;
    public final ozd b;

    public kzd(ozd ozdVar, BasePendingResult basePendingResult) {
        this.b = ozdVar;
        this.a = basePendingResult;
    }

    @Override
    public final void a(Status status) {
        this.b.a.remove(this.a);
    }
}
