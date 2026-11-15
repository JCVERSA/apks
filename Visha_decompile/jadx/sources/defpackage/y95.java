package defpackage;

import java.util.List;
import kotlinx.serialization.json.JsonElementSerializer;
import org.mozilla.javascript.ES6Iterator;

public final class y95 implements ef5 {
    public static final y95 a = new y95();
    public static final kotlinx.serialization.descriptors.a b = a.b;

    public static final class a implements kotlinx.serialization.descriptors.a {
        public static final a b = new a();
        public static final String c = "kotlinx.serialization.json.JsonArray";
        public final kotlinx.serialization.descriptors.a a = qn0.h(JsonElementSerializer.a).getDescriptor();

        @Override
        public boolean b() {
            return this.a.b();
        }

        @Override
        public int c(String str) {
            y45.j(str, "name");
            return this.a.c(str);
        }

        @Override
        public kotlinx.serialization.descriptors.a d(int i) {
            return this.a.d(i);
        }

        @Override
        public int e() {
            return this.a.e();
        }

        @Override
        public String f(int i) {
            return this.a.f(i);
        }

        @Override
        public List g(int i) {
            return this.a.g(i);
        }

        @Override
        public List getAnnotations() {
            return this.a.getAnnotations();
        }

        @Override
        public id9 getKind() {
            return this.a.getKind();
        }

        @Override
        public String h() {
            return c;
        }

        @Override
        public boolean i(int i) {
            return this.a.i(i);
        }

        @Override
        public boolean isInline() {
            return this.a.isInline();
        }
    }

    @Override
    public kotlinx.serialization.json.a deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        ma5.g(hu1Var);
        return new kotlinx.serialization.json.a((List) qn0.h(JsonElementSerializer.a).deserialize(hu1Var));
    }

    @Override
    public void serialize(ca3 ca3Var, kotlinx.serialization.json.a aVar) {
        y45.j(ca3Var, "encoder");
        y45.j(aVar, ES6Iterator.VALUE_PROPERTY);
        ma5.h(ca3Var);
        qn0.h(JsonElementSerializer.a).serialize(ca3Var, aVar);
    }

    @Override
    public kotlinx.serialization.descriptors.a getDescriptor() {
        return b;
    }
}
