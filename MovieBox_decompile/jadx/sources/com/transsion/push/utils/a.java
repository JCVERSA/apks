package com.transsion.push.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.blankj.utilcode.util.ImageUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import com.transsion.lib.push.R$mipmap;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f48922a = new a();

    private a() {
    }

    public static Bitmap c(a aVar, Context context, Bitmap bitmap, int i10, int i11, boolean z10, int i12, int i13, int i14, Object obj) {
        return aVar.b(context, bitmap, i10, i11, z10, i12, (i14 & 64) != 0 ? 8 : i13);
    }

    public static Bitmap f(a aVar, Context context, Bitmap bitmap, int i10, int i11, boolean z10, int i12, int i13, Object obj) {
        if ((i13 & 32) != 0) {
            i12 = lj.a.b(8);
        }
        return aVar.e(context, bitmap, i10, i11, z10, i12);
    }

    public final Bitmap a(Context context, Bitmap bitmap, int i10, int i11, boolean z10) {
        Intrinsics.h(context, "context");
        return c(this, context, bitmap, i10, i11, z10, R$mipmap.notification_placeholder, 0, 64, null);
    }

    public final Bitmap b(Context context, Bitmap bitmap, int i10, int i11, boolean z10, int i12, int i13) {
        Intrinsics.h(context, "context");
        if (bitmap != null) {
            try {
                if (!bitmap.isRecycled()) {
                    BitmapPool bitmapPool = Glide.get(context).getBitmapPool();
                    Intrinsics.g(bitmapPool, "getBitmapPool(...)");
                    Bitmap bitmapCenterCrop = TransformationUtils.centerCrop(bitmapPool, bitmap, i10, i11);
                    Bitmap bitmapRoundedCorners = TransformationUtils.roundedCorners(bitmapPool, bitmapCenterCrop, i13);
                    d(bitmapCenterCrop);
                    if (z10) {
                        d(bitmap);
                    }
                    return bitmapRoundedCorners;
                }
            } catch (Throwable unused) {
                return ImageUtils.g(bitmap, i10, i11, z10);
            }
        }
        return BitmapFactory.decodeResource(context.getResources(), i12);
    }

    public final void d(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    public final Bitmap e(Context context, Bitmap bitmap, int i10, int i11, boolean z10, int i12) {
        Intrinsics.h(context, "context");
        return (bitmap == null || bitmap.isRecycled()) ? BitmapFactory.decodeResource(context.getResources(), R$mipmap.notification_placeholder) : b(context, bitmap, i10, i11, z10, R$mipmap.notification_placeholder, i12);
    }
}
