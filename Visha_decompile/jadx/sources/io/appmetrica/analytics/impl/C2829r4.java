package io.appmetrica.analytics.impl;

public final class C2829r4 {
    public final String a;
    public final Integer b;
    public final String c;

    public C2829r4(String str, Integer num, String str2) {
        this.a = str;
        this.b = num;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2829r4.class != obj.getClass()) {
            return false;
        }
        C2829r4 c2829r4 = (C2829r4) obj;
        if (!this.a.equals(c2829r4.a)) {
            return false;
        }
        Integer num = this.b;
        if (num == null ? c2829r4.b != null : !num.equals(c2829r4.b)) {
            return false;
        }
        String str = this.c;
        if (str != null) {
            return str.equals(c2829r4.c);
        }
        return c2829r4.c == null;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Integer num = this.b;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 31;
        String str = this.c;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }
}
