package com.yandex.div.core.view2.animations;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.transition.TransitionValues;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0000\u0018\u0000 \u00172\u00020\u0001:\u0002\u001b\u001dB\u0011\u0012\b\b\u0003\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ5\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J5\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J!\u0010\u0017\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u001b\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lcom/yandex/div/core/view2/animations/Fade;", "Lcom/yandex/div/core/view2/animations/OutlineAwareVisibility;", "", "alpha", MethodDecl.initName, "(F)V", "Landroidx/transition/TransitionValues;", "transitionValues", "Lzfb;", "captureStartValues", "(Landroidx/transition/TransitionValues;)V", "captureEndValues", "Landroid/view/ViewGroup;", "sceneRoot", "Landroid/view/View;", "view", "startValues", "endValues", "Landroid/animation/Animator;", "onAppear", "(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;", "onDisappear", "fallbackValue", "c", "(Landroidx/transition/TransitionValues;F)F", "startAlpha", "endAlpha", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Landroid/view/View;FF)Landroid/animation/Animator;", "b", "F", "getAlpha", "()F", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Fade extends OutlineAwareVisibility {

    public final float alpha;

    public static final class b extends AnimatorListenerAdapter {
        public final View b;
        public final float c;
        public boolean d;

        public b(View view, float f) {
            y45.j(view, "view");
            this.b = view;
            this.c = f;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            this.b.setAlpha(this.c);
            if (this.d) {
                this.b.setLayerType(0, null);
            }
            animator.removeListener(this);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            this.b.setVisibility(0);
            if (ViewCompat.hasOverlappingRendering(this.b) && this.b.getLayerType() == 0) {
                this.d = true;
                this.b.setLayerType(2, null);
            }
        }
    }

    public Fade() {
        this(0.0f, 1, null);
    }

    public final Animator a(View view, float startAlpha, float endAlpha) {
        if (startAlpha == endAlpha) {
            return null;
        }
        view.setAlpha(startAlpha);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, startAlpha, endAlpha);
        objectAnimatorOfFloat.addListener(new b(view, view.getAlpha()));
        return objectAnimatorOfFloat;
    }

    public final float c(TransitionValues transitionValues, float fallbackValue) {
        Map<String, Object> map;
        Object obj = (transitionValues == null || (map = transitionValues.values) == null) ? null : map.get("yandex:fade:alpha");
        Float f = obj instanceof Float ? (Float) obj : null;
        return f != null ? f.floatValue() : fallbackValue;
    }

    @Override
    public void captureEndValues(final TransitionValues transitionValues) {
        y45.j(transitionValues, "transitionValues");
        super.captureEndValues(transitionValues);
        int mode = getMode();
        if (mode == 1) {
            Map<String, Object> map = transitionValues.values;
            y45.i(map, "transitionValues.values");
            map.put("yandex:fade:alpha", Float.valueOf(transitionValues.view.getAlpha()));
        } else if (mode == 2) {
            Map<String, Object> map2 = transitionValues.values;
            y45.i(map2, "transitionValues.values");
            map2.put("yandex:fade:alpha", Float.valueOf(this.alpha));
        }
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
                Map<String, Object> map3 = transitionValues.values;
                y45.i(map3, "transitionValues.values");
                map3.put("yandex:fade:screenPosition", iArr);
            }
        });
    }

    @Override
    public void captureStartValues(final TransitionValues transitionValues) {
        y45.j(transitionValues, "transitionValues");
        super.captureStartValues(transitionValues);
        int mode = getMode();
        if (mode == 1) {
            Map<String, Object> map = transitionValues.values;
            y45.i(map, "transitionValues.values");
            map.put("yandex:fade:alpha", Float.valueOf(this.alpha));
        } else if (mode == 2) {
            Map<String, Object> map2 = transitionValues.values;
            y45.i(map2, "transitionValues.values");
            map2.put("yandex:fade:alpha", Float.valueOf(transitionValues.view.getAlpha()));
        }
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
                Map<String, Object> map3 = transitionValues.values;
                y45.i(map3, "transitionValues.values");
                map3.put("yandex:fade:screenPosition", iArr);
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
        float fC = c(startValues, this.alpha);
        float fC2 = c(endValues, 1.0f);
        Object obj = endValues.values.get("yandex:fade:screenPosition");
        y45.h(obj, "null cannot be cast to non-null type kotlin.IntArray");
        return a(ViewCopiesKt.b(view, sceneRoot, this, (int[]) obj), fC, fC2);
    }

    @Override
    public Animator onDisappear(ViewGroup sceneRoot, View view, TransitionValues startValues, TransitionValues endValues) {
        y45.j(sceneRoot, "sceneRoot");
        y45.j(view, "view");
        if (startValues == null) {
            return null;
        }
        return a(UtilsKt.f(this, view, sceneRoot, startValues, "yandex:fade:screenPosition"), c(startValues, 1.0f), c(endValues, this.alpha));
    }

    public Fade(float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f);
    }

    public Fade(float f) {
        this.alpha = f;
    }
}
