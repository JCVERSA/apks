package com.yandex.div.core.view2.errors;

import com.yandex.div.data.VariableMutationException;
import defpackage.abb;
import defpackage.e74;
import defpackage.i81;
import defpackage.qnb;
import defpackage.snb;
import defpackage.y45;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.a;
import org.mozilla.javascript.ES6Iterator;

public final class VariableMonitor {
    public final e74 a;
    public final Map b;
    public e74 c;
    public Map d;

    public VariableMonitor(e74 e74Var) {
        y45.j(e74Var, "errorHandler");
        this.a = e74Var;
        this.b = new LinkedHashMap();
        this.d = a.l();
    }

    public final e74 c(final String str) {
        return new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((qnb) obj);
                return zfb.a;
            }

            public final void invoke(qnb qnbVar) {
                y45.j(qnbVar, "variable");
                this.this$0.j(qnbVar, str);
                this.this$0.h();
            }
        };
    }

    public final Pair d(Map.Entry entry) {
        Pair pair = (Pair) entry.getKey();
        return abb.a(pair.getFirst(), (qnb) entry.getValue());
    }

    public final List e(snb snbVar) {
        List listB = snbVar.b();
        ArrayList arrayList = new ArrayList(z71.v(listB, 10));
        Iterator it = listB.iterator();
        while (it.hasNext()) {
            arrayList.add(((qnb) it.next()).b());
        }
        return arrayList;
    }

    public final boolean f(Map map, Map map2) {
        if (map2.isEmpty()) {
            return true;
        }
        for (Map.Entry entry : map2.entrySet()) {
            Object key = entry.getKey();
            if (!y45.e(map.get(key), entry.getValue())) {
                return false;
            }
        }
        return true;
    }

    public final void g(String str, String str2, String str3) {
        y45.j(str, "name");
        y45.j(str2, "path");
        y45.j(str3, ES6Iterator.VALUE_PROPERTY);
        qnb qnbVar = (qnb) this.b.get(abb.a(str2, str));
        if (y45.e(String.valueOf(qnbVar != null ? qnbVar.c() : null), str3) || qnbVar == null) {
            return;
        }
        try {
            qnbVar.n(str3);
        } catch (Exception unused) {
            this.a.invoke(new VariableMutationException("Unable to set '" + str3 + "' value to variable '" + str + "'.", null, 2, null));
        }
    }

    public final void h() {
        List listM = m();
        e74 e74Var = this.c;
        if (e74Var != null) {
            e74Var.invoke(listM);
        }
    }

    public final void i(Set set) {
        Map map = this.d;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (!set.contains((snb) entry.getValue())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            String str = (String) entry2.getKey();
            snb snbVar = (snb) entry2.getValue();
            snb.f(snbVar, e(snbVar), false, c(str), 2, null);
        }
        this.b.clear();
        for (Map.Entry entry3 : this.d.entrySet()) {
            String str2 = (String) entry3.getKey();
            Iterator it = ((snb) entry3.getValue()).b().iterator();
            while (it.hasNext()) {
                j((qnb) it.next(), str2);
            }
        }
        h();
    }

    public final void j(qnb qnbVar, String str) {
        this.b.put(abb.a(str, qnbVar.b()), qnbVar);
    }

    public final void k(Map map) {
        y45.j(map, ES6Iterator.VALUE_PROPERTY);
        if (f(this.d, map)) {
            return;
        }
        Set setG1 = i81.g1(this.d.values());
        this.d = map;
        i(setG1);
    }

    public final void l(e74 e74Var) {
        y45.j(e74Var, "callback");
        this.c = e74Var;
        h();
    }

    public final List m() {
        Map map = this.b;
        ArrayList arrayList = new ArrayList(map.size());
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(d((Map.Entry) it.next()));
        }
        return i81.T0(arrayList, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                Pair pair = (Pair) t;
                Pair pair2 = (Pair) t2;
                return kotlin.comparisons.a.d(((String) pair.component1()) + ((qnb) pair.component2()).b(), ((String) pair2.component1()) + ((qnb) pair2.component2()).b());
            }
        });
    }
}
