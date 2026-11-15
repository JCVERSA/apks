package defpackage;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.wh.stat.layout.StatLayout;

public abstract class wi5 {
    public static void a(Activity activity) {
        View decorView;
        if (cl4.f().j(activity) && (decorView = activity.getWindow().getDecorView()) != null && (decorView instanceof ViewGroup)) {
            ((ViewGroup) decorView).addView(new StatLayout(activity), new ViewGroup.LayoutParams(-1, -1));
        }
    }
}
