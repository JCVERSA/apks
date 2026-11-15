package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

public class h {

    private Interpolator f1008c;

    ViewPropertyAnimatorListener f1009d;

    private boolean f1010e;

    private long f1007b = -1;

    private final ViewPropertyAnimatorListenerAdapter f1011f = new a();

    final ArrayList f1006a = new ArrayList();

    class a extends ViewPropertyAnimatorListenerAdapter {

        private boolean f1012a = false;

        private int f1013b = 0;

        a() {
        }

        void a() {
            this.f1013b = 0;
            this.f1012a = false;
            h.this.b();
        }

        @Override
        public void onAnimationEnd(View view) {
            int i10 = this.f1013b + 1;
            this.f1013b = i10;
            if (i10 == h.this.f1006a.size()) {
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = h.this.f1009d;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.onAnimationEnd(null);
                }
                a();
            }
        }

        @Override
        public void onAnimationStart(View view) {
            if (this.f1012a) {
                return;
            }
            this.f1012a = true;
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = h.this.f1009d;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.onAnimationStart(null);
            }
        }
    }

    public void a() {
        if (this.f1010e) {
            Iterator it = this.f1006a.iterator();
            while (it.hasNext()) {
                ((ViewPropertyAnimatorCompat) it.next()).cancel();
            }
            this.f1010e = false;
        }
    }

    void b() {
        this.f1010e = false;
    }

    public h c(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        if (!this.f1010e) {
            this.f1006a.add(viewPropertyAnimatorCompat);
        }
        return this;
    }

    public h d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2) {
        this.f1006a.add(viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompat2.setStartDelay(viewPropertyAnimatorCompat.getDuration());
        this.f1006a.add(viewPropertyAnimatorCompat2);
        return this;
    }

    public h e(long j10) {
        if (!this.f1010e) {
            this.f1007b = j10;
        }
        return this;
    }

    public h f(Interpolator interpolator) {
        if (!this.f1010e) {
            this.f1008c = interpolator;
        }
        return this;
    }

    public h g(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (!this.f1010e) {
            this.f1009d = viewPropertyAnimatorListener;
        }
        return this;
    }

    public void h() {
        if (this.f1010e) {
            return;
        }
        for (ViewPropertyAnimatorCompat viewPropertyAnimatorCompat : this.f1006a) {
            long j10 = this.f1007b;
            if (j10 >= 0) {
                viewPropertyAnimatorCompat.setDuration(j10);
            }
            Interpolator interpolator = this.f1008c;
            if (interpolator != null) {
                viewPropertyAnimatorCompat.setInterpolator(interpolator);
            }
            if (this.f1009d != null) {
                viewPropertyAnimatorCompat.setListener(this.f1011f);
            }
            viewPropertyAnimatorCompat.start();
        }
        this.f1010e = true;
    }
}
