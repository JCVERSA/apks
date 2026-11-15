package io.appmetrica.analytics.impl;

import androidx.annotation.Nullable;
import io.appmetrica.analytics.Revenue;
import java.util.Arrays;
import java.util.List;

public final class Di implements Pn {
    public final On a = new On();

    @Override
    public final Nn a(@Nullable Revenue revenue) {
        Nn nn;
        On on = this.a;
        Ff ff = new Ff();
        Integer num = revenue.quantity;
        if (num == null || num.intValue() > 0) {
            nn = new Nn(ff, true, "");
        } else {
            nn = new Nn(ff, false, "Invalid quantity value " + num);
        }
        List<Nn> listAsList = Arrays.asList(nn);
        on.getClass();
        return on.a(listAsList);
    }
}
