package retrofit2;

import java.lang.annotation.Annotation;

final class n0 implements m0 {

    private static final m0 f71136b = new n0();

    n0() {
    }

    static Annotation[] a(Annotation[] annotationArr) {
        if (o0.l(annotationArr, m0.class)) {
            return annotationArr;
        }
        Annotation[] annotationArr2 = new Annotation[annotationArr.length + 1];
        annotationArr2[0] = f71136b;
        System.arraycopy(annotationArr, 0, annotationArr2, 1, annotationArr.length);
        return annotationArr2;
    }

    @Override
    public Class annotationType() {
        return m0.class;
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof m0;
    }

    @Override
    public int hashCode() {
        return 0;
    }

    @Override
    public String toString() {
        return "@" + m0.class.getName() + "()";
    }
}
