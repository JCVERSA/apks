package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.IOException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import javax.net.ssl.SSLSocketFactory;

public final class li0 extends nk {
    private final SSLSocketFactory a;
    private final ke1 b;

    public li0(t82 t82Var, SSLSocketFactory sSLSocketFactory) {
        this.a = sSLSocketFactory;
        this.b = new ke1(t82Var);
    }

    @Override
    public final ci0 a(up1<?> up1Var, Map<String, String> map) throws NoSuchAlgorithmException, IOException, KeyStoreException, ai {
        y45.j(up1Var, Progress.REQUEST);
        y45.j(map, "additionalHeaders");
        int iJ = up1Var.j();
        int i = ge1.c;
        fe1 fe1VarA = ge1.a(iJ, iJ, this.a);
        vp1 vp1VarA = this.b.a(up1Var, map);
        y45.j(vp1VarA, Progress.REQUEST);
        vq1 vq1VarB = new zn1(fe1VarA, vp1VarA, false).b();
        int iD = vq1VarB.d();
        TreeMap treeMapC = vq1VarB.g().c();
        y45.j(treeMapC, "requestHeaders");
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : treeMapC.entrySet()) {
            String str = (String) entry.getKey();
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                arrayList.add(new kf0(str, (String) it.next()));
            }
        }
        if (up1Var.f() == 4 || ((100 <= iD && iD < 200) || iD == 204 || iD == 304)) {
            return new ci0(iD, arrayList, -1, null);
        }
        zq1 zq1VarA = vq1VarB.a();
        int iA = zq1VarA != null ? (int) zq1VarA.a() : 0;
        y45.j(vq1VarB, "response");
        zq1 zq1VarA2 = vq1VarB.a();
        return new ci0(iD, arrayList, iA, zq1VarA2 != null ? zq1VarA2.c().inputStream() : null);
    }
}
