package com.transsion.shorttv.base.image.blurhash;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f50782a = new e();

    private static final Lazy f50783b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return e.b();
        }
    });

    private e() {
    }

    public static final BlurHash b() {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return new BlurHash(applicationA, 10, 0.6f);
    }

    public static void d(e eVar, String str, int i10, int i11, Function1 function1, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 20;
        }
        if ((i12 & 4) != 0) {
            i11 = 20;
        }
        eVar.c(str, i10, i11, function1);
    }

    private final BlurHash e() {
        return (BlurHash) f50783b.getValue();
    }

    public final void c(String blurString, int i10, int i11, Function1 response) {
        Intrinsics.h(blurString, "blurString");
        Intrinsics.h(response, "response");
        e().f(blurString, i10, i11, response);
    }
}
