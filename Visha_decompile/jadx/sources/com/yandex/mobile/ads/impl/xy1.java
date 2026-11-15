package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.e74;
import defpackage.jy5;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Lambda;

public final class xy1 implements od1 {
    private static final List<fy1> c = defpackage.y71.n(fy1.b, fy1.c);
    private final Map<fy1, od1> a;
    private boolean b;

    public static final class a extends Lambda implements e74 {
        public static final a b = new a();

        public a() {
            super(1);
        }

        @Override
        public final Object invoke(Object obj) {
            y45.j((fy1) obj, "it");
            return defpackage.y71.k();
        }
    }

    public xy1(s62 s62Var, s62 s62Var2) {
        y45.j(s62Var, "innerAdNoticeReportController");
        y45.j(s62Var2, "blockNoticeReportController");
        this.a = kotlin.collections.a.p(abb.a(fy1.b, s62Var), abb.a(fy1.c, s62Var2));
    }

    @Override
    public final void a(fy1 fy1Var, n92 n92Var) {
        y45.j(fy1Var, "showNoticeType");
        y45.j(n92Var, "validationResult");
        od1 od1Var = this.a.get(fy1Var);
        if (od1Var != null) {
            od1Var.a(fy1Var, n92Var);
        }
    }

    @Override
    public final void invalidate() {
        Iterator<T> it = this.a.values().iterator();
        while (it.hasNext()) {
            ((od1) it.next()).invalidate();
        }
    }

    @Override
    public final void a(List<ud1> list) {
        y45.j(list, "forcedFailures");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            fy1 fy1VarC = ((ud1) obj).a().c();
            Object arrayList = linkedHashMap.get(fy1VarC);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(fy1VarC, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        for (Map.Entry entry : jy5.b(linkedHashMap, a.b).entrySet()) {
            fy1 fy1Var = (fy1) entry.getKey();
            List<ud1> list2 = (List) entry.getValue();
            od1 od1Var = this.a.get(fy1Var);
            if (od1Var != null) {
                od1Var.a(list2);
            }
        }
    }

    @Override
    public final void a(fy1 fy1Var, List<? extends fy1> list) {
        y45.j(fy1Var, "showNoticeType");
        y45.j(list, "notTrackedShowNoticeTypes");
        if (!this.b) {
            this.b = true;
            List<? extends fy1> listK0 = defpackage.i81.K0(list, fy1Var);
            for (fy1 fy1Var2 : defpackage.i81.F0(c, defpackage.i81.g1(listK0))) {
                a(fy1Var2);
                a(fy1Var2, listK0);
            }
        }
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((fy1) it.next()) == fy1Var) {
                    return;
                }
            }
        }
        od1 od1Var = this.a.get(fy1Var);
        if (od1Var != null) {
            od1Var.a(fy1Var, list);
        }
    }

    @Override
    public final void a(fy1 fy1Var) {
        y45.j(fy1Var, "showNoticeType");
        od1 od1Var = this.a.get(fy1Var);
        if (od1Var != null) {
            od1Var.a(fy1Var);
        }
    }

    @Override
    public final void a(o8<?> o8Var) {
        y45.j(o8Var, "adResponse");
        Iterator<T> it = this.a.values().iterator();
        while (it.hasNext()) {
            ((od1) it.next()).a(o8Var);
        }
    }
}
