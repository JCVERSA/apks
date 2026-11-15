package com.yandex.div.storage;

import defpackage.e74;
import defpackage.y45;
import defpackage.ze3;
import java.util.List;
import java.util.Set;

public interface b {

    public static class a {
        public final List a;
        public final List b;

        public a(List list, List list2) {
            y45.j(list, "restoredData");
            y45.j(list2, "errors");
            this.a = list;
            this.b = list2;
        }

        public final List a() {
            return d();
        }

        public final List b() {
            return c();
        }

        public List c() {
            return this.b;
        }

        public List d() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(d(), aVar.d()) && y45.e(c(), aVar.c());
        }

        public int hashCode() {
            return (d().hashCode() * 31) + c().hashCode();
        }

        public String toString() {
            return "LoadDataResult(restoredData=" + d() + ", errors=" + c() + ')';
        }
    }

    public static final class C0306b {
        public final Set a;
        public final List b;

        public C0306b(Set set, List list) {
            y45.j(set, "ids");
            y45.j(list, "errors");
            this.a = set;
            this.b = list;
        }

        public final Set a() {
            return this.a;
        }

        public final List b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0306b)) {
                return false;
            }
            C0306b c0306b = (C0306b) obj;
            return y45.e(this.a, c0306b.a) && y45.e(this.b, c0306b.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "RemoveResult(ids=" + this.a + ", errors=" + this.b + ')';
        }
    }

    a a(Set set);

    C0306b b(e74 e74Var);

    ze3 c(List list, DivDataRepository.ActionOnError actionOnError);
}
