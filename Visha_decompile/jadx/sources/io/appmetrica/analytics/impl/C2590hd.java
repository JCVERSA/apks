package io.appmetrica.analytics.impl;

import defpackage.abb;
import defpackage.hz9;
import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleServiceEventHandler;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;

public final class C2590hd extends Gg {
    public final ArrayList b;

    public C2590hd(C2706m5 c2706m5) {
        super(c2706m5);
        String strB = c2706m5.b().b();
        strB = strB == null ? "empty" : strB;
        hz9 hz9Var = hz9.a;
        String.format("[ModulesEventHandler-%s]", Arrays.copyOf(new Object[]{strB}, 1));
        LinkedHashMap linkedHashMapA = C2910ua.j().n().a(strB);
        ArrayList arrayList = new ArrayList(linkedHashMapA.size());
        for (Map.Entry entry : linkedHashMapA.entrySet()) {
            arrayList.add(abb.a(entry.getValue(), new Yc(c2706m5, (String) entry.getKey())));
        }
        this.b = arrayList;
    }

    @Override
    public final boolean a(C2408a6 c2408a6) {
        ArrayList<Pair> arrayList = this.b;
        if (arrayList == null || !arrayList.isEmpty()) {
            for (Pair pair : arrayList) {
                ModuleServiceEventHandler moduleServiceEventHandler = (ModuleServiceEventHandler) pair.component1();
                Yc yc = (Yc) pair.component2();
                if (moduleServiceEventHandler.handle(new C2440bd(yc.b, yc.a, new C2415ad(yc.c, c2408a6)), c2408a6)) {
                    return true;
                }
            }
        }
        return false;
    }
}
