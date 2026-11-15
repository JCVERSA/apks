package defpackage;

import android.R;
import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;

public abstract class p5 {
    public static void a(Activity activity, boolean z) {
        if (z) {
            b(activity);
            return;
        }
        View childAt = ((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(true);
        }
        activity.getWindow().setLayout(-1, -1);
        activity.setFinishOnTouchOutside(false);
    }

    public static void b(Activity activity) {
        Window window = activity.getWindow();
        if (window != null) {
            if (window.getAttributes() != null) {
                window.getAttributes().layoutInDisplayCutoutMode = 1;
            }
            WindowCompat.setDecorFitsSystemWindows(window, false);
            WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, window.getDecorView());
            windowInsetsControllerCompat.hide(WindowInsetsCompat.Type.systemBars());
            windowInsetsControllerCompat.setSystemBarsBehavior(2);
        }
    }
}
