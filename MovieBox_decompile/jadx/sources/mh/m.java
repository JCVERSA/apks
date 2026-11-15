package mh;

import java.lang.reflect.Field;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

public final class m {

    public static final m f66476a = new m();

    private m() {
    }

    public final Object a(Object instance, String fieldName) {
        Object objM453constructorimpl;
        Intrinsics.h(instance, "instance");
        Intrinsics.h(fieldName, "fieldName");
        try {
            Result.Companion companion = Result.INSTANCE;
            Field declaredField = instance.getClass().getDeclaredField(fieldName);
            declaredField.setAccessible(true);
            objM453constructorimpl = Result.m453constructorimpl(declaredField.get(instance));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m459isFailureimpl(objM453constructorimpl)) {
            return null;
        }
        return objM453constructorimpl;
    }
}
