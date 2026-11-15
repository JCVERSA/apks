package com.facebook.ads.redexgen.core;

import java.util.Comparator;

public class C1173Px implements Comparator<C1174Py> {
    public static String[] A00 = {"RlDlwXS4AA55AOqx8zmN7uoMQ4", "FglEZvMIBCB6z", "AxTekMmYmWDdJoDxuavW255zDNKNRAPE", "pDpvZxom4p5NfzWuwibdxFCyrgD8wKok", "A10HdUhRMRjxQ62diLF5JQ0qPoODY0oj", "HiaacAz8KFEe90RKULVJfn7mD15J7Igj", "NHRqTP3H9N0qm1ewn1pnzRz0iIE8sZVk", "d5VyinGL3JDhuqMz7l90vG32rgbNgkhM"};

    @Override
    public final int compare(C1174Py c1174Py, C1174Py c1174Py2) {
        if ((c1174Py.A03 == null) != (c1174Py2.A03 == null)) {
            C06826g c06826g = c1174Py.A03;
            if (A00[1].length() == 18) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[7] = "WTdcF3CBINcFCy4xHoe1W3dXr7HqLtJl";
            strArr[3] = "sYvRb4Jfa5Xca5GLbtDoWdBBrccl9kaR";
            return c06826g == null ? 1 : -1;
        }
        if (c1174Py.A04 != c1174Py2.A04) {
            return c1174Py.A04 ? -1 : 1;
        }
        int i = c1174Py2.A02 - c1174Py.A02;
        if (i != 0) {
            return i;
        }
        int i2 = c1174Py.A00;
        int deltaViewVelocity = c1174Py2.A00;
        int i3 = i2 - deltaViewVelocity;
        if (i3 != 0) {
            return i3;
        }
        return 0;
    }
}
