package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public class C1823gQ implements PZ {
    public final C06866k A00;
    public final PU A01;

    public C1823gQ(C06866k c06866k, PU pu) {
        this.A00 = c06866k;
        this.A01 = pu;
    }

    @Override
    public final Object A58(int i) {
        PS compatInfo = this.A01.A00(i);
        if (compatInfo == null) {
            return null;
        }
        return compatInfo.A0M();
    }

    @Override
    public final List<Object> A6Q(String str, int i) {
        List<PS> listA03 = this.A01.A03(str, i);
        if (listA03 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int infoCount = listA03.size();
        for (int i2 = 0; i2 < infoCount; i2++) {
            arrayList.add(listA03.get(i2).A0M());
        }
        return arrayList;
    }

    @Override
    public final Object A6R(int i) {
        PS compatInfo = this.A01.A01(i);
        if (compatInfo == null) {
            return null;
        }
        return compatInfo.A0M();
    }

    @Override
    public final boolean AGB(int i, int i2, Bundle bundle) {
        return this.A01.A04(i, i2, bundle);
    }
}
