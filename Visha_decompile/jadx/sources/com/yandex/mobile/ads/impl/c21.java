package com.yandex.mobile.ads.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

public final class c21 extends uy1 {
    private final ag1 m = new ag1();

    @Override
    public final n32 a(byte[] bArr, int i, boolean z) throws p32 {
        hv hvVarA;
        this.m.a(i, bArr);
        ArrayList arrayList = new ArrayList();
        while (this.m.a() > 0) {
            if (this.m.a() < 8) {
                throw new p32("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int iH = this.m.h();
            if (this.m.h() == 1987343459) {
                ag1 ag1Var = this.m;
                int i2 = iH - 8;
                CharSequence charSequenceA = null;
                hv.a aVarA = null;
                while (i2 > 0) {
                    if (i2 < 8) {
                        throw new p32("Incomplete vtt cue box header found.");
                    }
                    int iH2 = ag1Var.h();
                    int iH3 = ag1Var.h();
                    int i3 = iH2 - 8;
                    String strA = f92.a(ag1Var.c(), ag1Var.d(), i3);
                    ag1Var.f(i3);
                    i2 = (i2 - 8) - i3;
                    if (iH3 == 1937011815) {
                        aVarA = ck2.a(strA);
                    } else if (iH3 == 1885436268) {
                        charSequenceA = ck2.a(null, strA.trim(), Collections.emptyList());
                    }
                }
                if (charSequenceA == null) {
                    charSequenceA = "";
                }
                if (aVarA != null) {
                    hvVarA = aVarA.a(charSequenceA).a();
                } else {
                    Pattern pattern = ck2.a;
                    ck2.d dVar = new ck2.d();
                    dVar.c = charSequenceA;
                    hvVarA = dVar.a().a();
                }
                arrayList.add(hvVarA);
            } else {
                this.m.f(iH - 8);
            }
        }
        return new d21(arrayList);
    }
}
