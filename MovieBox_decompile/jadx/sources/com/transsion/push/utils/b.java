package com.transsion.push.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import com.transsion.push.R$dimen;

public class b {

    private static Bitmap f48923a;

    public static Bitmap a(Context context, Bitmap bitmap) {
        return b(bitmap, c(context.getResources().getDimensionPixelSize(R$dimen.tpush_notification_icon_corner_large), context.getResources().getDimensionPixelSize(R$dimen.tpush_notification_large_icon_size), bitmap.getWidth()));
    }

    private static Bitmap b(Bitmap bitmap, int i10) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        float f10 = i10;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-1);
        canvas.drawRoundRect(rectF, f10, f10, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    private static int c(int i10, int i11, int i12) {
        return i11 != i12 ? (i10 * i12) / i11 : i10;
    }

    public static Bitmap d(Context context, Bitmap bitmap) {
        Bitmap bitmap2 = f48923a;
        if (bitmap2 != null) {
            return bitmap2;
        }
        Bitmap bitmapB = b(bitmap, c(context.getResources().getDimensionPixelSize(R$dimen.tpush_notification_icon_corner_small), context.getResources().getDimensionPixelSize(R$dimen.tpush_notification_small_icon_size), bitmap.getWidth()));
        f48923a = bitmapB;
        return bitmapB;
    }
}
