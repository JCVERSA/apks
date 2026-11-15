package defpackage;

import android.util.Base64;

public final class b3d implements nw4 {
    public static final b3d a = new b3d();

    @Override
    public final byte[] a(int i) {
        if (i == 1) {
            byte[] bArrDecode = Base64.decode(nw4.a.a(this), 0);
            y45.i(bArrDecode, "decode(ImportAesTag, Base64.DEFAULT)");
            return bArrDecode;
        }
        if (i != 2) {
            return new byte[0];
        }
        byte[] bArrDecode2 = Base64.decode(nw4.a.b(this), 0);
        y45.i(bArrDecode2, "decode(ImportHmacTag, Base64.DEFAULT)");
        return bArrDecode2;
    }
}
