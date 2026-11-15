package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import java.util.HashMap;
import java.util.Iterator;

public abstract class u7a {
    public static HashMap a = new HashMap();

    public static Bitmap a(Context context, int i) {
        Drawable drawable = context.getDrawable(i);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        a.put(Integer.valueOf(i), bitmapCreateBitmap);
        return bitmapCreateBitmap;
    }

    public static void b() {
        HashMap map = a;
        if (map == null) {
            return;
        }
        for (Bitmap bitmap : map.values()) {
            if (!bitmap.isRecycled()) {
                bitmap.recycle();
            }
        }
        a.clear();
    }

    public static void c(Context context) {
        HashMap map = a;
        if (map == null) {
            return;
        }
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            a(context, ((Integer) it.next()).intValue());
        }
    }
}
