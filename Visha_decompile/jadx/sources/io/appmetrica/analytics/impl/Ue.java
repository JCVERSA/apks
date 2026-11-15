package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.Iterator;

public final class Ue implements ProtobufConverter {
    public final C2567gf a;
    public final Pe b;

    public Ue() {
        this(new C2567gf(), new Pe());
    }

    @Override
    @NonNull
    public final C2467cf fromModel(@NonNull Se se) {
        C2467cf c2467cf = new C2467cf();
        c2467cf.a = this.a.fromModel(se.a);
        c2467cf.b = new C2442bf[se.b.size()];
        Iterator<Re> it = se.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            c2467cf.b[i] = this.b.fromModel(it.next());
            i++;
        }
        return c2467cf;
    }

    public Ue(C2567gf c2567gf, Pe pe) {
        this.a = c2567gf;
        this.b = pe;
    }

    @Override
    @NonNull
    public final Se toModel(@NonNull C2467cf c2467cf) {
        C2542ff model;
        ArrayList arrayList = new ArrayList(c2467cf.b.length);
        for (C2442bf c2442bf : c2467cf.b) {
            arrayList.add(this.b.toModel(c2442bf));
        }
        C2417af c2417af = c2467cf.a;
        if (c2417af == null) {
            model = this.a.toModel(new C2417af());
        } else {
            model = this.a.toModel(c2417af);
        }
        return new Se(model, arrayList);
    }
}
