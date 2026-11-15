package com.facebook.ads.redexgen.core;

public class We implements TV {
    public final String[] A00;

    public We(String[] strArr) {
        this.A00 = strArr;
    }

    @Override
    public final boolean A32(String str) {
        for (String str2 : this.A00) {
            if (str2.equals(str)) {
                return false;
            }
        }
        return true;
    }
}
