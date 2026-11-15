package com.yandex.div.core.view2.animations;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.transition.TransitionValues;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0000\u0018\u0000 \u00182\u00020\u0001:\u0002'$B%\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\fJ5\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J5\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0018\u0010\fJ\u0017\u0010\u0019\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0019\u0010\fJ!\u0010\u001b\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001a\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ!\u0010\u001d\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001a\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001d\u0010\u001cJ9\u0010\"\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\"\u0010#R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010%R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010%¨\u0006("}, d2 = {"Lcom/yandex/div/core/view2/animations/Scale;", "Lcom/yandex/div/core/view2/animations/OutlineAwareVisibility;", "", "scaleFactor", "pivotX", "pivotY", MethodDecl.initName, "(FFF)V", "Landroidx/transition/TransitionValues;", "transitionValues", "Lzfb;", "captureStartValues", "(Landroidx/transition/TransitionValues;)V", "captureEndValues", "Landroid/view/ViewGroup;", "sceneRoot", "Landroid/view/View;", "view", "startValues", "endValues", "Landroid/animation/Animator;", "onAppear", "(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;", "onDisappear", "e", "d", "fallbackValue", GslbInterceptor.HEADER_KEY_GSLB, "(Landroidx/transition/TransitionValues;F)F", CmcdData.STREAMING_FORMAT_HLS, "startScaleX", "startScaleY", "endScaleX", "endScaleY", "f", "(Landroid/view/View;FFFF)Landroid/animation/Animator;", "b", "F", "c", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Scale extends OutlineAwareVisibility {

    public final float scaleFactor;

    public final float pivotX;

    public final float pivotY;

    public final class b extends AnimatorListenerAdapter {
        public final View b;
        public final float c;
        public final float d;
        public boolean e;
        public final Scale f;

        public b(Scale scale, View view, float f, float f2) {
            y45.j(view, "view");
            this.f = scale;
            this.b = view;
            this.c = f;
            this.d = f2;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            this.b.setScaleX(this.c);
            this.b.setScaleY(this.d);
            if (this.e) {
                this.b.resetPivot();
            }
            animator.removeListener(this);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            this.b.setVisibility(0);
            if (this.f.pivotX == 0.5f && this.f.pivotY == 0.5f) {
                return;
            }
            this.e = true;
            View view = this.b;
            view.setPivotX(view.getWidth() * this.f.pivotX);
            View view2 = this.b;
            view2.setPivotY(view2.getHeight() * this.f.pivotY);
        }
    }

    public Scale(float f, float f2, float f3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, (i & 2) != 0 ? 0.5f : f2, (i & 4) != 0 ? 0.5f : f3);
    }

    @Override
    public void captureEndValues(final TransitionValues transitionValues) {
        y45.j(transitionValues, "transitionValues");
        float scaleX = transitionValues.view.getScaleX();
        float scaleY = transitionValues.view.getScaleY();
        transitionValues.view.setScaleX(1.0f);
        transitionValues.view.setScaleY(1.0f);
        super.captureEndValues(transitionValues);
        transitionValues.view.setScaleX(scaleX);
        transitionValues.view.setScaleY(scaleY);
        d(transitionValues);
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
                map.put("yandex:scale:screenPosition", iArr);
            }
        });
    }

    @Override
    public void captureStartValues(final TransitionValues transitionValues) {
        y45.j(transitionValues, "transitionValues");
        float scaleX = transitionValues.view.getScaleX();
        float scaleY = transitionValues.view.getScaleY();
        transitionValues.view.setScaleX(1.0f);
        transitionValues.view.setScaleY(1.0f);
        super.captureStartValues(transitionValues);
        transitionValues.view.setScaleX(scaleX);
        transitionValues.view.setScaleY(scaleY);
        e(transitionValues);
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
                map.put("yandex:scale:screenPosition", iArr);
            }
        });
    }

    public final void d(TransitionValues transitionValues) {
        int mode = getMode();
        if (mode == 1) {
            Map<String, Object> map = transitionValues.values;
            y45.i(map, "transitionValues.values");
            map.put("yandex:scale:scaleX", Float.valueOf(1.0f));
            Map<String, Object> map2 = transitionValues.values;
            y45.i(map2, "transitionValues.values");
            map2.put("yandex:scale:scaleY", Float.valueOf(1.0f));
            return;
        }
        if (mode != 2) {
            return;
        }
        Map<String, Object> map3 = transitionValues.values;
        y45.i(map3, "transitionValues.values");
        map3.put("yandex:scale:scaleX", Float.valueOf(this.scaleFactor));
        Map<String, Object> map4 = transitionValues.values;
        y45.i(map4, "transitionValues.values");
        map4.put("yandex:scale:scaleY", Float.valueOf(this.scaleFactor));
    }

    public final void e(TransitionValues transitionValues) {
        View view = transitionValues.view;
        int mode = getMode();
        if (mode == 1) {
            Map<String, Object> map = transitionValues.values;
            y45.i(map, "transitionValues.values");
            map.put("yandex:scale:scaleX", Float.valueOf(this.scaleFactor));
            Map<String, Object> map2 = transitionValues.values;
            y45.i(map2, "transitionValues.values");
            map2.put("yandex:scale:scaleY", Float.valueOf(this.scaleFactor));
            return;
        }
        if (mode != 2) {
            return;
        }
        Map<String, Object> map3 = transitionValues.values;
        y45.i(map3, "transitionValues.values");
        map3.put("yandex:scale:scaleX", Float.valueOf(view.getScaleX()));
        Map<String, Object> map4 = transitionValues.values;
        y45.i(map4, "transitionValues.values");
        map4.put("yandex:scale:scaleY", Float.valueOf(view.getScaleY()));
    }

    public final Animator f(View view, float startScaleX, float startScaleY, float endScaleX, float endScaleY) {
        if (startScaleX == endScaleX && startScaleY == endScaleY) {
            return null;
        }
        view.setVisibility(4);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, startScaleX, endScaleX), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, startScaleY, endScaleY));
        objectAnimatorOfPropertyValuesHolder.addListener(new b(this, view, view.getScaleX(), view.getScaleY()));
        return objectAnimatorOfPropertyValuesHolder;
    }

    public final float g(TransitionValues transitionValues, float fallbackValue) {
        Map<String, Object> map;
        Object obj = (transitionValues == null || (map = transitionValues.values) == null) ? null : map.get("yandex:scale:scaleX");
        Float f = obj instanceof Float ? (Float) obj : null;
        return f != null ? f.floatValue() : fallbackValue;
    }

    public final float h(TransitionValues transitionValues, float fallbackValue) {
        Map<String, Object> map;
        Object obj = (transitionValues == null || (map = transitionValues.values) == null) ? null : map.get("yandex:scale:scaleY");
        Float f = obj instanceof Float ? (Float) obj : null;
        return f != null ? f.floatValue() : fallbackValue;
    }

    @Override
    public Animator onAppear(ViewGroup sceneRoot, View view, TransitionValues startValues, TransitionValues endValues) {
        y45.j(sceneRoot, "sceneRoot");
        y45.j(view, "view");
        if (endValues == null) {
            return null;
        }
        float fG = g(startValues, this.scaleFactor);
        float fH = h(startValues, this.scaleFactor);
        float fG2 = g(endValues, 1.0f);
        float fH2 = h(endValues, 1.0f);
        Object obj = endValues.values.get("yandex:scale:screenPosition");
        y45.h(obj, "null cannot be cast to non-null type kotlin.IntArray");
        return f(ViewCopiesKt.b(view, sceneRoot, this, (int[]) obj), fG, fH, fG2, fH2);
    }

    @Override
    public Animator onDisappear(ViewGroup sceneRoot, View view, TransitionValues startValues, TransitionValues endValues) {
        y45.j(sceneRoot, "sceneRoot");
        y45.j(view, "view");
        if (startValues == null) {
            return null;
        }
        return f(UtilsKt.f(this, view, sceneRoot, startValues, "yandex:scale:screenPosition"), g(startValues, 1.0f), h(startValues, 1.0f), g(endValues, this.scaleFactor), h(endValues, this.scaleFactor));
    }

    public Scale(float f, float f2, float f3) {
        this.scaleFactor = f;
        this.pivotX = f2;
        this.pivotY = f3;
    }
}
