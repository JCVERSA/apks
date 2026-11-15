package v8;

import java.util.Arrays;

final class a extends e {

    private final Iterable f73461a;

    private final byte[] f73462b;

    static final class b extends e.a {

        private Iterable f73463a;

        private byte[] f73464b;

        b() {
        }

        @Override
        public e a() {
            String str = "";
            if (this.f73463a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.f73463a, this.f73464b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public e.a b(Iterable iterable) {
            if (iterable == null) {
                throw new NullPointerException("Null events");
            }
            this.f73463a = iterable;
            return this;
        }

        @Override
        public e.a c(byte[] bArr) {
            this.f73464b = bArr;
            return this;
        }
    }

    @Override
    public Iterable b() {
        return this.f73461a;
    }

    @Override
    public byte[] c() {
        return this.f73462b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f73461a.equals(eVar.b())) {
            if (Arrays.equals(this.f73462b, eVar instanceof a ? ((a) eVar).f73462b : eVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f73461a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f73462b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f73461a + ", extras=" + Arrays.toString(this.f73462b) + "}";
    }

    private a(Iterable iterable, byte[] bArr) {
        this.f73461a = iterable;
        this.f73462b = bArr;
    }
}
