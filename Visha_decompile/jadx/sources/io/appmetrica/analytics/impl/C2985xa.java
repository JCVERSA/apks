package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;

public class C2985xa extends M2 {
    public final Aa b;

    public C2985xa(int i) {
        this(i, null);
    }

    public int b(@Nullable Object obj) {
        return 0;
    }

    public C2985xa(int i, @Nullable Aa aa) {
        super(i);
        this.b = aa;
    }

    @Override
    @NonNull
    public final C2649jn a(@Nullable List<Object> list) {
        int iB;
        int i = 0;
        if (list == null || (list.size() <= this.a && this.b == null)) {
            iB = 0;
        } else {
            ArrayList arrayList = new ArrayList();
            iB = 0;
            int i2 = 0;
            for (Object obj : list) {
                if (i2 < this.a) {
                    Aa aa = this.b;
                    if (aa != null) {
                        C2649jn c2649jnA = aa.a(obj);
                        Object obj2 = c2649jnA.a;
                        iB += c2649jnA.b.getBytesTruncated();
                        In.a(obj, c2649jnA.a);
                        obj = obj2;
                    }
                    arrayList.add(obj);
                } else {
                    i++;
                    iB += b(obj);
                }
                i2++;
            }
            list = arrayList;
        }
        return new C2649jn(list, new E4(i, iB));
    }

    @Nullable
    @VisibleForTesting
    public final Aa b() {
        return this.b;
    }
}
