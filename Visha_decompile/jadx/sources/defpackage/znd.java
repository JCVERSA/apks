package defpackage;

import java.text.SimpleDateFormat;
import java.util.Date;

public abstract class znd {
    public static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMddHHmmss");

    public static String a(SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat == null) {
            simpleDateFormat = a;
        }
        return simpleDateFormat.format(new Date(System.currentTimeMillis()));
    }
}
