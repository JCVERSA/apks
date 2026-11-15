package com.google.firebase.perf.metrics;

import com.google.firebase.perf.session.PerfSession;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class j {

    private final Trace f31485a;

    j(Trace trace) {
        this.f31485a = trace;
    }

    com.google.firebase.perf.v1.i a() {
        com.google.firebase.perf.v1.i.b bVarQ = com.google.firebase.perf.v1.i.M().r(this.f31485a.getName()).p(this.f31485a.getStartTime().getMicros()).q(this.f31485a.getStartTime().getDurationMicros(this.f31485a.getEndTime()));
        for (Counter counter : this.f31485a.getCounters().values()) {
            bVarQ.n(counter.getName(), counter.getCount());
        }
        List<Trace> subtraces = this.f31485a.getSubtraces();
        if (!subtraces.isEmpty()) {
            Iterator<Trace> it = subtraces.iterator();
            while (it.hasNext()) {
                bVarQ.k(new j(it.next()).a());
            }
        }
        bVarQ.m(this.f31485a.getAttributes());
        com.google.firebase.perf.v1.h[] hVarArrBuildAndSort = PerfSession.buildAndSort(this.f31485a.getSessions());
        if (hVarArrBuildAndSort != null) {
            bVarQ.d(Arrays.asList(hVarArrBuildAndSort));
        }
        return (com.google.firebase.perf.v1.i) bVarQ.build();
    }
}
