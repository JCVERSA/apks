package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class id5 {

    public static final class a extends id5 {
        public final String a;
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, String str2) {
            super(null);
            y45.j(str, "name");
            y45.j(str2, "desc");
            this.a = str;
            this.b = str2;
        }

        @Override
        public String a() {
            return c() + ':' + b();
        }

        @Override
        public String b() {
            return this.b;
        }

        @Override
        public String c() {
            return this.a;
        }

        public final String d() {
            return this.a;
        }

        public final String e() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }
    }

    public static final class b extends id5 {
        public final String a;
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, String str2) {
            super(null);
            y45.j(str, "name");
            y45.j(str2, "desc");
            this.a = str;
            this.b = str2;
        }

        @Override
        public String a() {
            return c() + b();
        }

        @Override
        public String b() {
            return this.b;
        }

        @Override
        public String c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(this.a, bVar.a) && y45.e(this.b, bVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }
    }

    public id5(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String a();

    public abstract String b();

    public abstract String c();

    public final String toString() {
        return a();
    }

    public id5() {
    }
}
