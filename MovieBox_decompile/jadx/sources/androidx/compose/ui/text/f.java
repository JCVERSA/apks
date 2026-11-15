package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class f {

    public static final class a extends f {

        private final String f5789a;

        private final a0 f5790b;

        public a(String str, a0 a0Var, g gVar) {
            super(null);
            this.f5789a = str;
            this.f5790b = a0Var;
        }

        @Override
        public g a() {
            return null;
        }

        public a0 b() {
            return this.f5790b;
        }

        public final String c() {
            return this.f5789a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!Intrinsics.c(this.f5789a, aVar.f5789a) || !Intrinsics.c(b(), aVar.b())) {
                return false;
            }
            a();
            aVar.a();
            return Intrinsics.c(null, null);
        }

        public int hashCode() {
            int iHashCode = this.f5789a.hashCode() * 31;
            a0 a0VarB = b();
            int iHashCode2 = (iHashCode + (a0VarB != null ? a0VarB.hashCode() : 0)) * 31;
            a();
            return iHashCode2;
        }

        public String toString() {
            return "LinkAnnotation.Clickable(tag=" + this.f5789a + ')';
        }
    }

    public static final class b extends f {

        private final String f5791a;

        private final a0 f5792b;

        public b(String str, a0 a0Var, g gVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i10 & 2) != 0 ? null : a0Var, (i10 & 4) != 0 ? null : gVar);
        }

        @Override
        public g a() {
            return null;
        }

        public a0 b() {
            return this.f5792b;
        }

        public final String c() {
            return this.f5791a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (!Intrinsics.c(this.f5791a, bVar.f5791a) || !Intrinsics.c(b(), bVar.b())) {
                return false;
            }
            a();
            bVar.a();
            return Intrinsics.c(null, null);
        }

        public int hashCode() {
            int iHashCode = this.f5791a.hashCode() * 31;
            a0 a0VarB = b();
            int iHashCode2 = (iHashCode + (a0VarB != null ? a0VarB.hashCode() : 0)) * 31;
            a();
            return iHashCode2;
        }

        public String toString() {
            return "LinkAnnotation.Url(url=" + this.f5791a + ')';
        }

        public b(String str, a0 a0Var, g gVar) {
            super(null);
            this.f5791a = str;
            this.f5792b = a0Var;
        }
    }

    public f(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract g a();

    private f() {
    }
}
