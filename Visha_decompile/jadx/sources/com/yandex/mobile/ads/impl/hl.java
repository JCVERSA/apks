package com.yandex.mobile.ads.impl;

import defpackage.u95;
import defpackage.y45;
import defpackage.ye9;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class hl {
    private static final u95 a;
    public static final int b = 0;

    static {
        vq0.a.getClass();
        a = vq0.a();
    }

    public static fl a(ps0 ps0Var) {
        y45.j(ps0Var, "localStorage");
        Set<String> setA = ps0Var.a("BiddingSettingsAdUnitIdsSet", ye9.f());
        if (setA == null) {
            setA = ye9.f();
        }
        Set<String> setA2 = ps0Var.a("MediationPrefetchSettingsAdUnitIdsSet", ye9.f());
        if (setA2 == null) {
            setA2 = ye9.f();
        }
        gl glVar = new gl();
        ArrayList arrayList = new ArrayList(setA.size());
        Iterator<String> it = setA.iterator();
        while (it.hasNext()) {
            String strD = ps0Var.d(a(it.next()));
            if (strD != null && strD.length() != 0) {
                try {
                    ba baVarA = glVar.a(new JSONObject(strD));
                    if (baVarA != null) {
                        arrayList.add(baVarA);
                    }
                } catch (JSONException unused) {
                    sp0.b(new Object[0]);
                }
            }
        }
        long jB = ps0Var.b("MediationPrefetchLoadTimeoutMillis");
        ArrayList arrayList2 = new ArrayList(setA2.size());
        Iterator<String> it2 = setA2.iterator();
        while (it2.hasNext()) {
            String strD2 = ps0Var.d(b(it2.next()));
            if (strD2 != null) {
                u95 u95Var = a;
                u95Var.a();
                e01 e01Var = (e01) u95Var.c(defpackage.qn0.t(e01.Companion.serializer()), strD2);
                if (e01Var != null) {
                    arrayList2.add(e01Var);
                }
            }
        }
        h01 h01Var = new h01(jB, arrayList2);
        if (arrayList.isEmpty() && setA2.isEmpty()) {
            return null;
        }
        return new fl(arrayList, h01Var);
    }

    private static String b(String str) {
        return "MediationPrefetchSettingsAdUnitIdsInfo_" + str;
    }

    public static void b(ps0 ps0Var) {
        y45.j(ps0Var, "localStorage");
        Set<String> setA = ps0Var.a("BiddingSettingsAdUnitIdsSet", ye9.f());
        if (setA == null) {
            setA = ye9.f();
        }
        Set<String> setA2 = ps0Var.a("MediationPrefetchSettingsAdUnitIdsSet", ye9.f());
        if (setA2 == null) {
            setA2 = ye9.f();
        }
        Iterator<String> it = setA.iterator();
        while (it.hasNext()) {
            ps0Var.a(a(it.next()));
        }
        Iterator<String> it2 = setA2.iterator();
        while (it2.hasNext()) {
            ps0Var.a(b(it2.next()));
        }
        ps0Var.a("BiddingSettingsAdUnitIdsSet");
        ps0Var.a("MediationPrefetchSettingsAdUnitIdsSet");
    }

    private static String a(String str) {
        return "BiddingSettingsAdUnitIdsInfo_" + str;
    }

    public static void a(ps0 ps0Var, fl flVar) {
        List<e01> listK;
        y45.j(ps0Var, "localStorage");
        y45.j(flVar, "biddingSettings");
        List<ba> listC = flVar.c();
        HashSet hashSet = new HashSet(listC.size());
        for (ba baVar : listC) {
            String strC = baVar.c();
            String strD = baVar.d();
            hashSet.add(strC);
            ps0Var.a(a(strC), strD);
        }
        Set<String> setA = ps0Var.a("BiddingSettingsAdUnitIdsSet", ye9.f());
        if (setA == null) {
            setA = ye9.f();
        }
        for (String str : setA) {
            if (!hashSet.contains(str)) {
                ps0Var.a(a(str));
            }
        }
        ps0Var.a("BiddingSettingsAdUnitIdsSet", hashSet);
        h01 h01VarD = flVar.d();
        long jD = h01VarD != null ? h01VarD.d() : 0L;
        if (h01VarD == null || (listK = h01VarD.e()) == null) {
            listK = defpackage.y71.k();
        }
        HashSet hashSet2 = new HashSet(listK.size());
        for (e01 e01Var : listK) {
            hashSet2.add(e01Var.d());
            String strB = b(e01Var.d());
            u95 u95Var = a;
            u95Var.a();
            ps0Var.a(strB, u95Var.b(e01.Companion.serializer(), e01Var));
        }
        Set<String> setA2 = ps0Var.a("MediationPrefetchSettingsAdUnitIdsSet", ye9.f());
        if (setA2 == null) {
            setA2 = ye9.f();
        }
        for (String str2 : setA2) {
            if (!hashSet2.contains(str2)) {
                ps0Var.a(b(str2));
            }
        }
        ps0Var.a("MediationPrefetchSettingsAdUnitIdsSet", hashSet2);
        ps0Var.a("MediationPrefetchLoadTimeoutMillis", jD);
    }
}
