package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import java.util.Map;

public final class C2840rf implements Converter {
    public final C2640je a;
    public final C2691lf b;
    public final F3 c;
    public final C2940vf d;
    public final C3035za e;
    public final C3035za f;

    public C2840rf() {
        this(new C2640je(), new C2691lf(), new F3(), new C2940vf(), new C3035za(100), new C3035za(1000));
    }

    @Override
    @NonNull
    public final C2893ti fromModel(@NonNull C2915uf c2915uf) {
        C2893ti c2893tiFromModel;
        C2893ti c2893tiFromModel2;
        C2893ti c2893tiA;
        C2893ti c2893tiA2;
        C2883t8 c2883t8 = new C2883t8();
        C2649jn c2649jnA = this.e.a(c2915uf.a);
        c2883t8.a = StringUtils.getUTF8Bytes((String) c2649jnA.a);
        C2649jn c2649jnA2 = this.f.a(c2915uf.b);
        c2883t8.b = StringUtils.getUTF8Bytes((String) c2649jnA2.a);
        List<String> list = c2915uf.c;
        C2893ti c2893tiFromModel3 = null;
        if (list != null) {
            c2893tiFromModel = this.c.fromModel(list);
            c2883t8.c = (C2684l8) c2893tiFromModel.a;
        } else {
            c2893tiFromModel = null;
        }
        Map<String, String> map = c2915uf.d;
        if (map != null) {
            c2893tiFromModel2 = this.a.fromModel(map);
            c2883t8.d = (C2833r8) c2893tiFromModel2.a;
        } else {
            c2893tiFromModel2 = null;
        }
        C2741nf c2741nf = c2915uf.e;
        if (c2741nf != null) {
            c2893tiA = this.b.fromModel(c2741nf);
            c2883t8.e = (C2858s8) c2893tiA.a;
        } else {
            c2893tiA = null;
        }
        C2741nf c2741nf2 = c2915uf.f;
        if (c2741nf2 != null) {
            c2893tiA2 = this.b.fromModel(c2741nf2);
            c2883t8.f = (C2858s8) c2893tiA2.a;
        } else {
            c2893tiA2 = null;
        }
        List<String> list2 = c2915uf.g;
        if (list2 != null) {
            c2893tiFromModel3 = this.d.fromModel(list2);
            c2883t8.g = (C2908u8[]) c2893tiFromModel3.a;
        }
        return new C2893ti(c2883t8, new C2903u3(C2903u3.b(c2649jnA, c2649jnA2, c2893tiFromModel, c2893tiFromModel2, c2893tiA, c2893tiA2, c2893tiFromModel3)));
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public C2840rf(C2640je c2640je, C2691lf c2691lf, F3 f3, C2940vf c2940vf, C3035za c3035za, C3035za c3035za2) {
        this.a = c2640je;
        this.b = c2691lf;
        this.c = f3;
        this.d = c2940vf;
        this.e = c3035za;
        this.f = c3035za2;
    }

    @NonNull
    public final C2915uf a(@NonNull C2893ti c2893ti) {
        throw new UnsupportedOperationException();
    }
}
