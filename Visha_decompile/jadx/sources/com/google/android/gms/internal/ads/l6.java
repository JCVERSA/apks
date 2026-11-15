package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l6;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import defpackage.g3i;
import defpackage.h2i;
import defpackage.i2i;
import defpackage.i3i;
import defpackage.n2i;
import defpackage.v2i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public final class l6 {
    public final i3i a;

    public l6(i3i i3iVar) {
        i2i i2iVar = h2i.c;
        this.a = i3iVar;
    }

    public static l6 a(int i) {
        final int i2 = FlacTagCreator.DEFAULT_PADDING;
        return new l6(new i3i(i2) {
            @Override
            public final Iterator a(l6 l6Var, CharSequence charSequence) {
                return new f3i(l6Var, charSequence, FlacTagCreator.DEFAULT_PADDING);
            }
        });
    }

    public static l6 b(final i2i i2iVar) {
        return new l6(new i3i() {
            @Override
            public final Iterator a(l6 l6Var, CharSequence charSequence) {
                return new d3i(l6Var, charSequence, i2iVar);
            }
        });
    }

    public static l6 c(Pattern pattern) {
        final zzftn zzftnVar = new zzftn(pattern);
        v2i.i(!((n2i) zzftnVar.zza("")).a.matches(), "The pattern may not match the empty string: %s", zzftnVar);
        return new l6(new i3i() {
            @Override
            public final Iterator a(l6 l6Var, CharSequence charSequence) {
                return new e3i(l6Var, charSequence, zzftnVar.zza(charSequence));
            }
        });
    }

    public final Iterable d(CharSequence charSequence) {
        charSequence.getClass();
        return new g3i(this, charSequence);
    }

    public final List f(CharSequence charSequence) {
        charSequence.getClass();
        Iterator itG = g(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itG.hasNext()) {
            arrayList.add((String) itG.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final Iterator g(CharSequence charSequence) {
        return this.a.a(this, charSequence);
    }
}
