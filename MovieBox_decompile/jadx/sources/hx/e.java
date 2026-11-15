package hx;

public final class e {

    private final int f61513a;

    public e(int i10) {
        this.f61513a = i10;
    }

    public final int a() {
        return this.f61513a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && this.f61513a == ((e) obj).f61513a;
    }

    public int hashCode() {
        return this.f61513a;
    }

    public String toString() {
        return "PaymentEvent(status=" + this.f61513a + ")";
    }
}
