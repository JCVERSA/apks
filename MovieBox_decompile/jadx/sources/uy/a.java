package uy;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.lucode.hackware.magicindicator.MagicIndicator;

public class a {

    private ValueAnimator f73271b;

    private List f73270a = new ArrayList();

    private int f73272c = 150;

    private Interpolator f73273d = new AccelerateDecelerateInterpolator();

    private Animator.AnimatorListener f73274e = new C0904a();

    private ValueAnimator.AnimatorUpdateListener f73275f = new b();

    class C0904a extends AnimatorListenerAdapter {
        C0904a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            a.this.d(0);
            a.this.f73271b = null;
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int i10 = (int) fFloatValue;
            float f10 = fFloatValue - i10;
            if (fFloatValue < 0.0f) {
                i10--;
                f10 += 1.0f;
            }
            a.this.e(i10, f10, 0);
        }
    }

    public void d(int i10) {
        Iterator it = this.f73270a.iterator();
        while (it.hasNext()) {
            ((MagicIndicator) it.next()).onPageScrollStateChanged(i10);
        }
    }

    public void e(int i10, float f10, int i11) {
        Iterator it = this.f73270a.iterator();
        while (it.hasNext()) {
            ((MagicIndicator) it.next()).onPageScrolled(i10, f10, i11);
        }
    }

    public static yy.a f(List list, int i10) {
        yy.a aVar;
        if (i10 >= 0 && i10 <= list.size() - 1) {
            return (yy.a) list.get(i10);
        }
        yy.a aVar2 = new yy.a();
        if (i10 < 0) {
            aVar = (yy.a) list.get(0);
        } else {
            i10 = (i10 - list.size()) + 1;
            aVar = (yy.a) list.get(list.size() - 1);
        }
        aVar2.f76426a = aVar.f76426a + (aVar.b() * i10);
        aVar2.f76427b = aVar.f76427b;
        aVar2.f76428c = aVar.f76428c + (aVar.b() * i10);
        aVar2.f76429d = aVar.f76429d;
        aVar2.f76430e = aVar.f76430e + (aVar.b() * i10);
        aVar2.f76431f = aVar.f76431f;
        aVar2.f76432g = aVar.f76432g + (i10 * aVar.b());
        aVar2.f76433h = aVar.f76433h;
        return aVar2;
    }
}
