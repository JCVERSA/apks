package defpackage;

import com.google.android.datatransport.Priority;
import java.util.Arrays;

public final class p30 extends a9b {
    public final String a;
    public final byte[] b;
    public final Priority c;

    public static final class b extends a9b.a {
        public String a;
        public byte[] b;
        public Priority c;

        @Override
        public a9b a() {
            String str = "";
            if (this.a == null) {
                str = " backendName";
            }
            if (this.c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new p30(this.a, this.b, this.c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public a9b.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null backendName");
            }
            this.a = str;
            return this;
        }

        @Override
        public a9b.a c(byte[] bArr) {
            this.b = bArr;
            return this;
        }

        @Override
        public a9b.a d(Priority priority) {
            if (priority == null) {
                throw new NullPointerException("Null priority");
            }
            this.c = priority;
            return this;
        }
    }

    @Override
    public String b() {
        return this.a;
    }

    @Override
    public byte[] c() {
        return this.b;
    }

    @Override
    public Priority d() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a9b)) {
            return false;
        }
        a9b a9bVar = (a9b) obj;
        if (this.a.equals(a9bVar.b())) {
            if (Arrays.equals(this.b, a9bVar instanceof p30 ? ((p30) a9bVar).b : a9bVar.c()) && this.c.equals(a9bVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.c.hashCode() ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b)) * 1000003);
    }

    public p30(String str, byte[] bArr, Priority priority) {
        this.a = str;
        this.b = bArr;
        this.c = priority;
    }
}
