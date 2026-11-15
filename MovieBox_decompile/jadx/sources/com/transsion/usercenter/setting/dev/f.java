package com.transsion.usercenter.setting.dev;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class f extends t0 {

    private final Lazy f55251a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.c();
        }
    });

    public static final b0 c() {
        return new b0();
    }

    public final b0 d() {
        return (b0) this.f55251a.getValue();
    }

    public final void e(int i10, int i11, String id2) {
        Intrinsics.h(id2, "id");
        ArrayList arrayList = new ArrayList();
        int i12 = 1;
        if (1 <= i11) {
            while (true) {
                arrayList.add("page = " + i10 + " --- pageSize = " + i11 + " --- id = " + id2);
                if (i12 == i11) {
                    break;
                } else {
                    i12++;
                }
            }
        }
        d().n(arrayList);
    }
}
