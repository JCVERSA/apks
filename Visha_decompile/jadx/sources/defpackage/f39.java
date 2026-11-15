package defpackage;

import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import com.blankj.utilcode.util.Utils;

public abstract class f39 {
    public static int a() {
        WindowManager windowManager = (WindowManager) Utils.a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point.x;
    }

    public static float b() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    public static int c() {
        WindowManager windowManager = (WindowManager) Utils.a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.y;
    }

    public static int d() {
        WindowManager windowManager = (WindowManager) Utils.a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.x;
    }
}
