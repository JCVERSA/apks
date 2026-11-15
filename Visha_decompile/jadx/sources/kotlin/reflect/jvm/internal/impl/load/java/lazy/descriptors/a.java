package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.by6;
import defpackage.c85;
import defpackage.m75;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import java.util.Collection;
import java.util.List;
import java.util.Set;

public interface a {

    public static final class C0386a implements a {
        public static final C0386a a = new C0386a();

        @Override
        public Set a() {
            return ye9.f();
        }

        @Override
        public m75 b(by6 by6Var) {
            y45.j(by6Var, "name");
            return null;
        }

        @Override
        public Set c() {
            return ye9.f();
        }

        @Override
        public Set e() {
            return ye9.f();
        }

        @Override
        public c85 f(by6 by6Var) {
            y45.j(by6Var, "name");
            return null;
        }

        @Override
        public List d(by6 by6Var) {
            y45.j(by6Var, "name");
            return y71.k();
        }
    }

    Set a();

    m75 b(by6 by6Var);

    Set c();

    Collection d(by6 by6Var);

    Set e();

    c85 f(by6 by6Var);
}
