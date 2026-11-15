package defpackage;

import java.lang.reflect.Field;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import org.apache.commons.io.IOUtils;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

public abstract class ot1 {
    public static final void a(int i, int i2) {
        if (i2 <= i) {
            return;
        }
        throw new IllegalStateException(("Debug metadata version mismatch. Expected: " + i + ", got " + i2 + ". Please update the Kotlin standard library.").toString());
    }

    public static final nt1 b(BaseContinuationImpl baseContinuationImpl) {
        return (nt1) baseContinuationImpl.getClass().getAnnotation(nt1.class);
    }

    public static final int c(BaseContinuationImpl baseContinuationImpl) {
        try {
            Field declaredField = baseContinuationImpl.getClass().getDeclaredField(AnnotatedPrivateKey.LABEL);
            declaredField.setAccessible(true);
            Object obj = declaredField.get(baseContinuationImpl);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            return (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static final StackTraceElement d(BaseContinuationImpl baseContinuationImpl) {
        String strC;
        y45.j(baseContinuationImpl, "<this>");
        nt1 nt1VarB = b(baseContinuationImpl);
        if (nt1VarB == null) {
            return null;
        }
        a(1, nt1VarB.v());
        int iC = c(baseContinuationImpl);
        int i = iC < 0 ? -1 : nt1VarB.l()[iC];
        String strB = sq6.a.b(baseContinuationImpl);
        if (strB == null) {
            strC = nt1VarB.c();
        } else {
            strC = strB + IOUtils.DIR_SEPARATOR_UNIX + nt1VarB.c();
        }
        return new StackTraceElement(strC, nt1VarB.m(), nt1VarB.f(), i);
    }
}
