package com.google.firebase.encoders.proto;

public final class a {
    public int a;
    public Protobuf.IntEncoding b = Protobuf.IntEncoding.DEFAULT;

    public static final class C0111a implements Protobuf {
        public final int a;
        public final Protobuf.IntEncoding b;

        public C0111a(int i, Protobuf.IntEncoding intEncoding) {
            this.a = i;
            this.b = intEncoding;
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
            return this.a == protobuf.tag() && this.b.equals(protobuf.intEncoding());
        }

        @Override
        public int hashCode() {
            return (14552422 ^ this.a) + (this.b.hashCode() ^ 2041407134);
        }

        @Override
        public Protobuf.IntEncoding intEncoding() {
            return this.b;
        }

        @Override
        public int tag() {
            return this.a;
        }

        @Override
        public String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.a + "intEncoding=" + this.b + ')';
        }
    }

    public static a b() {
        return new a();
    }

    public Protobuf a() {
        return new C0111a(this.a, this.b);
    }

    public a c(int i) {
        this.a = i;
        return this;
    }
}
