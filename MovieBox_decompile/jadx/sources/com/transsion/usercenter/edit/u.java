package com.transsion.usercenter.edit;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class u {

    public static final a f54638b = new a(null);

    private static final Lazy f54639c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return u.b();
        }
    });

    private Bitmap f54640a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final u a() {
            return (u) u.f54639c.getValue();
        }

        private a() {
        }
    }

    private u() {
    }

    public static final u b() {
        return new u();
    }

    public final Bitmap d() {
        return this.f54640a;
    }

    public final void e(Bitmap bitmap) {
        this.f54640a = bitmap;
    }

    public final void f(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            Intrinsics.g(bitmapCreateBitmap, "createBitmap(...)");
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            drawable.draw(canvas);
            this.f54640a = bitmapCreateBitmap;
        } catch (Exception e10) {
            e10.getMessage();
        }
    }
}
