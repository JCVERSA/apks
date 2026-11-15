package io.appmetrica.analytics.impl;

public final class Ff implements Pn {
    @Override
    public final Nn a(Object obj) {
        Integer num = (Integer) obj;
        if (num == null || num.intValue() > 0) {
            return new Nn(this, true, "");
        }
        return new Nn(this, false, "Invalid quantity value " + num);
    }
}
