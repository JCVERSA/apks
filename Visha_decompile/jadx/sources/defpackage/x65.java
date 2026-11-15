package defpackage;

import java.util.Arrays;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

public interface x65 {
    y75 a(o54 o54Var, boolean z);

    s65 b(a aVar);

    Set c(o54 o54Var);

    public static final class a {
        public final xw0 a;
        public final byte[] b;
        public final s65 c;

        public a(xw0 xw0Var, byte[] bArr, s65 s65Var) {
            y45.j(xw0Var, "classId");
            this.a = xw0Var;
            this.b = bArr;
            this.c = s65Var;
        }

        public final xw0 a() {
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
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b) && y45.e(this.c, aVar.c);
        }

        public int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            byte[] bArr = this.b;
            int iHashCode2 = (iHashCode + (bArr == null ? 0 : Arrays.hashCode(bArr))) * 31;
            s65 s65Var = this.c;
            return iHashCode2 + (s65Var != null ? s65Var.hashCode() : 0);
        }

        public String toString() {
            return "Request(classId=" + this.a + ", previouslyFoundClassFileContent=" + Arrays.toString(this.b) + ", outerClass=" + this.c + ')';
        }

        public a(xw0 xw0Var, byte[] bArr, s65 s65Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(xw0Var, (i & 2) != 0 ? null : bArr, (i & 4) != 0 ? null : s65Var);
        }
    }
}
