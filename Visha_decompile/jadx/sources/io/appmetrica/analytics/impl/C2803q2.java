package io.appmetrica.analytics.impl;

import android.util.Pair;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;

public final class C2803q2 implements ProtobufConverter {
    @Override
    @NonNull
    public final Pl fromModel(@NonNull C2778p2 c2778p2) {
        Nl nl;
        Pl pl = new Pl();
        pl.a = new Ol[c2778p2.a.size()];
        for (int i = 0; i < c2778p2.a.size(); i++) {
            Ol ol = new Ol();
            Pair pair = (Pair) c2778p2.a.get(i);
            ol.a = (String) pair.first;
            if (pair.second != null) {
                ol.b = new Nl();
                C2753o2 c2753o2 = (C2753o2) pair.second;
                if (c2753o2 == null) {
                    nl = null;
                } else {
                    Nl nl2 = new Nl();
                    nl2.a = c2753o2.a;
                    nl = nl2;
                }
                ol.b = nl;
            }
            pl.a[i] = ol;
        }
        return pl;
    }

    @Override
    @NonNull
    public final C2778p2 toModel(@NonNull Pl pl) {
        ArrayList arrayList = new ArrayList();
        for (Ol ol : pl.a) {
            String str = ol.a;
            Nl nl = ol.b;
            arrayList.add(new Pair(str, nl == null ? null : new C2753o2(nl.a)));
        }
        return new C2778p2(arrayList);
    }
}
