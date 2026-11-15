package defpackage;

import java.lang.annotation.Annotation;

public final class rp8 extends qp8 implements m65 {
    public final Annotation c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rp8(by6 by6Var, Annotation annotation) {
        super(by6Var, null);
        y45.j(annotation, "annotation");
        this.c = annotation;
    }

    @Override
    public k65 a() {
        return new pp8(this.c);
    }
}
