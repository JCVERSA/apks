package defpackage;

import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonObject;
import org.mozilla.javascript.ES6Iterator;

public final class jb5 implements ef5 {
    public static final jb5 a = new jb5();
    public static final kotlinx.serialization.descriptors.a b = a.b;

    public static final class a implements kotlinx.serialization.descriptors.a {
        public static final a b = new a();
        public static final String c = "kotlinx.serialization.json.JsonObject";
        public final kotlinx.serialization.descriptors.a a = qn0.k(qn0.D(hz9.a), JsonElementSerializer.a).getDescriptor();

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
    public JsonObject deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        ma5.g(hu1Var);
        return new JsonObject((Map) qn0.k(qn0.D(hz9.a), JsonElementSerializer.a).deserialize(hu1Var));
    }

    @Override
    public void serialize(ca3 ca3Var, JsonObject jsonObject) {
        y45.j(ca3Var, "encoder");
        y45.j(jsonObject, ES6Iterator.VALUE_PROPERTY);
        ma5.h(ca3Var);
        qn0.k(qn0.D(hz9.a), JsonElementSerializer.a).serialize(ca3Var, jsonObject);
    }

    @Override
    public kotlinx.serialization.descriptors.a getDescriptor() {
        return b;
    }
}
