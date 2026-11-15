package io.appmetrica.analytics.identifiers.impl;

import defpackage.y45;

public final class a {
    public final String a;
    public final String b;
    public final Boolean c;

    public a(String str, String str2, Boolean bool) {
        this.a = str;
        this.b = str2;
        this.c = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b) && y45.e(this.c, aVar.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.c;
        return iHashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "AdvIdInfo(provider=" + this.a + ", advId=" + this.b + ", limitedAdTracking=" + this.c + ')';
    }
}
