package defpackage;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation$Callback;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

public abstract class ag5 {
    public static int a;
    public static ViewTreeObserver.OnGlobalLayoutListener b;
    public static int c;
    public static int d;

    public class a extends WindowInsetsAnimation$Callback {
        public final Activity a;
        public final e b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, Activity activity, e eVar) {
            super(i);
            this.a = activity;
            this.b = eVar;
        }

        public WindowInsets onProgress(WindowInsets windowInsets, List list) {
            int iMax = windowInsets.getInsets(WindowInsetsCompat.Type.ime()).bottom;
            int i = windowInsets.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom;
            if (windowInsets.isVisible(WindowInsetsCompat.Type.navigationBars())) {
                int i2 = windowInsets.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom;
            }
            boolean zS = com.transsion.utils.a.s(this.a);
            e eVar = this.b;
            if (!zS) {
                iMax = Math.max(iMax - i, 0);
            }
            eVar.k(iMax);
            return windowInsets;
        }
    }

    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        public final Activity b;
        public final e c;

        public b(Activity activity, e eVar) {
            this.b = activity;
            this.c = eVar;
        }

        @Override
        public void onGlobalLayout() {
            int iE = ag5.e(this.b);
            if (ag5.a != iE) {
                this.c.k(iE);
                ag5.a = iE;
            }
        }
    }

    public class c implements f {
        public final FrameLayout a;

        public c(FrameLayout frameLayout) {
            this.a = frameLayout;
        }

        @Override
        public void a(int i, boolean z) {
            ag5.c = i;
            if (ag5.b == null || this.a.getViewTreeObserver() == null || !this.a.getViewTreeObserver().isAlive()) {
                return;
            }
            this.a.getViewTreeObserver().addOnGlobalLayoutListener(ag5.b);
        }
    }

    public class d implements View.OnAttachStateChangeListener {
        public final f b;
        public final Activity c;

        public d(f fVar, Activity activity) {
            this.b = fVar;
            this.c = activity;
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
            int i = rootWindowInsets.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom;
            boolean z = rootWindowInsets.isVisible(WindowInsetsCompat.Type.navigationBars()) && rootWindowInsets.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom > 0;
            if (i > 0) {
                this.b.a(i, z);
            } else {
                this.b.a(ag5.f(this.c), z);
            }
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public interface e {
        void k(int i);
    }

    public interface f {
        void a(int i, boolean z);
    }

    public static int e(Activity activity) {
        View decorView = activity.getWindow().getDecorView();
        if (decorView == null) {
            return a;
        }
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        int iAbs = Math.abs(decorView.getBottom() - rect.bottom);
        if (iAbs > c) {
            return iAbs - d;
        }
        d = iAbs;
        return 0;
    }

    public static int f(Context context) {
        return com.transsion.utils.a.f(context);
    }

    public static void g(Activity activity, f fVar) {
        View decorView = activity.getWindow().getDecorView();
        if (!decorView.isAttachedToWindow()) {
            decorView.addOnAttachStateChangeListener(new d(fVar, activity));
            return;
        }
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(decorView);
        int i = rootWindowInsets.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom;
        boolean z = rootWindowInsets.isVisible(WindowInsetsCompat.Type.navigationBars()) && rootWindowInsets.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom > 0;
        if (i > 0) {
            fVar.a(i, z);
        } else {
            fVar.a(f(activity), z);
        }
    }

    public static void h(Activity activity) {
        View currentFocus;
        InputMethodManager inputMethodManager;
        if (activity == null || (currentFocus = activity.getCurrentFocus()) == null || (inputMethodManager = (InputMethodManager) activity.getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
    }

    public static void i(Activity activity, e eVar) {
        activity.getWindow().getDecorView().setWindowInsetsAnimationCallback(new a(0, activity, eVar));
    }

    public static void j(Activity activity, e eVar) {
        if ((activity.getWindow().getAttributes().flags & 512) != 0) {
            activity.getWindow().clearFlags(512);
        }
        FrameLayout frameLayout = (FrameLayout) activity.findViewById(R.id.content);
        a = e(activity);
        b = new b(activity, eVar);
        g(activity, new c(frameLayout));
    }

    public static void k(Activity activity, e eVar) {
        if (Build.VERSION.SDK_INT >= 30) {
            i(activity, eVar);
        } else {
            j(activity, eVar);
        }
    }

    public static void l(Activity activity) {
        View viewFindViewById = activity.getWindow().getDecorView().findViewById(R.id.content);
        if (viewFindViewById == null) {
            return;
        }
        viewFindViewById.getViewTreeObserver().removeGlobalOnLayoutListener(b);
        b = null;
    }
}
