package defpackage;

import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.j;

public class k95 extends JobSupport implements pb1 {
    public final boolean b;

    public k95(j jVar) {
        super(true);
        initParentJob(jVar);
        this.b = V();
    }

    public final boolean V() {
        JobSupport jobSupportT;
        vv0 parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        wv0 wv0Var = parentHandle$kotlinx_coroutines_core instanceof wv0 ? (wv0) parentHandle$kotlinx_coroutines_core : null;
        if (wv0Var != null && (jobSupportT = wv0Var.t()) != null) {
            while (!jobSupportT.getHandlesException$kotlinx_coroutines_core()) {
                vv0 parentHandle$kotlinx_coroutines_core2 = jobSupportT.getParentHandle$kotlinx_coroutines_core();
                wv0 wv0Var2 = parentHandle$kotlinx_coroutines_core2 instanceof wv0 ? (wv0) parentHandle$kotlinx_coroutines_core2 : null;
                if (wv0Var2 == null || (jobSupportT = wv0Var2.t()) == null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public boolean getHandlesException$kotlinx_coroutines_core() {
        return this.b;
    }

    @Override
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }
}
