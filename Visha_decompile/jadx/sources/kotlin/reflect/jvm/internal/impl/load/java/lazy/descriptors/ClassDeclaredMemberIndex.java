package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.by6;
import defpackage.c85;
import defpackage.e74;
import defpackage.i81;
import defpackage.ky5;
import defpackage.m75;
import defpackage.pc9;
import defpackage.q75;
import defpackage.s65;
import defpackage.s75;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.sequences.SequencesKt___SequencesKt;

public class ClassDeclaredMemberIndex implements a {
    public final s65 a;
    public final e74 b;
    public final e74 c;
    public final Map d;
    public final Map e;
    public final Map f;

    public ClassDeclaredMemberIndex(s65 s65Var, e74 e74Var) {
        y45.j(s65Var, "jClass");
        y45.j(e74Var, "memberFilter");
        this.a = s65Var;
        this.b = e74Var;
        e74 e74Var2 = new e74() {
            {
                super(1);
            }

            @Override
            public final Boolean invoke(s75 s75Var) {
                y45.j(s75Var, CmcdData.OBJECT_TYPE_MANIFEST);
                return Boolean.valueOf(((Boolean) this.this$0.b.invoke(s75Var)).booleanValue() && !q75.c(s75Var));
            }
        };
        this.c = e74Var2;
        pc9 pc9VarF = SequencesKt___SequencesKt.F(i81.b0(s65Var.v()), e74Var2);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : pc9VarF) {
            by6 name = ((s75) obj).getName();
            Object arrayList = linkedHashMap.get(name);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(name, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        this.d = linkedHashMap;
        pc9 pc9VarF2 = SequencesKt___SequencesKt.F(i81.b0(this.a.getFields()), this.b);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj2 : pc9VarF2) {
            linkedHashMap2.put(((m75) obj2).getName(), obj2);
        }
        this.e = linkedHashMap2;
        Collection collectionE = this.a.E();
        e74 e74Var3 = this.b;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj3 : collectionE) {
            if (((Boolean) e74Var3.invoke(obj3)).booleanValue()) {
                arrayList2.add(obj3);
            }
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(wn8.d(ky5.g(z71.v(arrayList2, 10)), 16));
        for (Object obj4 : arrayList2) {
            linkedHashMap3.put(((c85) obj4).getName(), obj4);
        }
        this.f = linkedHashMap3;
    }

    @Override
    public Set a() {
        pc9 pc9VarF = SequencesKt___SequencesKt.F(i81.b0(this.a.v()), this.c);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = pc9VarF.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((s75) it.next()).getName());
        }
        return linkedHashSet;
    }

    @Override
    public m75 b(by6 by6Var) {
        y45.j(by6Var, "name");
        return (m75) this.e.get(by6Var);
    }

    @Override
    public Set c() {
        return this.f.keySet();
    }

    @Override
    public Collection d(by6 by6Var) {
        y45.j(by6Var, "name");
        List listK = (List) this.d.get(by6Var);
        if (listK == null) {
            listK = y71.k();
        }
        return listK;
    }

    @Override
    public Set e() {
        pc9 pc9VarF = SequencesKt___SequencesKt.F(i81.b0(this.a.getFields()), this.b);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = pc9VarF.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((m75) it.next()).getName());
        }
        return linkedHashSet;
    }

    @Override
    public c85 f(by6 by6Var) {
        y45.j(by6Var, "name");
        return (c85) this.f.get(by6Var);
    }
}
