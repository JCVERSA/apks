package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import defpackage.b5e;
import java.util.Objects;

public final class h extends b5e {
    public final a g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(a aVar, int i, Bundle bundle) {
        super(aVar, i, bundle);
        Objects.requireNonNull(aVar);
        this.g = aVar;
    }

    @Override
    public final boolean e() {
        this.g.q.a(ConnectionResult.RESULT_SUCCESS);
        return true;
    }

    @Override
    public final void f(ConnectionResult connectionResult) {
        a aVar = this.g;
        if (aVar.e() && aVar.y()) {
            aVar.x(16);
        } else {
            aVar.q.a(connectionResult);
            aVar.o(connectionResult);
        }
    }
}
