package com.yandex.div.storage;

import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import com.yandex.div.storage.database.StorageException;
import defpackage.ae5;
import defpackage.ao8;
import defpackage.e74;
import defpackage.i81;
import defpackage.xi;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import defpackage.z71;
import defpackage.zn8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class d implements c {
    public final b a;
    public final Map b;
    public Set c;

    public d(b bVar) {
        y45.j(bVar, "divStorage");
        this.a = bVar;
        this.b = new LinkedHashMap();
        this.c = ye9.f();
    }

    @Override
    public ao8 a(e74 e74Var) {
        y45.j(e74Var, "predicate");
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.c();
        }
        b.C0306b c0306bB = this.a.b(e74Var);
        Set setA = c0306bB.a();
        List listF = f(c0306bB.b());
        e(setA);
        return new ao8(setA, listF);
    }

    @Override
    public e b(List list) {
        y45.j(list, "ids");
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.c();
        }
        if (list.isEmpty()) {
            return e.c.a();
        }
        List<String> list2 = list;
        Set setF1 = i81.f1(list2);
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list2) {
            zn8 zn8Var = (zn8) this.b.get(str);
            if (zn8Var != null) {
                arrayList.add(zn8Var);
                setF1.remove(str);
            }
        }
        if (setF1.isEmpty()) {
            return new e(arrayList, y71.k());
        }
        e eVarD = d(setF1);
        for (zn8 zn8Var2 : eVarD.f()) {
            this.b.put(zn8Var2.getId(), zn8Var2);
        }
        return eVarD.b(arrayList);
    }

    @Override
    public e c(c.a aVar) {
        y45.j(aVar, TranSearchIndexablesContract.TranRawData.PAYLOAD);
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.c();
        }
        List<zn8> listB = aVar.b();
        for (zn8 zn8Var : listB) {
            this.b.put(zn8Var.getId(), zn8Var);
        }
        List listA = this.a.c(listB, aVar.a()).a();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(f(listA));
        return new e(listB, arrayList);
    }

    public final e d(Set set) {
        ArrayList arrayList = new ArrayList();
        b.a aVarA = this.a.a(set);
        List listA = aVarA.a();
        arrayList.addAll(f(aVarA.b()));
        return new e(listA, arrayList);
    }

    public final void e(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.b.remove((String) it.next());
        }
    }

    public final List f(List list) {
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(new RawJsonRepositoryException((StorageException) it.next()));
        }
        return arrayList;
    }
}
