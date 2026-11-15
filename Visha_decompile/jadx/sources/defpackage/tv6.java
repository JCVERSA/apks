package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;

public abstract class tv6 {
    public static Bitmap a;

    public static Bitmap a() {
        hp4 hp4Var = new hp4();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(68, 68, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        hp4Var.setBounds(0, 0, 68, 68);
        hp4Var.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static Bitmap b() {
        if (a == null) {
            a = a();
        }
        return a;
    }

    public static void c() {
        Bitmap bitmap = a;
        if (bitmap != null) {
            bitmap.recycle();
            a = null;
        }
    }
}
