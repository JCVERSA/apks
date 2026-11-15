package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.util.Collection;
import java.util.List;

public final class C2691lf implements Converter {
    public final U a;
    public final C2716mf b;

    public C2691lf() {
        this(new U(), new C2716mf(30));
    }

    @Override
    @NonNull
    public final C2893ti fromModel(@NonNull C2741nf c2741nf) {
        int bytesTruncated;
        C2858s8 c2858s8 = new C2858s8();
        C2893ti c2893tiFromModel = this.a.fromModel(c2741nf.a);
        c2858s8.a = (C2610i8) c2893tiFromModel.a;
        C2649jn c2649jnA = this.b.a(c2741nf.b);
        if (In.a((Collection) c2649jnA.a)) {
            bytesTruncated = 0;
        } else {
            c2858s8.b = new C2610i8[((List) c2649jnA.a).size()];
            bytesTruncated = 0;
            for (int i = 0; i < ((List) c2649jnA.a).size(); i++) {
                C2893ti c2893tiFromModel2 = this.a.fromModel((V) ((List) c2649jnA.a).get(i));
                c2858s8.b[i] = (C2610i8) c2893tiFromModel2.a;
                bytesTruncated += c2893tiFromModel2.b.getBytesTruncated();
            }
        }
        return new C2893ti(c2858s8, new C2903u3(C2903u3.b(c2893tiFromModel, c2649jnA, new C2903u3(bytesTruncated))));
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public C2691lf(U u, C2716mf c2716mf) {
        this.a = u;
        this.b = c2716mf;
    }

    @NonNull
    public final C2741nf a(@NonNull C2893ti c2893ti) {
        throw new UnsupportedOperationException();
    }
}
