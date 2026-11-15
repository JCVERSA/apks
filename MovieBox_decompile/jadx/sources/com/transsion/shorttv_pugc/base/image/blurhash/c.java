package com.transsion.shorttv_pugc.base.image.blurhash;

import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.RequestBuilder;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class c {
    public static final void b(final RequestBuilder requestBuilder, String blurString, int i10, int i11, BlurHash blurHash, final Function1 response) {
        Intrinsics.h(requestBuilder, "<this>");
        Intrinsics.h(blurString, "blurString");
        Intrinsics.h(blurHash, "blurHash");
        Intrinsics.h(response, "response");
        if (i10 == 0 || i11 == 0) {
            return;
        }
        blurHash.f(blurString, i10, i11, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return c.c(requestBuilder, response, (BitmapDrawable) obj);
            }
        });
    }

    public static final Unit c(RequestBuilder requestBuilder, Function1 function1, BitmapDrawable drawable) {
        Intrinsics.h(drawable, "drawable");
        requestBuilder.placeholder(drawable);
        function1.invoke(requestBuilder);
        return Unit.f64096a;
    }
}
