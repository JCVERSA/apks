package defpackage;

import java.util.List;
import kotlin.b;

public abstract class ma5 {

    public static final class a implements kotlinx.serialization.descriptors.a {
        public final yi5 a;

        public a(c74 c74Var) {
            this.a = b.a(c74Var);
        }

        public final kotlinx.serialization.descriptors.a a() {
            return (kotlinx.serialization.descriptors.a) this.a.getValue();
        }

        @Override
        public boolean b() {
            return kotlinx.serialization.descriptors.a.C0417a.c(this);
        }

        @Override
        public int c(String str) {
            y45.j(str, "name");
            return a().c(str);
        }

        @Override
        public kotlinx.serialization.descriptors.a d(int i) {
            return a().d(i);
        }

        @Override
        public int e() {
            return a().e();
        }

        @Override
        public String f(int i) {
            return a().f(i);
        }

        @Override
        public List g(int i) {
            return a().g(i);
        }

        @Override
        public List getAnnotations() {
            return kotlinx.serialization.descriptors.a.C0417a.a(this);
        }

        @Override
        public id9 getKind() {
            return a().getKind();
        }

        @Override
        public String h() {
            return a().h();
        }

        @Override
        public boolean i(int i) {
            return a().i(i);
        }

        @Override
        public boolean isInline() {
            return kotlinx.serialization.descriptors.a.C0417a.b(this);
        }
    }

    public static final ia5 d(hu1 hu1Var) {
        y45.j(hu1Var, "<this>");
        ia5 ia5Var = hu1Var instanceof ia5 ? (ia5) hu1Var : null;
        if (ia5Var != null) {
            return ia5Var;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got " + xq8.b(hu1Var.getClass()));
    }

    public static final na5 e(ca3 ca3Var) {
        y45.j(ca3Var, "<this>");
        na5 na5Var = ca3Var instanceof na5 ? (na5) ca3Var : null;
        if (na5Var != null) {
            return na5Var;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got " + xq8.b(ca3Var.getClass()));
    }

    public static final kotlinx.serialization.descriptors.a f(c74 c74Var) {
        return new a(c74Var);
    }

    public static final void g(hu1 hu1Var) {
        d(hu1Var);
    }

    public static final void h(ca3 ca3Var) {
        e(ca3Var);
    }
}
