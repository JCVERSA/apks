package androidx.p009lifecycle.compose;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import androidx.p009lifecycle.u;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import kotlin.Deprecated;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class LocalLifecycleOwnerKt {

    private static final s1 f9273a;

    static {
        Object objM453constructorimpl;
        s1 s1Var;
        try {
            Result.Companion companion = Result.INSTANCE;
            ClassLoader classLoader = u.class.getClassLoader();
            Intrinsics.e(classLoader);
            Method method = classLoader.loadClass("androidx.compose.ui.platform.AndroidCompositionLocals_androidKt").getMethod("getLocalLifecycleOwner", null);
            Annotation[] annotations = method.getAnnotations();
            int length = annotations.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    Object objInvoke = method.invoke(null, null);
                    if (objInvoke instanceof s1) {
                        s1Var = (s1) objInvoke;
                        break;
                    }
                } else if (!(annotations[i10] instanceof Deprecated)) {
                    i10++;
                }
                s1Var = null;
                break;
            }
            objM453constructorimpl = Result.m453constructorimpl(s1Var);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        s1 s1VarF = (s1) (Result.m459isFailureimpl(objM453constructorimpl) ? null : objM453constructorimpl);
        if (s1VarF == null) {
            s1VarF = CompositionLocalKt.f(new Function0<u>() {
                @Override
                public final u invoke() {
                    throw new IllegalStateException("CompositionLocal LocalLifecycleOwner not present");
                }
            });
        }
        f9273a = s1VarF;
    }

    public static final s1 a() {
        return f9273a;
    }
}
