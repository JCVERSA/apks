package com.transsion.shorttv.base.image.blurhash;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.LruCache;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class BlurHash {

    private Context f50772a;

    private float f50773b;

    private LruCache f50774c;

    private final n0 f50775d;

    public BlurHash(Context context, int i10, float f10) {
        Intrinsics.h(context, "context");
        this.f50772a = context;
        this.f50773b = f10;
        this.f50774c = new LruCache(i10);
        this.f50775d = o0.a(y0.c());
    }

    public final void e(String str, BitmapDrawable bitmapDrawable) {
        this.f50774c.put(str, bitmapDrawable);
    }

    public final BitmapDrawable g(String str) {
        return (BitmapDrawable) this.f50774c.get(str);
    }

    public final void f(String blurString, int i10, int i11, Function1 response) {
        Intrinsics.h(blurString, "blurString");
        Intrinsics.h(response, "response");
        k.d(this.f50775d, null, null, new BlurHash$execute$1(this, blurString, response, i10, i11, null), 3, null);
    }
}
