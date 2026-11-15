package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public abstract class f4d {
    public static int a;
    public static int b;

    public static void a(Context context) {
        int i;
        int i2;
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            defaultDisplay.getMetrics(new DisplayMetrics());
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            i = point.x;
            i2 = point.y;
        } catch (Exception unused) {
            i = context.getResources().getDisplayMetrics().widthPixels;
            i2 = context.getResources().getDisplayMetrics().heightPixels;
        }
        if (i <= i2) {
            int i3 = i;
            i = i2;
            i2 = i3;
        }
        a = i2;
        b = i;
    }
}
