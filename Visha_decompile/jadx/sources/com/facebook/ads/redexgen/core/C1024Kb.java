package com.facebook.ads.redexgen.core;

import java.util.Collections;
import java.util.List;

public final class C1024Kb {
    public final int A00;
    public final String A01;
    public final List<C1023Ka> A02;
    public final byte[] A03;

    public C1024Kb(int i, String str, List<C1023Ka> list, byte[] bArr) {
        List<C1023Ka> listUnmodifiableList;
        this.A00 = i;
        this.A01 = str;
        if (list == null) {
            listUnmodifiableList = Collections.emptyList();
        } else {
            listUnmodifiableList = Collections.unmodifiableList(list);
        }
        this.A02 = listUnmodifiableList;
        this.A03 = bArr;
    }
}
