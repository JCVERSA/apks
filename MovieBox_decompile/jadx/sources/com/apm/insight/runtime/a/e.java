package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;

public final class e extends c {
    e(Context context, b bVar, d dVar) {
        super(CrashType.BLOCK, context, bVar, dVar);
    }

    @Override
    public final com.apm.insight.entity.a a(com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.a aVarA = super.a(aVar);
        com.apm.insight.a.a(aVarA, (Header) null, this.f19150a);
        return aVarA;
    }

    @Override
    protected final boolean b() {
        return true;
    }

    @Override
    protected final boolean c() {
        return false;
    }
}
