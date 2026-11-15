package com.yandex.div.core.view2.animations;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.R;
import defpackage.e74;
import defpackage.s86;
import defpackage.y45;
import defpackage.zfb;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000 /2\u00020\u0001:\u0005/0123B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\u000bJ5\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J5\u0010\u0016\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u0015Jc\u0010#\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001c2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0002¢\u0006\u0004\b#\u0010$R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b)\u0010&\u001a\u0004\b*\u0010(R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-¨\u00064"}, d2 = {"Lcom/yandex/div/core/view2/animations/Slide;", "Lcom/yandex/div/core/view2/animations/OutlineAwareVisibility;", "", "distance", "slideEdge", MethodDecl.initName, "(II)V", "Landroidx/transition/TransitionValues;", "transitionValues", "Lzfb;", "captureStartValues", "(Landroidx/transition/TransitionValues;)V", "captureEndValues", "Landroid/view/ViewGroup;", "sceneRoot", "Landroid/view/View;", "view", "startValues", "endValues", "Landroid/animation/Animator;", "onAppear", "(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;", "onDisappear", "Landroidx/transition/Transition;", "transition", "values", "viewPositionX", "viewPositionY", "", "startX", "startY", "endX", "endY", "Landroid/animation/TimeInterpolator;", "interpolator", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Landroid/view/View;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;", "b", "I", "getDistance", "()I", "c", "getSlideEdge", "Lcom/yandex/div/core/view2/animations/Slide$g;", "d", "Lcom/yandex/div/core/view2/animations/Slide$g;", "slideCalculator", "e", "f", GslbInterceptor.HEADER_KEY_GSLB, CmcdData.STREAMING_FORMAT_HLS, CmcdData.OBJECT_TYPE_INIT_SEGMENT, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Slide extends OutlineAwareVisibility {

    public static final Companion INSTANCE = new Companion(null);
    public static final b f = new b();
    public static final d g = new d();
    public static final c h = new c();
    public static final a i = new a();

    public final int distance;

    public final int slideEdge;

    public final g slideCalculator;

    public static final class a extends i {
        @Override
        public float a(ViewGroup viewGroup, View view, int i) {
            y45.j(viewGroup, "sceneRoot");
            y45.j(view, "view");
            return view.getTranslationY() + Slide.INSTANCE.b(i, viewGroup.getHeight() - view.getTop());
        }
    }

    public static final class b extends f {
        @Override
        public float b(ViewGroup viewGroup, View view, int i) {
            y45.j(viewGroup, "sceneRoot");
            y45.j(view, "view");
            return view.getTranslationX() - Slide.INSTANCE.b(i, view.getRight());
        }
    }

    public static final class c extends f {
        @Override
        public float b(ViewGroup viewGroup, View view, int i) {
            y45.j(viewGroup, "sceneRoot");
            y45.j(view, "view");
            return view.getTranslationX() + Slide.INSTANCE.b(i, viewGroup.getWidth() - view.getLeft());
        }
    }

    public static final class d extends i {
        @Override
        public float a(ViewGroup viewGroup, View view, int i) {
            y45.j(viewGroup, "sceneRoot");
            y45.j(view, "view");
            return view.getTranslationY() - Slide.INSTANCE.b(i, view.getBottom());
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int b(int i, int i2) {
            return i == -1 ? i2 : i;
        }

        public Companion() {
        }
    }

    public static abstract class f implements g {
        @Override
        public float a(ViewGroup viewGroup, View view, int i) {
            y45.j(viewGroup, "sceneRoot");
            y45.j(view, "view");
            return view.getTranslationY();
        }
    }

    public interface g {
        float a(ViewGroup viewGroup, View view, int i);

        float b(ViewGroup viewGroup, View view, int i);
    }

    public static final class h extends AnimatorListenerAdapter implements Transition.TransitionListener {
        public final View b;
        public final View c;
        public final float d;
        public final float e;
        public final int f;
        public final int g;
        public int[] h;
        public float i;
        public float j;

        public h(View view, View view2, int i, int i2, float f, float f2) {
            y45.j(view, "originalView");
            y45.j(view2, "movingView");
            this.b = view;
            this.c = view2;
            this.d = f;
            this.e = f2;
            this.f = i - s86.c(view2.getTranslationX());
            this.g = i2 - s86.c(view2.getTranslationY());
            int i3 = R.id.div_transition_position;
            Object tag = view.getTag(i3);
            int[] iArr = tag instanceof int[] ? (int[]) tag : null;
            this.h = iArr;
            if (iArr != null) {
                view.setTag(i3, null);
            }
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            if (this.h == null) {
                this.h = new int[]{this.f + s86.c(this.c.getTranslationX()), this.g + s86.c(this.c.getTranslationY())};
            }
            this.b.setTag(R.id.div_transition_position, this.h);
        }

        @Override
        public void onAnimationPause(Animator animator) {
            y45.j(animator, "animator");
            this.i = this.c.getTranslationX();
            this.j = this.c.getTranslationY();
            this.c.setTranslationX(this.d);
            this.c.setTranslationY(this.e);
        }

        @Override
        public void onAnimationResume(Animator animator) {
            y45.j(animator, "animator");
            this.c.setTranslationX(this.i);
            this.c.setTranslationY(this.j);
        }

        @Override
        public void onTransitionCancel(Transition transition) {
            y45.j(transition, "transition");
        }

        @Override
        public void onTransitionEnd(Transition transition) {
            y45.j(transition, "transition");
            this.c.setTranslationX(this.d);
            this.c.setTranslationY(this.e);
            transition.removeListener(this);
        }

        @Override
        public void onTransitionPause(Transition transition) {
            y45.j(transition, "transition");
        }

        @Override
        public void onTransitionResume(Transition transition) {
            y45.j(transition, "transition");
        }

        @Override
        public void onTransitionStart(Transition transition) {
            y45.j(transition, "transition");
        }
    }

    public static abstract class i implements g {
        @Override
        public float b(ViewGroup viewGroup, View view, int i) {
            y45.j(viewGroup, "sceneRoot");
            y45.j(view, "view");
            return view.getTranslationX();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Slide() {
        int i2 = 0;
        this(i2, i2, 3, null);
    }

    public final Animator a(View view, Transition transition, TransitionValues values, int viewPositionX, int viewPositionY, float startX, float startY, float endX, float endY, TimeInterpolator interpolator) {
        float f2;
        float f3;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        Object tag = values.view.getTag(R.id.div_transition_position);
        int[] iArr = tag instanceof int[] ? (int[]) tag : null;
        if (iArr != null) {
            f2 = (iArr[0] - viewPositionX) + translationX;
            f3 = (iArr[1] - viewPositionY) + translationY;
        } else {
            f2 = startX;
            f3 = startY;
        }
        int iC = viewPositionX + s86.c(f2 - translationX);
        int iC2 = viewPositionY + s86.c(f3 - translationY);
        view.setTranslationX(f2);
        view.setTranslationY(f3);
        if (f2 == endX && f3 == endY) {
            return null;
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f2, endX), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f3, endY));
        y45.i(objectAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(\n…, startY, endY)\n        )");
        View view2 = values.view;
        y45.i(view2, "values.view");
        h hVar = new h(view2, view, iC, iC2, translationX, translationY);
        transition.addListener(hVar);
        objectAnimatorOfPropertyValuesHolder.addListener(hVar);
        objectAnimatorOfPropertyValuesHolder.addPauseListener(hVar);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(interpolator);
        return objectAnimatorOfPropertyValuesHolder;
    }

    @Override
    public void captureEndValues(final TransitionValues transitionValues) {
        y45.j(transitionValues, "transitionValues");
        super.captureEndValues(transitionValues);
        UtilsKt.c(transitionValues, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((int[]) obj);
                return zfb.a;
            }

            public final void invoke(int[] iArr) {
                y45.j(iArr, "position");
                Map<String, Object> map = transitionValues.values;
                y45.i(map, "transitionValues.values");
                map.put("yandex:slide:screenPosition", iArr);
            }
        });
    }

    @Override
    public void captureStartValues(final TransitionValues transitionValues) {
        y45.j(transitionValues, "transitionValues");
        super.captureStartValues(transitionValues);
        UtilsKt.c(transitionValues, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((int[]) obj);
                return zfb.a;
            }

            public final void invoke(int[] iArr) {
                y45.j(iArr, "position");
                Map<String, Object> map = transitionValues.values;
                y45.i(map, "transitionValues.values");
                map.put("yandex:slide:screenPosition", iArr);
            }
        });
    }

    @Override
    public Animator onAppear(ViewGroup sceneRoot, View view, TransitionValues startValues, TransitionValues endValues) {
        y45.j(sceneRoot, "sceneRoot");
        y45.j(view, "view");
        if (endValues == null) {
            return null;
        }
        Object obj = endValues.values.get("yandex:slide:screenPosition");
        y45.h(obj, "null cannot be cast to non-null type kotlin.IntArray");
        int[] iArr = (int[]) obj;
        return a(ViewCopiesKt.b(view, sceneRoot, this, iArr), this, endValues, iArr[0], iArr[1], this.slideCalculator.b(sceneRoot, view, this.distance), this.slideCalculator.a(sceneRoot, view, this.distance), view.getTranslationX(), view.getTranslationY(), getInterpolator());
    }

    @Override
    public Animator onDisappear(ViewGroup sceneRoot, View view, TransitionValues startValues, TransitionValues endValues) {
        y45.j(sceneRoot, "sceneRoot");
        y45.j(view, "view");
        if (startValues == null) {
            return null;
        }
        Object obj = startValues.values.get("yandex:slide:screenPosition");
        y45.h(obj, "null cannot be cast to non-null type kotlin.IntArray");
        int[] iArr = (int[]) obj;
        return a(UtilsKt.f(this, view, sceneRoot, startValues, "yandex:slide:screenPosition"), this, startValues, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.slideCalculator.b(sceneRoot, view, this.distance), this.slideCalculator.a(sceneRoot, view, this.distance), getInterpolator());
    }

    public Slide(int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? -1 : i2, (i4 & 2) != 0 ? 80 : i3);
    }

    public Slide(int i2, int i3) {
        g gVar;
        this.distance = i2;
        this.slideEdge = i3;
        if (i3 == 3) {
            gVar = f;
        } else if (i3 == 5) {
            gVar = h;
        } else if (i3 != 48) {
            gVar = i;
        } else {
            gVar = g;
        }
        this.slideCalculator = gVar;
    }
}
