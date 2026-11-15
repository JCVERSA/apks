package x8;

import com.google.android.datatransport.runtime.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class a {

    private static final a f75130e = new C0939a().b();

    private final e f75131a;

    private final List f75132b;

    private final b f75133c;

    private final String f75134d;

    public static final class C0939a {

        private e f75135a = null;

        private List f75136b = new ArrayList();

        private b f75137c = null;

        private String f75138d = "";

        C0939a() {
        }

        public C0939a a(c cVar) {
            this.f75136b.add(cVar);
            return this;
        }

        public a b() {
            return new a(this.f75135a, Collections.unmodifiableList(this.f75136b), this.f75137c, this.f75138d);
        }

        public C0939a c(String str) {
            this.f75138d = str;
            return this;
        }

        public C0939a d(b bVar) {
            this.f75137c = bVar;
            return this;
        }

        public C0939a e(e eVar) {
            this.f75135a = eVar;
            return this;
        }
    }

    a(e eVar, List list, b bVar, String str) {
        this.f75131a = eVar;
        this.f75132b = list;
        this.f75133c = bVar;
        this.f75134d = str;
    }

    public static C0939a e() {
        return new C0939a();
    }

    public String a() {
        return this.f75134d;
    }

    public b b() {
        return this.f75133c;
    }

    public List c() {
        return this.f75132b;
    }

    public e d() {
        return this.f75131a;
    }

    public byte[] f() {
        return m.a(this);
    }
}
