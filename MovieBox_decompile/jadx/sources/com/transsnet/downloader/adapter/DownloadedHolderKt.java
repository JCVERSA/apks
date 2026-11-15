package com.transsnet.downloader.adapter;

import android.content.Context;
import android.widget.ImageView;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

public abstract class DownloadedHolderKt {
    public static final void a(Context context, ImageView imageView, String url, String str) {
        Intrinsics.h(context, "context");
        Intrinsics.h(imageView, "imageView");
        Intrinsics.h(url, "url");
        if (!StringsKt.c0(url, "http", false, 2, null)) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new DownloadedHolderKt$loadImageWithBuiltIn$1(context, url, imageView, null), 3, null);
            return;
        }
        ni.f.b bVarM = ni.f.f67269a.m(context).g(url).m(com.blankj.utilcode.util.a0.a(120.0f));
        if (str == null) {
            str = "";
        }
        bVarM.l(str).d(imageView);
    }
}
