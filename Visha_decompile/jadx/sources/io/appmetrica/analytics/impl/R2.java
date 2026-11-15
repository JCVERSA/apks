package io.appmetrica.analytics.impl;

public final class R2 implements Pn {
    @Override
    public final Nn a(Object obj) {
        Cn[] cnArr = ((Fn) obj).a;
        return (cnArr == null || cnArr.length == 0) ? new Nn(this, false, "attributes list is empty") : new Nn(this, true, "");
    }
}
