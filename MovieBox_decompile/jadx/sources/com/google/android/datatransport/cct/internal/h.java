package com.google.android.datatransport.cct.internal;

final class h extends o {

    private final Integer f23623a;

    static final class b extends o.a {

        private Integer f23624a;

        b() {
        }

        @Override
        public o a() {
            return new h(this.f23624a);
        }

        @Override
        public o.a b(Integer num) {
            this.f23624a = num;
            return this;
        }
    }

    @Override
    public Integer b() {
        return this.f23623a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        Integer num = this.f23623a;
        Integer numB = ((o) obj).b();
        if (num == null) {
            return numB == null;
        }
        return num.equals(numB);
    }

    public int hashCode() {
        Integer num = this.f23623a;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "ExternalPRequestContext{originAssociatedProductId=" + this.f23623a + "}";
    }

    private h(Integer num) {
        this.f23623a = num;
    }
}
