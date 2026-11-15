package com.doman.core.d;

import android.content.Context;
import android.graphics.Point;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.doman.core.CoreMain;

public final class m {
    public static int a = -1;
    public static int b = -1;

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

    public static boolean a() {
        try {
            return ((PowerManager) CoreMain.getInstance().getContext().getSystemService("power")).isScreenOn();
        } catch (Exception unused) {
            return false;
        }
    }
}
