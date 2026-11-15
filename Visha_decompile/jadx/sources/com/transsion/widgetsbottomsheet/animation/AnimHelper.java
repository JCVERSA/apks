package com.transsion.widgetsbottomsheet.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.core.view.OneShotPreDrawListener;
import com.transsion.widgetsbottomsheet.animation.AnimHelper;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBottomSheetPanel;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import defpackage.f43;
import defpackage.jv9;
import defpackage.kv9;
import defpackage.olb;
import defpackage.p97;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class AnimHelper {
    public static AnimatorSet b;
    public static final AnimHelper a = new AnimHelper();
    public static final Interpolator c = new p97();
    public static final Interpolator d = new p97();

    public static final class ContentHeightWrapper {
        public final ViewGroup a;
        public LayoutTransition b;
        public WeakReference c;

        public ContentHeightWrapper(ViewGroup viewGroup) {
            y45.j(viewGroup, "view");
            this.a = viewGroup;
        }

        public final void c(View view) {
            y45.j(view, "panel");
            this.c = new WeakReference(view);
        }

        public final void d() {
            View view;
            final LayoutTransition layoutTransition = this.b;
            this.b = null;
            ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
            layoutParams.height = -2;
            this.a.setLayoutParams(layoutParams);
            WeakReference weakReference = this.c;
            if (weakReference != null && (view = (View) weakReference.get()) != null && (view instanceof OSBottomSheetPanel)) {
                ((OSBottomSheetPanel) view).setMFixedHeight(false);
            }
            if (layoutTransition != null) {
                final ViewGroup viewGroup = this.a;
                y45.i(OneShotPreDrawListener.add(viewGroup, new Runnable() {
                    @Override
                    public final void run() {
                        WeakReference weakReference2 = this.c;
                        View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
                        OSBottomSheetPanel oSBottomSheetPanel = view2 instanceof OSBottomSheetPanel ? (OSBottomSheetPanel) view2 : null;
                        if (this.a.getLayoutTransition() == null) {
                            if (oSBottomSheetPanel == null || !oSBottomSheetPanel.getMFixedHeight()) {
                                this.a.setLayoutTransition(layoutTransition);
                            }
                        }
                    }
                }), "View.doOnPreDraw(\n    cr…dd(this) { action(this) }");
            }
        }

        public final void e(int i) {
            if (this.a.getLayoutTransition() != null) {
                this.b = this.a.getLayoutTransition();
                this.a.setLayoutTransition(null);
            }
            ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
            if (layoutParams.height != i) {
                layoutParams.height = i;
                this.a.setLayoutParams(layoutParams);
            }
        }
    }

    public interface a {
        void a();
    }

    public static final class b extends AnimatorListenerAdapter {
        public boolean b;
        public final View c;
        public final float d;
        public final boolean e;
        public final OSPageView f;
        public final a g;

        public b(View view, float f, boolean z, OSPageView oSPageView, a aVar) {
            this.c = view;
            this.d = f;
            this.e = z;
            this.f = oSPageView;
            this.g = aVar;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            this.b = true;
            AnimHelper.a.n(this.c, null);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            if (this.b) {
                return;
            }
            AnimHelper.a.n(this.c, null);
            if (this.e) {
                this.f.setVisibility(8);
            }
            a aVar = this.g;
            if (aVar != null) {
                aVar.a();
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            this.c.setTranslationX(this.d);
            this.c.setAlpha(1.0f);
        }
    }

    public static final class c extends AnimatorListenerAdapter {
        public boolean b;
        public final OSPageView c;
        public final View d;
        public final float e;
        public final a f;

        public c(OSPageView oSPageView, View view, float f, a aVar) {
            this.c = oSPageView;
            this.d = view;
            this.e = f;
            this.f = aVar;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            this.b = true;
            AnimHelper.a.n(this.d, null);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            if (this.b) {
                return;
            }
            AnimHelper.a.n(this.d, this.f);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            this.c.setVisibility(0);
            this.d.setTranslationX(this.e);
            this.d.setAlpha(0.0f);
        }
    }

    public static final class d extends AnimatorListenerAdapter {
        public boolean b;
        public final ContentHeightWrapper c;
        public final int d;
        public final a e;
        public final ViewGroup f;

        public d(ContentHeightWrapper contentHeightWrapper, int i, a aVar, ViewGroup viewGroup) {
            this.c = contentHeightWrapper;
            this.d = i;
            this.e = aVar;
            this.f = viewGroup;
        }

        public static final void b(ContentHeightWrapper contentHeightWrapper) {
            y45.j(contentHeightWrapper, "$wrapper");
            contentHeightWrapper.d();
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            this.b = true;
            this.c.d();
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            if (this.b) {
                return;
            }
            a aVar = this.e;
            if (aVar != null) {
                aVar.a();
            }
            ViewGroup viewGroup = this.f;
            final ContentHeightWrapper contentHeightWrapper = this.c;
            viewGroup.post(new Runnable() {
                @Override
                public final void run() {
                    AnimHelper.d.b(contentHeightWrapper);
                }
            });
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            this.c.e(this.d);
        }
    }

    public static final class e extends AnimatorListenerAdapter {
        public boolean b;
        public final View c;
        public final float d;
        public final float e;

        public e(View view, float f, float f2) {
            this.c = view;
            this.d = f;
            this.e = f2;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            this.b = true;
            this.c.setAlpha(1.0f);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            if (this.b) {
                return;
            }
            this.c.setAlpha(this.e);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            this.c.setAlpha(this.d);
        }
    }

    public static final class f extends AnimatorListenerAdapter {
        public boolean b;
        public final List c;
        public final float d;
        public final float e;
        public final ArrayList f;
        public final boolean g;
        public final float h;
        public final float i;

        public f(List list, float f, float f2, ArrayList arrayList, boolean z, float f3, float f4) {
            this.c = list;
            this.d = f;
            this.e = f2;
            this.f = arrayList;
            this.g = z;
            this.h = f3;
            this.i = f4;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            this.b = true;
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                ((jv9) it.next()).c();
            }
            AnimHelper.a.o(this.c);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            if (this.b) {
                return;
            }
            if (!this.g) {
                AnimHelper.a.i(this.c, this.h, this.i);
                return;
            }
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                ((jv9) it.next()).c();
            }
            AnimHelper.a.o(this.c);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            AnimHelper.a.i(this.c, this.d, this.e);
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                ((jv9) it.next()).p();
            }
        }
    }

    public static final class g implements a {
        public final OSPageView a;

        public g(OSPageView oSPageView) {
            this.a = oSPageView;
        }

        @Override
        public void a() {
            this.a.setVisibility(8);
        }
    }

    public final AnimatorSet d(OSPageView oSPageView, View view, float f2, float f3, long j, boolean z, a aVar) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_X, f2, f3);
        objectAnimatorOfFloat.setDuration(350L);
        objectAnimatorOfFloat.setInterpolator(d);
        zfb zfbVar = zfb.a;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 1.0f, 0.0f);
        objectAnimatorOfFloat2.setDuration(j);
        objectAnimatorOfFloat2.setInterpolator(c);
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        animatorSet.addListener(new b(view, f2, z, oSPageView, aVar));
        return animatorSet;
    }

    public final AnimatorSet e(OSPageView oSPageView, View view, float f2, float f3, long j, long j2, a aVar) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_X, f2, f3);
        objectAnimatorOfFloat.setDuration(350L);
        objectAnimatorOfFloat.setInterpolator(d);
        zfb zfbVar = zfb.a;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f);
        objectAnimatorOfFloat2.setDuration(j);
        objectAnimatorOfFloat2.setInterpolator(c);
        objectAnimatorOfFloat2.setStartDelay(j2);
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        animatorSet.addListener(new c(oSPageView, view, f2, aVar));
        return animatorSet;
    }

    public final ValueAnimator f(View view, ViewGroup viewGroup, int i, int i2, long j, long j2, a aVar) {
        if (view instanceof OSBottomSheetPanel) {
            ((OSBottomSheetPanel) view).setMFixedHeight(true);
        }
        int minimumHeight = viewGroup.getMinimumHeight();
        int iMax = Math.max(i, minimumHeight);
        int iMax2 = Math.max(i2, minimumHeight);
        ContentHeightWrapper contentHeightWrapper = new ContentHeightWrapper(viewGroup);
        contentHeightWrapper.c(view);
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(contentHeightWrapper, "height", iMax, iMax2);
        y45.i(objectAnimatorOfInt, "ofInt(\n            wrapp…, start, target\n        )");
        objectAnimatorOfInt.setDuration(j);
        objectAnimatorOfInt.setInterpolator(d);
        objectAnimatorOfInt.setStartDelay(j2);
        objectAnimatorOfInt.addListener(new d(contentHeightWrapper, iMax, aVar, viewGroup));
        return objectAnimatorOfInt;
    }

    public final ObjectAnimator g(OSPageView oSPageView, float f2, float f3, long j) {
        View titleView = oSPageView.getTitleView();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(titleView, (Property<View, Float>) View.ALPHA, f2, f3);
        objectAnimatorOfFloat.setDuration(100L);
        objectAnimatorOfFloat.setStartDelay(j);
        objectAnimatorOfFloat.setInterpolator(c);
        objectAnimatorOfFloat.addListener(new e(titleView, f2, f3));
        y45.i(objectAnimatorOfFloat, "ofFloat(titleView, View.…\n            })\n        }");
        return objectAnimatorOfFloat;
    }

    public final AnimatorSet h(OSPageView oSPageView, float f2, float f3, float f4, float f5, boolean z) {
        List<View> listL = l(oSPageView);
        AnimatorSet animatorSet = new AnimatorSet();
        if (!listL.isEmpty()) {
            ArrayList arrayList = new ArrayList(listL.size());
            ArrayList arrayList2 = new ArrayList(listL.size() * 2);
            for (View view : listL) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, f2, f3);
                objectAnimatorOfFloat.setDuration(100L);
                objectAnimatorOfFloat.setInterpolator(c);
                arrayList.add(objectAnimatorOfFloat);
                view.setScaleX(f4);
                view.setScaleY(f4);
                AnimHelper animHelper = a;
                f43.s sVar = f43.q;
                y45.i(sVar, "SCALE_X");
                arrayList2.add(animHelper.k(view, sVar, f5));
                f43.s sVar2 = f43.r;
                y45.i(sVar2, "SCALE_Y");
                arrayList2.add(animHelper.k(view, sVar2, f5));
            }
            animatorSet.playTogether(arrayList);
            animatorSet.addListener(new f(listL, f2, f4, arrayList2, z, f3, f5));
        }
        return animatorSet;
    }

    public final void i(List list, float f2, float f3) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            view.setAlpha(f2);
            view.setScaleX(f3);
            view.setScaleY(f3);
        }
    }

    public final void j(View view, ViewGroup viewGroup, OSPageView oSPageView, OSPageView oSPageView2, boolean z, int i, int i2, a aVar) {
        y45.j(view, "dragView");
        y45.j(viewGroup, "panelContent");
        y45.j(oSPageView, "hideView");
        y45.j(oSPageView2, "showView");
        y45.j(aVar, "callBack");
        q(view, viewGroup, oSPageView, oSPageView2, z, i, i2, 0.0f, 50.0f, -50.0f, 0.0f, aVar);
    }

    public final jv9 k(View view, f43.s sVar, float f2) {
        jv9 jv9Var = new jv9(view, sVar, f2);
        jv9Var.k(0.002f);
        kv9 kv9Var = new kv9(f2);
        kv9Var.i(400.0f);
        kv9Var.g(0.79f);
        jv9Var.z(kv9Var);
        return jv9Var;
    }

    public final List l(OSPageView oSPageView) {
        List listN = y71.n(oSPageView.getLeftIconView(), oSPageView.getRightIconView(), oSPageView.getLeftButtonView(), oSPageView.getRightButtonView());
        ArrayList arrayList = new ArrayList();
        for (Object obj : listN) {
            if (((OSLiquidContainerRootLayout) obj).getVisibility() == 0) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void m() {
        AnimatorSet animatorSet = b;
        if (animatorSet != null) {
            if (animatorSet.isRunning()) {
                animatorSet.cancel();
            }
            Iterator<Animator> it = animatorSet.getChildAnimations().iterator();
            while (it.hasNext()) {
                it.next().removeAllListeners();
            }
            animatorSet.removeAllListeners();
            b = null;
        }
    }

    public final void n(View view, a aVar) {
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        if (aVar != null) {
            aVar.a();
        }
    }

    public final void o(List list) {
        i(list, 1.0f, 1.0f);
    }

    public final void p(View view, ViewGroup viewGroup, OSPageView oSPageView, OSPageView oSPageView2, boolean z, int i, int i2, a aVar) {
        y45.j(view, "dragView");
        y45.j(viewGroup, "panelContent");
        y45.j(oSPageView, "hideView");
        y45.j(oSPageView2, "showView");
        y45.j(aVar, "callBack");
        q(view, viewGroup, oSPageView, oSPageView2, z, i, i2, 0.0f, -50.0f, 50.0f, 0.0f, aVar);
    }

    public final void q(View view, ViewGroup viewGroup, OSPageView oSPageView, OSPageView oSPageView2, boolean z, int i, int i2, float f2, float f3, float f4, float f5, a aVar) {
        AnimatorSet animatorSet = b;
        if (animatorSet != null && animatorSet.isRunning()) {
            animatorSet.cancel();
        }
        View mContentView = oSPageView.getMContentView();
        OSPageView oSPageView3 = mContentView == null ? oSPageView : mContentView;
        View mContentView2 = oSPageView2.getMContentView();
        if (mContentView2 == null) {
            mContentView2 = oSPageView2;
        }
        for (OSPageView oSPageView4 : y71.n(oSPageView, oSPageView2)) {
            oSPageView4.setAlpha(1.0f);
            oSPageView4.setTranslationX(0.0f);
        }
        b = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        arrayList.add(d(oSPageView, oSPageView3, olb.h(oSPageView3.getContext(), (int) f2), olb.h(oSPageView3.getContext(), (int) f3), 100L, !z, null));
        arrayList.add(g(oSPageView, 1.0f, 0.0f, 0L));
        arrayList.add(h(oSPageView, 1.0f, 0.0f, 1.0f, 0.0f, false));
        arrayList.add(e(oSPageView2, mContentView2, olb.h(mContentView2.getContext(), (int) f4), olb.h(mContentView2.getContext(), (int) f5), 200L, 50L, aVar));
        arrayList.add(g(oSPageView2, 0.0f, 1.0f, 50L));
        arrayList.add(h(oSPageView2, 0.0f, 1.0f, 0.0f, 1.0f, true));
        if (z) {
            arrayList.add(f(view, viewGroup, i, i2, 350L, 0L, new g(oSPageView)));
        }
        AnimatorSet animatorSet2 = b;
        y45.g(animatorSet2);
        animatorSet2.playTogether(arrayList);
        AnimatorSet animatorSet3 = b;
        y45.g(animatorSet3);
        animatorSet3.start();
    }
}
