package defpackage;

import java.util.Arrays;

public final class ja2 {
    public static final ja2 a = new ja2();

    public final String a() {
        rh1.a.a();
        laa laaVar = laa.a;
        String strA = laaVar.a("persist.sys.tran.device.name");
        if (j1a.o0(strA)) {
            strA = laaVar.a("ro.product.product.tran.device.name.default");
        }
        if (j1a.o0(strA)) {
            strA = laaVar.a("ro.product.system_ext.tran.device.name.default");
        }
        if (j1a.o0(strA)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = strA.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = strA.charAt(i);
            if (y45.l(cCharAt, 31) <= 0 || y45.l(cCharAt, 127) >= 0) {
                hz9 hz9Var = hz9.a;
                String str = String.format("\\u%04x", Arrays.copyOf(new Object[]{Integer.valueOf(cCharAt)}, 1));
                y45.i(str, "format(...)");
                sb.append(str);
            } else {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }
}
