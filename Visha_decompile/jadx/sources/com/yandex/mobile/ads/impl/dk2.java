package com.yandex.mobile.ads.impl;

import android.text.TextUtils;
import java.util.ArrayList;

public final class dk2 extends uy1 {
    private final ag1 m = new ag1();
    private final zj2 n = new zj2();

    @Override
    public final n32 a(byte[] bArr, int i, boolean z) throws p32 {
        bk2 bk2VarA;
        this.m.a(i, bArr);
        ArrayList arrayList = new ArrayList();
        try {
            ag1 ag1Var = this.m;
            int i2 = ek2.a;
            int iD = ag1Var.d();
            String strJ = ag1Var.j();
            if (strJ == null || !strJ.startsWith("WEBVTT")) {
                ag1Var.e(iD);
                throw eg1.a("Expected WEBVTT. Got " + ag1Var.j(), (Exception) null);
            }
            while (!TextUtils.isEmpty(this.m.j())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                ag1 ag1Var2 = this.m;
                int iD2 = 0;
                byte b = -1;
                while (b == -1) {
                    iD2 = ag1Var2.d();
                    String strJ2 = ag1Var2.j();
                    if (strJ2 == null) {
                        b = 0;
                    } else if ("STYLE".equals(strJ2)) {
                        b = 2;
                    } else {
                        b = strJ2.startsWith("NOTE") ? (byte) 1 : (byte) 3;
                    }
                }
                ag1Var2.e(iD2);
                if (b == 0) {
                    return new fk2(arrayList2);
                }
                if (b == 1) {
                    while (!TextUtils.isEmpty(this.m.j())) {
                    }
                } else if (b == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new p32("A style block was found after the first cue.");
                    }
                    this.m.j();
                    arrayList.addAll(this.n.a(this.m));
                } else if (b == 3 && (bk2VarA = ck2.a(this.m, arrayList)) != null) {
                    arrayList2.add(bk2VarA);
                }
            }
        } catch (eg1 e) {
            throw new p32(e);
        }
    }
}
