package zg;

import android.content.Context;
import android.graphics.Point;
import android.view.WindowManager;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.tn.lib.widget.R$dimen;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final h f76787a = new h();

    private h() {
    }

    public final int a(Context context, float f10) {
        Intrinsics.h(context, "context");
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final Pair b() {
        float fE = (y.e() - a0.a(40.0f)) / 3.0f;
        return new Pair(Integer.valueOf((int) fE), Integer.valueOf((int) ((153.0f * fE) / 107.0f)));
    }

    public final int c(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("window");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Point point = new Point();
        ((WindowManager) systemService).getDefaultDisplay().getRealSize(point);
        return point.y;
    }

    public final int d(Context context) {
        Intrinsics.h(context, "context");
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier <= 0) {
            identifier = R$dimen.default_status_bar_height;
        }
        return context.getResources().getDimensionPixelSize(identifier);
    }

    public final int e(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("window");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Point point = new Point();
        ((WindowManager) systemService).getDefaultDisplay().getRealSize(point);
        return point.x;
    }

    public final boolean f() {
        return ((double) (((float) a0.a(120.0f)) / ((float) y.e()))) >= 0.35d;
    }
}
