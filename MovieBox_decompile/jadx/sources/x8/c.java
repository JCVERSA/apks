package x8;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class c {

    private static final c f75142c = new a().a();

    private final String f75143a;

    private final List f75144b;

    public static final class a {

        private String f75145a = "";

        private List f75146b = new ArrayList();

        a() {
        }

        public c a() {
            return new c(this.f75145a, Collections.unmodifiableList(this.f75146b));
        }

        public a b(List list) {
            this.f75146b = list;
            return this;
        }

        public a c(String str) {
            this.f75145a = str;
            return this;
        }
    }

    c(String str, List list) {
        this.f75143a = str;
        this.f75144b = list;
    }

    public static a c() {
        return new a();
    }

    public List a() {
        return this.f75144b;
    }

    public String b() {
        return this.f75143a;
    }
}
