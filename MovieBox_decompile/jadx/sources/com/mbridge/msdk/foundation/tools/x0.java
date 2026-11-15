package com.mbridge.msdk.foundation.tools;

import java.util.LinkedHashSet;
import java.util.Set;

class x0 implements FastKV.b<Set<String>> {

    static final x0 f34998a = new x0();

    private x0() {
    }

    @Override
    public Set<String> a(byte[] bArr, int i10, int i11) {
        int i12;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (i11 > 0) {
            z zVar = new z(bArr, i10);
            int i13 = i10 + i11;
            while (true) {
                i12 = zVar.f35000b;
                if (i12 >= i13) {
                    break;
                }
                linkedHashSet.add(zVar.e(zVar.g()));
            }
            if (i12 != i13) {
                throw new IllegalArgumentException("Invalid String set");
            }
        }
        return linkedHashSet;
    }

    @Override
    public byte[] a(Set<String> set) {
        if (set.isEmpty()) {
            return new byte[0];
        }
        int size = set.size();
        int[] iArr = new int[size];
        String[] strArr = new String[size];
        int iF = 0;
        int i10 = 0;
        for (String str : set) {
            if (str == null) {
                iF += 5;
                iArr[i10] = -1;
            } else {
                int iB = z.b(str);
                strArr[i10] = str;
                iArr[i10] = iB;
                iF += z.f(iB) + iB;
            }
            i10++;
        }
        z zVar = new z(iF);
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = iArr[i11];
            zVar.h(i12);
            if (i12 >= 0) {
                zVar.c(strArr[i11]);
            }
        }
        return zVar.f34999a;
    }

    @Override
    public String a() {
        return "StringSet";
    }
}
