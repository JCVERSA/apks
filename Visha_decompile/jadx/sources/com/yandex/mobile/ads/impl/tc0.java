package com.yandex.mobile.ads.impl;

import android.util.Base64;
import defpackage.y45;

public final class tc0 {
    public final String a() {
        byte[] bArrDecode = Base64.decode("QVNVU19aMDBBRA==", 0);
        y45.i(bArrDecode, "decode(...)");
        return new String(bArrDecode, defpackage.qv0.b);
    }
}
