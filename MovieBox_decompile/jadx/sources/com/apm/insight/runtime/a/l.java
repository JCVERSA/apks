package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
import com.apm.insight.nativecrash.NativeCrashCollector;

final class l extends c {
    l(Context context, b bVar, d dVar) {
        super(CrashType.NATIVE, context, bVar, dVar);
    }

    @Override
    public final com.apm.insight.entity.a a(int i10, com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.a aVarA = super.a(i10, aVar);
        if (i10 == 0) {
            Header headerA = Header.a(this.f19151b);
            headerA.c();
            aVarA.a(headerA);
            com.apm.insight.a.a(aVarA, headerA, this.f19150a);
        } else if (i10 == 1) {
            Header headerD = aVarA.d();
            headerD.d();
            headerD.e();
        } else if (i10 == 2) {
            Header.a(aVarA.d());
        }
        return aVarA;
    }

    @Override
    protected final boolean c() {
        return false;
    }

    @Override
    public final int a() {
        return NativeCrashCollector.a();
    }
}
