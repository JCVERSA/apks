package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;

final class a extends c {
    a(Context context, b bVar, d dVar) {
        super(CrashType.ANR, context, bVar, dVar);
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
        aVarA.a("process_name", (Object) com.apm.insight.l.a.b());
        com.apm.insight.a.a(aVarA, headerA, this.f19150a);
        return aVarA;
    }
}
