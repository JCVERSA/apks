package com.mbridge.msdk.tracker;

import android.util.Log;

class q implements l {

    private final g f37878a;

    public q(g gVar) {
        this.f37878a = gVar;
    }

    @Override
    public void a(e eVar) {
        if (y.b(this.f37878a)) {
            return;
        }
        this.f37878a.a(eVar);
    }

    @Override
    public void b(e eVar) {
        if (y.b(this.f37878a)) {
            return;
        }
        try {
            h hVarE = eVar.e();
            if (y.a(hVarE)) {
                eVar.a(hVarE.a(eVar));
            }
            this.f37878a.b(eVar);
        } catch (Exception e10) {
            if (a.f37664a) {
                Log.e("TrackManager", "process event error", e10);
            }
        }
    }

    @Override
    public long[] a() {
        if (y.b(this.f37878a)) {
            return new long[]{0, 0};
        }
        return this.f37878a.a();
    }
}
