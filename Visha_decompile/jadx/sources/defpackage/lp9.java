package defpackage;

import java.lang.annotation.Annotation;

public final class lp9 implements kp9 {
    public static final kp9 a = new lp9();

    public static Annotation[] a(Annotation[] annotationArr) {
        if (ulb.l(annotationArr, kp9.class)) {
            return annotationArr;
        }
        Annotation[] annotationArr2 = new Annotation[annotationArr.length + 1];
        annotationArr2[0] = a;
        System.arraycopy(annotationArr, 0, annotationArr2, 1, annotationArr.length);
        return annotationArr2;
    }

    @Override
    public Class annotationType() {
        return kp9.class;
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof kp9;
    }

    @Override
    public int hashCode() {
        return 0;
    }

    @Override
    public String toString() {
        return "@" + kp9.class.getName() + "()";
    }
}
