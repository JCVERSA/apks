package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;

final class h extends c {
    h(Context context, b bVar, d dVar) {
        super(CrashType.DART, context, bVar, dVar);
    }

    @Override
    public final com.apm.insight.entity.a a(com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.a aVarA = super.a(aVar);
        Header headerA = Header.a(this.f19151b);
        Header.a(headerA);
        Header.b(headerA);
        headerA.c();
        headerA.d();
        headerA.e();
        aVarA.a(headerA);
        com.apm.insight.a.a(aVarA, headerA, this.f19150a);
        return aVarA;
    }
}
