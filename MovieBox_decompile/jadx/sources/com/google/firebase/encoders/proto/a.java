package com.google.firebase.encoders.proto;

public final class a {

    private int f30992a;

    private Protobuf.IntEncoding f30993b = Protobuf.IntEncoding.DEFAULT;

    private static final class C0415a implements Protobuf {

        private final int f30994b;

        private final Protobuf.IntEncoding f30995c;

        C0415a(int i10, Protobuf.IntEncoding intEncoding) {
            this.f30994b = i10;
            this.f30995c = intEncoding;
        }

        @Override
        public Class annotationType() {
            return Protobuf.class;
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Protobuf)) {
                return false;
            }
            Protobuf protobuf = (Protobuf) obj;
            return this.f30994b == protobuf.tag() && this.f30995c.equals(protobuf.intEncoding());
        }

        @Override
        public int hashCode() {
            return (14552422 ^ this.f30994b) + (this.f30995c.hashCode() ^ 2041407134);
        }

        @Override
        public Protobuf.IntEncoding intEncoding() {
            return this.f30995c;
        }

        @Override
        public int tag() {
            return this.f30994b;
        }

        @Override
        public String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f30994b + "intEncoding=" + this.f30995c + ')';
        }
    }

    public static a b() {
        return new a();
    }

    public Protobuf a() {
        return new C0415a(this.f30992a, this.f30993b);
    }

    public a c(int i10) {
        this.f30992a = i10;
        return this;
    }
}
