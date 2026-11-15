package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class lr0 {
    private final o8<?> a;
    private final zr b;
    private final e1 c;
    private final int d;
    private final j1 e;
    private final o3 f;
    private final mr0 g;
    private final dw h;

    public lr0(Context context, o8 o8Var, zr zrVar, e1 e1Var, int i, v1 v1Var, o3 o3Var) {
        this(context, o8Var, zrVar, e1Var, i, v1Var, o3Var, new mr0(), new fw(context, o3Var, new er1().b(o8Var, o3Var)).a());
    }

    public final kr0<ExtendedNativeAdView> a(Context context, ViewGroup viewGroup, q61 q61Var, st stVar, k3 k3Var, ks1 ks1Var, f52 f52Var, l20 l20Var, b30 b30Var, m6 m6Var) {
        y45.j(context, "context");
        y45.j(viewGroup, TtmlNode.RUBY_CONTAINER);
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(stVar, "adEventListener");
        y45.j(k3Var, "adCompleteListener");
        y45.j(ks1Var, "closeVerificationController");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(l20Var, "divKitActionHandlerDelegate");
        o3 o3Var = this.f;
        o8<?> o8Var = this.a;
        j1 j1Var = this.e;
        int i = this.d;
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(j1Var, "adActivityListener");
        List<ee0> listA = (o8Var.n() == ts.f ? new qs1(o3Var, j1Var, new ms1(o3Var, j1Var, i)) : new eq0(o3Var, j1Var, new dq0(o3Var, j1Var, i), new c51())).a(context, this.a, q61Var, this.b, stVar, this.c, this.h, k3Var, ks1Var, f52Var, l20Var, b30Var, m6Var);
        mr0 mr0Var = this.g;
        o8<?> o8Var2 = this.a;
        zr zrVar = this.b;
        e1 e1Var = this.c;
        mr0Var.getClass();
        y45.j(context, "context");
        y45.j(o8Var2, "adResponse");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(e1Var, "eventController");
        y45.j(listA, "designCreators");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((ee0) it.next()).a(context, o8Var2, q61Var, zrVar, stVar, e1Var));
        }
        return new kr0<>(context, viewGroup, arrayList, new jr0(arrayList), new hr0(), new gr0());
    }

    public lr0(Context context, o8 o8Var, zr zrVar, e1 e1Var, int i, v1 v1Var, o3 o3Var, mr0 mr0Var, dw dwVar) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(zrVar, "contentCloseListener");
        y45.j(e1Var, "eventController");
        y45.j(v1Var, "adActivityListener");
        y45.j(o3Var, "adConfiguration");
        y45.j(mr0Var, "layoutDesignsProvider");
        y45.j(dwVar, "debugEventsReporter");
        this.a = o8Var;
        this.b = zrVar;
        this.c = e1Var;
        this.d = i;
        this.e = v1Var;
        this.f = o3Var;
        this.g = mr0Var;
        this.h = dwVar;
    }

    public final ArrayList a(Context context, ExtendedNativeAdView extendedNativeAdView, q61 q61Var, st stVar, k3 k3Var, ks1 ks1Var, xl1 xl1Var, l6 l6Var, ArrayList arrayList, b30 b30Var, g6 g6Var, aq aqVar) {
        y45.j(context, "context");
        y45.j(extendedNativeAdView, TtmlNode.RUBY_CONTAINER);
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(stVar, "adEventListener");
        y45.j(k3Var, "adCompleteListener");
        y45.j(ks1Var, "closeVerificationController");
        y45.j(xl1Var, "progressIncrementer");
        y45.j(l6Var, "divKitActionHandlerDelegate");
        y45.j(g6Var, "adPod");
        y45.j(aqVar, "closeTimerProgressIncrementer");
        int i = 0;
        if (q61Var instanceof b02) {
            b02 b02Var = (b02) q61Var;
            List<m6> listB = g6Var.b();
            ArrayList arrayListD = b02Var.d();
            ArrayList arrayList2 = new ArrayList();
            int size = arrayListD.size();
            while (i < size) {
                m6 m6Var = (m6) defpackage.i81.r0(listB, i);
                ArrayList arrayList3 = arrayList2;
                ArrayList arrayList4 = arrayListD;
                int i2 = size;
                int i3 = i;
                List<m6> list = listB;
                arrayList3.add(a(context, extendedNativeAdView, (q61) arrayList4.get(i3), new k32(stVar), k3Var, ks1Var, new f52(xl1Var, new h6(listB), new k6(m6Var != null ? m6Var.a() : 0L), new i6(g6Var, i), aqVar), l6Var, arrayList != null ? (b30) defpackage.i81.r0(arrayList, i3) : null, m6Var));
                i = i3 + 1;
                arrayListD = arrayList4;
                listB = list;
                arrayList2 = arrayList3;
                size = i2;
            }
            ArrayList arrayList5 = arrayList2;
            List<m6> list2 = listB;
            m6 m6Var2 = (m6) defpackage.i81.r0(list2, arrayListD.size());
            kr0<ExtendedNativeAdView> kr0VarA = b30Var != null ? a(context, extendedNativeAdView, b02Var, stVar, k3Var, ks1Var, new f52(xl1Var, new h6(list2), new k6(m6Var2 != null ? m6Var2.a() : 0L), new wf1(), aqVar), l6Var, b30Var, m6Var2) : null;
            if (kr0VarA != null) {
                arrayList5.add(kr0VarA);
            }
            return arrayList5;
        }
        List<m6> listB2 = g6Var.b();
        ArrayList arrayList6 = new ArrayList();
        h6 h6Var = new h6(listB2);
        m6 m6Var3 = (m6) defpackage.i81.q0(listB2);
        arrayList6.add(a(context, extendedNativeAdView, q61Var, stVar, k3Var, ks1Var, new f52(xl1Var, h6Var, new k6(m6Var3 != null ? m6Var3.a() : 0L), new i6(g6Var, 0), aqVar), l6Var, arrayList != null ? (b30) defpackage.i81.q0(arrayList) : null, (m6) defpackage.i81.q0(listB2)));
        m6 m6Var4 = (m6) defpackage.i81.r0(listB2, 1);
        kr0<ExtendedNativeAdView> kr0VarA2 = b30Var != null ? a(context, extendedNativeAdView, q61Var, stVar, k3Var, ks1Var, new f52(xl1Var, new h6(listB2), new k6(m6Var4 != null ? m6Var4.a() : 0L), new wf1()), l6Var, b30Var, m6Var4) : null;
        if (kr0VarA2 != null) {
            arrayList6.add(kr0VarA2);
        }
        return arrayList6;
    }
}
