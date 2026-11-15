package defpackage;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

public abstract class tp8 {
    /* JADX WARN: Code duplicated, block: B:11:0x002e  */
    /* JADX WARN: Code duplicated, block: B:15:? A[RETURN, SYNTHETIC] */
    public static final pp8 a(Annotation[] annotationArr, o54 o54Var) {
        y45.j(annotationArr, "<this>");
        y45.j(o54Var, "fqName");
        for (Annotation annotation : annotationArr) {
            if (y45.e(ReflectClassUtilKt.a(ed5.b(ed5.a(annotation))).b(), o54Var)) {
                if (annotation != null) {
                    return new pp8(annotation);
                }
                return null;
            }
        }
        annotation = null;
        if (annotation != null) {
            return new pp8(annotation);
        }
        return null;
    }

    public static final List b(Annotation[] annotationArr) {
        y45.j(annotationArr, "<this>");
        ArrayList arrayList = new ArrayList(annotationArr.length);
        for (Annotation annotation : annotationArr) {
            arrayList.add(new pp8(annotation));
        }
        return arrayList;
    }
}
