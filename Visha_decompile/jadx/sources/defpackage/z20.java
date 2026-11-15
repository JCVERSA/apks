package defpackage;

import java.util.Arrays;
import org.apache.commons.text.StringSubstitutor;

public final class z20 extends c50 {
    public final Iterable a;
    public final byte[] b;

    public static final class b extends c50.a {
        public Iterable a;
        public byte[] b;

        @Override
        public c50 a() {
            String str = "";
            if (this.a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new z20(this.a, this.b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public c50.a b(Iterable iterable) {
            if (iterable == null) {
                throw new NullPointerException("Null events");
            }
            this.a = iterable;
            return this;
        }

        @Override
        public c50.a c(byte[] bArr) {
            this.b = bArr;
            return this;
        }
    }

    @Override
    public Iterable b() {
        return this.a;
    }

    @Override
    public byte[] c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c50)) {
            return false;
        }
        c50 c50Var = (c50) obj;
        if (this.a.equals(c50Var.b())) {
            if (Arrays.equals(this.b, c50Var instanceof z20 ? ((z20) c50Var).b : c50Var.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.b) ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "BackendRequest{events=" + this.a + ", extras=" + Arrays.toString(this.b) + StringSubstitutor.DEFAULT_VAR_END;
    }

    public z20(Iterable iterable, byte[] bArr) {
        this.a = iterable;
        this.b = bArr;
    }
}
