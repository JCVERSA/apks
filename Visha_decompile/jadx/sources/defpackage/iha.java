package defpackage;

import com.airbnb.lottie.model.DocumentData;
import java.util.List;

public class iha extends eg5 {

    public class a extends iu5 {
        public final bt5 d;
        public final iu5 e;
        public final DocumentData f;

        public a(bt5 bt5Var, iu5 iu5Var, DocumentData documentData) {
            this.d = bt5Var;
            this.e = iu5Var;
            this.f = documentData;
        }

        @Override
        public DocumentData a(bt5 bt5Var) {
            this.d.h(bt5Var.f(), bt5Var.a(), ((DocumentData) bt5Var.g()).a, ((DocumentData) bt5Var.b()).a, bt5Var.d(), bt5Var.c(), bt5Var.e());
            String str = (String) this.e.a(this.d);
            DocumentData documentData = (DocumentData) (bt5Var.c() == 1.0f ? bt5Var.b() : bt5Var.g());
            this.f.a(str, documentData.b, documentData.c, documentData.d, documentData.e, documentData.f, documentData.g, documentData.h, documentData.i, documentData.j, documentData.k, documentData.l, documentData.m);
            return this.f;
        }
    }

    public iha(List list) {
        super(list);
    }

    @Override
    public DocumentData i(dg5 dg5Var, float f) {
        Object obj;
        iu5 iu5Var = this.e;
        if (iu5Var == null) {
            return (f != 1.0f || (obj = dg5Var.c) == null) ? (DocumentData) dg5Var.b : (DocumentData) obj;
        }
        float f2 = dg5Var.g;
        Float f3 = dg5Var.h;
        float fFloatValue = f3 == null ? Float.MAX_VALUE : f3.floatValue();
        Object obj2 = dg5Var.b;
        DocumentData documentData = (DocumentData) obj2;
        Object obj3 = dg5Var.c;
        return (DocumentData) iu5Var.b(f2, fFloatValue, documentData, obj3 == null ? (DocumentData) obj2 : (DocumentData) obj3, f, d(), f());
    }

    public void r(iu5 iu5Var) {
        super.o(new a(new bt5(), iu5Var, new DocumentData()));
    }
}
