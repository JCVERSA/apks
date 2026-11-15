package com.transsion.push.tpush;

import android.content.Context;
import android.graphics.Bitmap;
import com.transsion.lib.push.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class g {

    public static final g f48874a = new g();

    private g() {
    }

    public final Bitmap a(Context context, Bitmap contentBitmap, boolean z10) {
        Bitmap bitmapE;
        Intrinsics.h(context, "context");
        Intrinsics.h(contentBitmap, "contentBitmap");
        return (z10 && (bitmapE = com.transsion.push.utils.a.f48922a.e(context, contentBitmap, lj.a.b(71), com.transsion.push.helper.e.f48766a.g(), false, lj.a.b(4))) != null) ? bitmapE : contentBitmap;
    }

    public final com.transsion.push.notification.c.a b(Context context, int i10, boolean z10) {
        Intrinsics.h(context, "context");
        return z10 ? new com.transsion.push.notification.c.a(context, i10, R$layout.push_notification_normal_vertical_small, R$layout.push_notification_normal_vertical_big) : new com.transsion.push.notification.c.a(context, i10, R$layout.push_notification_normal_small, R$layout.push_notification_big_picture);
    }

    public final Bitmap c(Context context, Bitmap contentBitmap, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(contentBitmap, "contentBitmap");
        Bitmap bitmapE = com.transsion.push.utils.a.f48922a.e(context, contentBitmap, lj.a.b(z10 ? 40 : 100), lj.a.b(56), false, lj.a.b(4));
        return bitmapE == null ? contentBitmap : bitmapE;
    }
}
