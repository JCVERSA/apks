package com.transsion.base.image.blurhash;

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

    private Context f41856a;

    private float f41857b;

    private LruCache f41858c;

    private final n0 f41859d;

    public BlurHash(Context context, int i10, float f10) {
        Intrinsics.h(context, "context");
        this.f41856a = context;
        this.f41857b = f10;
        this.f41858c = new LruCache(i10);
        this.f41859d = o0.a(y0.c());
    }

    public final void e(String str, BitmapDrawable bitmapDrawable) {
        this.f41858c.put(str, bitmapDrawable);
    }

    public final BitmapDrawable g(String str) {
        return (BitmapDrawable) this.f41858c.get(str);
    }

    public final void f(String blurString, int i10, int i11, Function1 response) {
        Intrinsics.h(blurString, "blurString");
        Intrinsics.h(response, "response");
        k.d(this.f41859d, null, null, new BlurHash$execute$1(this, blurString, response, i10, i11, null), 3, null);
    }
}
