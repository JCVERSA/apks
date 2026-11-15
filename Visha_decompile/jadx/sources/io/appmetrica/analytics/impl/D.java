package io.appmetrica.analytics.impl;

import defpackage.y45;

public final class D {
    public final int a;
    public final int b;
    public final int c;

    public D(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!y45.e(D.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.impl.id.AdvIdGetterController.CanTrackIdentifiers");
        }
        D d = (D) obj;
        return this.a == d.a && this.b == d.b && this.c == d.c;
    }

    public final int hashCode() {
        return Q7.a(this.c) + ((Q7.a(this.b) + (Q7.a(this.a) * 31)) * 31);
    }

    public final String toString() {
        return "CanTrackIdentifiers(canTrackGaid=" + E.a(this.a) + ", canTrackHoaid=" + E.a(this.b) + ", canTrackYandexAdvId=" + E.a(this.c) + ')';
    }
}
