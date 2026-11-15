package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.internal.BasePendingResult;

public final class t1e extends BasePendingResult {
    public final lu8 o;

    public t1e(c cVar, lu8 lu8Var) {
        super(cVar);
        this.o = lu8Var;
    }

    @Override
    public final lu8 d(Status status) {
        return this.o;
    }
}
