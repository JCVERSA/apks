package t8;

final class b extends f {

    private final Integer f72564a;

    b(Integer num) {
        this.f72564a = num;
    }

    @Override
    public Integer a() {
        return this.f72564a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        Integer num = this.f72564a;
        Integer numA = ((f) obj).a();
        if (num == null) {
            return numA == null;
        }
        return num.equals(numA);
    }

    public int hashCode() {
        Integer num = this.f72564a;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "ProductData{productId=" + this.f72564a + "}";
    }
}
