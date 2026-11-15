package com.tn.tranpay.event;

public final class b {

    private final int f40553a;

    public b(int i10) {
        this.f40553a = i10;
    }

    public final int a() {
        return this.f40553a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && this.f40553a == ((b) obj).f40553a;
    }

    public int hashCode() {
        return this.f40553a;
    }

    public String toString() {
        return "PaymentEvent(status=" + this.f40553a + ")";
    }
}
