package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.ViewCompat;
import androidx.viewpager.widget.ViewPager;

public class bz6 {
    public final View a;
    public boolean b;
    public final float c;
    public float d;
    public float e;

    public bz6(View view) {
        this(view, d(view));
    }

    public static int d(View view) {
        return ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
    }

    public void a(boolean z) {
        if (this.b && z) {
            ViewCompat.dispatchNestedScroll(this.a, 0, 0, 1, 0, null);
        }
    }

    public void b() {
        this.b = false;
    }

    public void c(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.d = motionEvent.getX();
            this.e = motionEvent.getY();
            return;
        }
        if (action != 1) {
            if (action == 2) {
                float fAbs = Math.abs(motionEvent.getX() - this.d);
                float fAbs2 = Math.abs(motionEvent.getY() - this.e);
                if (this.b || fAbs < this.c || fAbs <= fAbs2) {
                    return;
                }
                this.b = true;
                ViewCompat.startNestedScroll(this.a, 1);
                return;
            }
            if (action != 3) {
                return;
            }
        }
        this.b = false;
        ViewCompat.stopNestedScroll(this.a);
    }

    public bz6(View view, float f) {
        this.a = view;
        ViewCompat.setNestedScrollingEnabled(view, true);
        this.c = f;
    }

    public bz6(ViewPager viewPager) {
        this(viewPager, d(viewPager));
    }
}
