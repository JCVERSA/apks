package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import okhttp3.Request;

public abstract class kt8 {
    public static final boolean a(Request request) {
        y45.j(request, "<this>");
        i55 i55Var = (i55) request.tag(i55.class);
        Annotation annotation = null;
        Method methodA = i55Var != null ? i55Var.a() : null;
        if (methodA == null) {
            return false;
        }
        Annotation[] annotations = methodA.getAnnotations();
        y45.i(annotations, "getAnnotations(...)");
        for (Annotation annotation2 : annotations) {
            if (annotation2 instanceof qd) {
                annotation = annotation2;
                break;
            }
        }
        return annotation != null;
    }

    public static final boolean b(Request request) {
        y45.j(request, "<this>");
        i55 i55Var = (i55) request.tag(i55.class);
        Annotation annotation = null;
        Method methodA = i55Var != null ? i55Var.a() : null;
        if (methodA == null) {
            return true;
        }
        Annotation[] annotations = methodA.getAnnotations();
        y45.i(annotations, "getAnnotations(...)");
        for (Annotation annotation2 : annotations) {
            if (annotation2 instanceof ma3) {
                annotation = annotation2;
                break;
            }
        }
        if (annotation == null) {
            return true;
        }
        return ((ma3) annotation).value();
    }
}
