package com.transsion.widgetslistitemlayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import defpackage.bq5;
import defpackage.p97;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a {
    public static final String f = "a";
    public int a;
    public final Context c;
    public boolean e;
    public final List b = new ArrayList();
    public boolean d = true;

    public class C0268a implements ValueAnimator.AnimatorUpdateListener {
        public C0268a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            float animatedFraction = valueAnimator.getAnimatedFraction();
            for (View view : a.this.b) {
                Object tag = view.getTag(R.id.os_collapse_view_info_tag);
                if (tag instanceof e) {
                    e eVar = (e) tag;
                    view.setAlpha(animatedFraction);
                    if (eVar.a() >= iIntValue) {
                        int iC = iIntValue - eVar.c();
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        layoutParams.height = iC;
                        view.setLayoutParams(layoutParams);
                        return;
                    }
                    ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                    if (layoutParams2.height != eVar.b()) {
                        bq5.c(a.f, "layoutParams.height != getHeightUsed()：" + layoutParams2.height + ", " + eVar.b());
                        layoutParams2.height = eVar.b();
                        view.setLayoutParams(layoutParams2);
                    }
                }
            }
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            a.this.e = false;
            a.this.d = true;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            a.this.e = true;
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {
        public c() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            float animatedFraction = valueAnimator.getAnimatedFraction();
            for (int size = a.this.b.size() - 1; size >= 0; size--) {
                View view = (View) a.this.b.get(size);
                Object tag = view.getTag(R.id.os_collapse_view_info_tag);
                if (tag instanceof e) {
                    e eVar = (e) tag;
                    view.setAlpha(1.0f - animatedFraction);
                    if (eVar.c() <= iIntValue) {
                        int iC = iIntValue - eVar.c();
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        layoutParams.height = iC;
                        view.setLayoutParams(layoutParams);
                        return;
                    }
                    ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                    if (layoutParams2.height != 0) {
                        bq5.c(a.f, "layoutParams.height != 0：" + layoutParams2.height);
                        layoutParams2.height = 0;
                        view.setLayoutParams(layoutParams2);
                    }
                }
            }
        }
    }

    public class d extends AnimatorListenerAdapter {
        public d() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            a.this.e = false;
            a.this.d = false;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            a.this.e = true;
        }
    }

    public static final class e {
        public int a;
        public int b;
        public int c;

        public int a() {
            return this.c;
        }

        public int b() {
            return this.a;
        }

        public int c() {
            return this.b;
        }

        public void d(int i) {
            this.c = i;
        }

        public void e(int i) {
            this.a = i;
        }

        public void f(int i) {
            this.b = i;
        }

        public String toString() {
            return "CollapseViewInfo{mHeightUsed=" + this.a + ", mTop=" + this.b + ", mBottom=" + this.c + '}';
        }
    }

    public a(Context context) {
        this.c = context;
    }

    public void e(List list) {
        this.a = g(list);
        this.d = false;
        for (View view : this.b) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = 0;
            view.setLayoutParams(layoutParams);
        }
    }

    public void f(List list, AnimatorListenerAdapter animatorListenerAdapter) {
        if (!this.e && this.d) {
            int iG = g(list);
            this.a = iG;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(iG, 0);
            valueAnimatorOfInt.setDuration(350L);
            valueAnimatorOfInt.setInterpolator(new p97());
            valueAnimatorOfInt.addUpdateListener(new c());
            if (animatorListenerAdapter != null) {
                valueAnimatorOfInt.addListener(animatorListenerAdapter);
            }
            valueAnimatorOfInt.addListener(new d());
            valueAnimatorOfInt.start();
        }
    }

    public final int g(List list) {
        e eVar;
        this.b.clear();
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            View view = (View) it.next();
            if (view != null) {
                int i2 = R.id.os_collapse_view_info_tag;
                Object tag = view.getTag(i2);
                if (tag == null) {
                    eVar = new e();
                    view.setTag(i2, eVar);
                } else {
                    eVar = tag instanceof e ? (e) tag : null;
                }
                int height = view.getHeight();
                if (eVar != null && height != 0) {
                    eVar.e(height);
                    eVar.f(i);
                    i += height;
                    eVar.d(i);
                    bq5.p(f, "compute collapse height: " + i + ", heightUsed: " + height);
                    this.b.add(view);
                }
            }
        }
        return i;
    }

    public void h(AnimatorListenerAdapter animatorListenerAdapter) {
        if (this.e || this.b.isEmpty() || this.d) {
            return;
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, this.a);
        valueAnimatorOfInt.setDuration(350L);
        valueAnimatorOfInt.setInterpolator(new p97());
        valueAnimatorOfInt.addUpdateListener(new C0268a());
        if (animatorListenerAdapter != null) {
            valueAnimatorOfInt.addListener(animatorListenerAdapter);
        }
        valueAnimatorOfInt.addListener(new b());
        valueAnimatorOfInt.start();
    }
}
