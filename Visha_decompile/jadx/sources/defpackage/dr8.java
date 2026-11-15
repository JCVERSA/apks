package defpackage;

import java.lang.reflect.Field;
import kotlin.Result;
import kotlin.c;

public final class dr8 {
    public static final dr8 a = new dr8();

    public final Object a(Object obj, String str) {
        Object objM279constructorimpl;
        y45.j(obj, "instance");
        y45.j(str, "fieldName");
        try {
            Result.Companion companion = Result.INSTANCE;
            Field declaredField = obj.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            objM279constructorimpl = Result.m279constructorimpl(declaredField.get(obj));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            return null;
        }
        return objM279constructorimpl;
    }
}
