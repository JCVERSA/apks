package com.yandex.div.core.view2.animations;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.graphics.Rect;
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

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000 \u001a2\u00020\u0001:\u0003\u001b\u0017\u0019B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\u000bJ5\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J5\u0010\u0016\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/yandex/div/core/view2/animations/VerticalTranslation;", "Lcom/yandex/div/core/view2/animations/OutlineAwareVisibility;", "", "translatedValue", "stableValue", MethodDecl.initName, "(FF)V", "Landroidx/transition/TransitionValues;", "transitionValues", "Lzfb;", "captureStartValues", "(Landroidx/transition/TransitionValues;)V", "captureEndValues", "Landroid/view/ViewGroup;", "sceneRoot", "Landroid/view/View;", "view", "startValues", "endValues", "Landroid/animation/Animator;", "onAppear", "(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;", "onDisappear", "b", "F", "c", "d", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class VerticalTranslation extends OutlineAwareVisibility {

    public final float translatedValue;

    public final float stableValue;

    public static final class a extends AnimatorListenerAdapter {
        public final View b;

        public a(View view) {
            y45.j(view, "view");
            this.b = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            this.b.setTranslationY(0.0f);
            ViewCompat.setClipBounds(this.b, null);
        }
    }

    public static final class c extends Property {
        public final Rect a;
        public float b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view) {
            super(Float.TYPE, "ClipBoundsTop");
            y45.j(view, "view");
            this.a = new Rect(0, 0, view.getWidth(), view.getHeight());
        }

        @Override
        public Float get(View view) {
            y45.j(view, "view");
            return Float.valueOf(this.b);
        }

        public void b(View view, float f) {
            y45.j(view, "view");
            this.b = f;
            if (f < 0.0f) {
                this.a.set(0, (int) ((-f) * (view.getHeight() - 1)), view.getWidth(), view.getHeight());
            } else if (f > 0.0f) {
                float f2 = 1;
                this.a.set(0, 0, view.getWidth(), (int) (((f2 - this.b) * view.getHeight()) + f2));
            } else {
                this.a.set(0, 0, view.getWidth(), view.getHeight());
            }
            ViewCompat.setClipBounds(view, this.a);
        }

        @Override
        public void set(Object obj, Object obj2) {
            b((View) obj, ((Number) obj2).floatValue());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public VerticalTranslation() {
        float f = 0.0f;
        this(f, f, 3, null);
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
                map.put("yandex:verticalTranslation:screenPosition", iArr);
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
                map.put("yandex:verticalTranslation:screenPosition", iArr);
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
        float height = view.getHeight();
        float f = this.translatedValue * height;
        float f2 = this.stableValue * height;
        Object obj = endValues.values.get("yandex:verticalTranslation:screenPosition");
        y45.h(obj, "null cannot be cast to non-null type kotlin.IntArray");
        View viewB = ViewCopiesKt.b(view, sceneRoot, this, (int[]) obj);
        viewB.setTranslationY(f);
        c cVar = new c(viewB);
        cVar.b(viewB, this.translatedValue);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(viewB, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f, f2), PropertyValuesHolder.ofFloat(cVar, this.translatedValue, this.stableValue));
        objectAnimatorOfPropertyValuesHolder.addListener(new a(view));
        return objectAnimatorOfPropertyValuesHolder;
    }

    @Override
    public Animator onDisappear(ViewGroup sceneRoot, View view, TransitionValues startValues, TransitionValues endValues) {
        y45.j(sceneRoot, "sceneRoot");
        y45.j(view, "view");
        if (startValues == null) {
            return null;
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(UtilsKt.f(this, view, sceneRoot, startValues, "yandex:verticalTranslation:screenPosition"), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, this.stableValue, this.translatedValue * view.getHeight()), PropertyValuesHolder.ofFloat(new c(view), this.stableValue, this.translatedValue));
        objectAnimatorOfPropertyValuesHolder.addListener(new a(view));
        return objectAnimatorOfPropertyValuesHolder;
    }

    public VerticalTranslation(float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? -1.0f : f, (i & 2) != 0 ? 0.0f : f2);
    }

    public VerticalTranslation(float f, float f2) {
        this.translatedValue = f;
        this.stableValue = f2;
    }
}
