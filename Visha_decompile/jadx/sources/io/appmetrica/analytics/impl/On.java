package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.LinkedList;
import java.util.List;

public final class On implements Pn {
    @Override
    public final Nn a(@Nullable List<Nn> list) {
        LinkedList linkedList = new LinkedList();
        boolean z = true;
        for (Nn nn : list) {
            if (!nn.a) {
                linkedList.add(nn.b);
                z = false;
            }
        }
        return z ? new Nn(this, true, "") : new Nn(this, false, TextUtils.join(", ", linkedList));
    }
}
