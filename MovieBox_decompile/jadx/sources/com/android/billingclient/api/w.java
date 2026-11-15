package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzaf;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public final class w {

    private final zzaf f18580a;

    public static class a {

        private zzaf f18581a;

        a(h1 h1Var) {
        }

        public w a() {
            return new w(this, null);
        }

        public a b(List list) {
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("Product list cannot be empty.");
            }
            HashSet hashSet = new HashSet();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (!"play_pass_subs".equals(bVar.c())) {
                    hashSet.add(bVar.c());
                }
            }
            if (hashSet.size() > 1) {
                throw new IllegalArgumentException("All products should be of the same product type.");
            }
            this.f18581a = zzaf.zzj(list);
            return this;
        }
    }

    public static class b {

        private final String f18582a;

        private final String f18583b;

        public static class a {

            private String f18584a;

            private String f18585b;

            a(i1 i1Var) {
            }

            public b a() {
                if ("first_party".equals(this.f18585b)) {
                    throw new IllegalArgumentException("Serialized doc id must be provided for first party products.");
                }
                if (this.f18584a == null) {
                    throw new IllegalArgumentException("Product id must be provided.");
                }
                if (this.f18585b != null) {
                    return new b(this, null);
                }
                throw new IllegalArgumentException("Product type must be provided.");
            }

            public a b(String str) {
                this.f18584a = str;
                return this;
            }

            public a c(String str) {
                this.f18585b = str;
                return this;
            }
        }

        b(a aVar, j1 j1Var) {
            this.f18582a = aVar.f18584a;
            this.f18583b = aVar.f18585b;
        }

        public static a a() {
            return new a(null);
        }

        public final String b() {
            return this.f18582a;
        }

        public final String c() {
            return this.f18583b;
        }
    }

    w(a aVar, k1 k1Var) {
        this.f18580a = aVar.f18581a;
    }

    public static a a() {
        return new a(null);
    }

    public final zzaf b() {
        return this.f18580a;
    }

    public final String c() {
        return ((b) this.f18580a.get(0)).c();
    }
}
