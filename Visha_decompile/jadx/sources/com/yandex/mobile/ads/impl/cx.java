package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class cx {
    private final rz0 a;
    private final zz0 b;
    private final ww c;
    private final wz0 d;

    public cx(rz0 rz0Var, zz0 zz0Var, ww wwVar, wz0 wz0Var) {
        y45.j(rz0Var, "networksValidator");
        y45.j(zz0Var, "networksMapper");
        y45.j(wwVar, "alertsMapper");
        y45.j(wz0Var, "mediationNetworksStatusMapper");
        this.a = rz0Var;
        this.b = zz0Var;
        this.c = wwVar;
        this.d = wz0Var;
    }

    public final bx a(nx nxVar, rx rxVar) {
        List<qx> listK;
        List<hw> listK2;
        List listK3;
        vw.a aVar;
        Object next;
        rw.a bVar;
        y45.j(nxVar, "localData");
        if (rxVar == null || (listK = rxVar.f()) == null) {
            listK = defpackage.y71.k();
        }
        xw xwVarA = nxVar.a();
        yx yxVarF = nxVar.f();
        gw gwVar = new gw(rxVar != null ? rxVar.g() : null, rxVar != null ? rxVar.e() : null, rxVar != null ? rxVar.d() : null);
        List<qz0> listE = nxVar.e();
        ArrayList arrayListA = this.b.a(listK);
        if (!arrayListA.isEmpty()) {
            listE = arrayListA;
        }
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listE, 10));
        for (qz0 qz0Var : listE) {
            Iterator<T> it = listK.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!y45.e(((qx) next).f(), qz0Var.d()));
            qx qxVar = (qx) next;
            this.a.getClass();
            boolean zA = rz0.a(qz0Var);
            this.d.getClass();
            y45.j(qz0Var, "network");
            List<qz0.c> listB = qz0Var.b();
            if ((listB instanceof Collection) && listB.isEmpty()) {
                bVar = rw.a.C0328a.a;
                break;
            }
            Iterator<T> it2 = listB.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    bVar = rw.a.C0328a.a;
                    break;
                }
                if (!((qz0.c) it2.next()).c()) {
                    List<qz0.c> listB2 = qz0Var.b();
                    if (!(listB2 instanceof Collection) || !listB2.isEmpty()) {
                        Iterator<T> it3 = listB2.iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                bVar = rw.a.c.a;
                                break;
                            }
                            if (((qz0.c) it3.next()).c()) {
                                sz0 sz0Var = sz0.INVALID_MEDIATION_ADAPTER_VERSION;
                                bVar = new rw.a.b();
                                break;
                            }
                        }
                    } else {
                        bVar = rw.a.c.a;
                        break;
                    }
                }
            }
            rw.a aVar2 = bVar;
            String strD = qz0Var.d();
            String strE = qxVar != null ? qxVar.e() : null;
            qz0.c cVar = (qz0.c) defpackage.i81.q0(qz0Var.b());
            String strB = cVar != null ? cVar.b() : null;
            String strD2 = qxVar != null ? qxVar.d() : null;
            String strE2 = qz0Var.e();
            List<qz0.c> listB3 = qz0Var.b();
            ArrayList arrayList2 = new ArrayList(defpackage.z71.v(listB3, 10));
            Iterator<T> it4 = listB3.iterator();
            while (it4.hasNext()) {
                arrayList2.add(((qz0.c) it4.next()).a());
            }
            arrayList.add(new rw(strD, strE, zA, strB, strD2, strE2, aVar2, arrayList2));
        }
        tw twVar = new tw(arrayList);
        ax axVarB = nxVar.b();
        hx hxVarC = nxVar.c();
        if (rxVar == null || (listK2 = rxVar.b()) == null) {
            listK2 = defpackage.y71.k();
        }
        ww wwVar = this.c;
        List<uw> listC = rxVar != null ? rxVar.c() : null;
        wwVar.getClass();
        if (listC != null) {
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : listC) {
                uw uwVar = (uw) obj;
                if (uwVar.b() != null || uwVar.a() != null) {
                    arrayList3.add(obj);
                }
            }
            ArrayList arrayList4 = new ArrayList(defpackage.z71.v(arrayList3, 10));
            Iterator it5 = arrayList3.iterator();
            while (it5.hasNext()) {
                uw uwVar2 = (uw) it5.next();
                String strB2 = uwVar2.b();
                String strA = uwVar2.a();
                vw.a[] aVarArrValues = vw.a.values();
                int length = aVarArrValues.length;
                Iterator it6 = it5;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        aVar = null;
                        break;
                    }
                    aVar = aVarArrValues[i];
                    int i2 = length;
                    uw uwVar3 = uwVar2;
                    if (y45.e(uwVar2.c(), aVar.a())) {
                        break;
                    }
                    i++;
                    uwVar2 = uwVar3;
                    length = i2;
                }
                if (aVar == null) {
                    aVar = vw.a.c;
                }
                arrayList4.add(new vw(strB2, strA, aVar));
                it5 = it6;
            }
            listK3 = arrayList4;
        } else {
            listK3 = defpackage.y71.k();
        }
        return new bx(xwVarA, yxVarF, gwVar, twVar, axVarB, hxVarC, listK2, listK3);
    }
}
