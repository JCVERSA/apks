package com.google.firebase.perf.application;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.metrics.g;
import com.google.firebase.perf.util.e;
import com.google.firebase.perf.util.h;
import java.util.WeakHashMap;
import xc.k;

public class c extends FragmentManager.k {

    private static final uc.a f31389f = uc.a.e();

    private final WeakHashMap f31390a = new WeakHashMap();

    private final com.google.firebase.perf.util.a f31391b;

    private final k f31392c;

    private final a f31393d;

    private final d f31394e;

    public c(com.google.firebase.perf.util.a aVar, k kVar, a aVar2, d dVar) {
        this.f31391b = aVar;
        this.f31392c = kVar;
        this.f31393d = aVar2;
        this.f31394e = dVar;
    }

    public String a(Fragment fragment) {
        return "_st_" + fragment.getClass().getSimpleName();
    }

    @Override
    public void onFragmentPaused(FragmentManager fragmentManager, Fragment fragment) {
        super.onFragmentPaused(fragmentManager, fragment);
        uc.a aVar = f31389f;
        aVar.b("FragmentMonitor %s.onFragmentPaused ", fragment.getClass().getSimpleName());
        if (!this.f31390a.containsKey(fragment)) {
            aVar.k("FragmentMonitor: missed a fragment trace from %s", fragment.getClass().getSimpleName());
            return;
        }
        Trace trace = (Trace) this.f31390a.get(fragment);
        this.f31390a.remove(fragment);
        e eVarF = this.f31394e.f(fragment);
        if (!eVarF.d()) {
            aVar.k("onFragmentPaused: recorder failed to trace %s", fragment.getClass().getSimpleName());
        } else {
            h.a(trace, (g.a) eVarF.c());
            trace.stop();
        }
    }

    @Override
    public void onFragmentResumed(FragmentManager fragmentManager, Fragment fragment) {
        super.onFragmentResumed(fragmentManager, fragment);
        f31389f.b("FragmentMonitor %s.onFragmentResumed", fragment.getClass().getSimpleName());
        Trace trace = new Trace(a(fragment), this.f31392c, this.f31391b, this.f31393d);
        trace.start();
        trace.putAttribute("Parent_fragment", fragment.getParentFragment() == null ? "No parent" : fragment.getParentFragment().getClass().getSimpleName());
        if (fragment.getActivity() != null) {
            trace.putAttribute("Hosting_activity", fragment.getActivity().getClass().getSimpleName());
        }
        this.f31390a.put(fragment, trace);
        this.f31394e.d(fragment);
    }
}
