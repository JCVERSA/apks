package defpackage;

import kotlin.Result;
import kotlin.c;

public abstract class oh {
    public static final int a;

    static {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            y45.i(property, "getProperty(\"kotlinx.ser…lization.json.pool.size\")");
            objM279constructorimpl = Result.m279constructorimpl(f1a.r(property));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        Integer num = (Integer) objM279constructorimpl;
        a = num != null ? num.intValue() : 2097152;
    }
}
