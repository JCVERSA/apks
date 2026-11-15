package com.yandex.div.core.view2.animations;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.yandex.div.R;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAnimation;
import com.yandex.div2.DivAnimationInterpolator;
import defpackage.av8;
import defpackage.e74;
import defpackage.eu2;
import defpackage.oj3;
import defpackage.pdc;
import defpackage.q15;
import defpackage.s74;
import defpackage.wn8;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class UtilsKt {
    public static final DivAnimation a;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivAnimation.Name.values().length];
            try {
                iArr[DivAnimation.Name.SET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivAnimation.Name.SCALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivAnimation.Name.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DivAnimation.Name.NO_ANIMATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    static {
        Expression.a aVar = Expression.a;
        a = new DivAnimation(aVar.a(100L), aVar.a(Double.valueOf(0.6d)), null, null, aVar.a(DivAnimation.Name.FADE), null, null, aVar.a(Double.valueOf(1.0d)), 108, null);
    }

    public static final Float a(Double d) {
        if (d != null) {
            return Float.valueOf(wn8.j((float) d.doubleValue(), 0.0f, 1.0f));
        }
        return null;
    }

    public static final s74 b(DivAnimation divAnimation, oj3 oj3Var, View view) {
        y45.j(divAnimation, "<this>");
        y45.j(oj3Var, "expressionResolver");
        y45.j(view, "view");
        final Animation animationI = i(divAnimation, oj3Var, false, view, 2, null);
        final Animation animationI2 = i(divAnimation, oj3Var, true, null, 4, null);
        if (animationI == null && animationI2 == null) {
            return null;
        }
        return new s74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((View) obj, (MotionEvent) obj2);
                return zfb.a;
            }

            public final void invoke(View view2, MotionEvent motionEvent) {
                Animation animation;
                y45.j(view2, "v");
                y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
                if (view2.isEnabled() && view2.isClickable() && view2.hasOnClickListeners()) {
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        Animation animation2 = animationI;
                        if (animation2 != null) {
                            view2.startAnimation(animation2);
                            return;
                        }
                        return;
                    }
                    if ((action == 1 || action == 3) && (animation = animationI2) != null) {
                        view2.startAnimation(animation);
                    }
                }
            }
        };
    }

    public static final void c(TransitionValues transitionValues, e74 e74Var) {
        y45.j(transitionValues, "transitionValues");
        y45.j(e74Var, "savePosition");
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        e74Var.invoke(iArr);
    }

    public static final ScaleAnimation d(float f, float f2) {
        return new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
    }

    public static final DivAnimation e() {
        return a;
    }

    public static final View f(Transition transition, View view, ViewGroup viewGroup, TransitionValues transitionValues, String str) {
        y45.j(transition, "<this>");
        y45.j(view, "view");
        y45.j(viewGroup, "sceneRoot");
        y45.j(transitionValues, "values");
        y45.j(str, "positionKey");
        if (y45.e(transitionValues.view, view) || !pdc.d(view)) {
            return view;
        }
        Object obj = transitionValues.values.get(str);
        y45.h(obj, "null cannot be cast to non-null type kotlin.IntArray");
        return ViewCopiesKt.b(view, viewGroup, transition, (int[]) obj);
    }

    public static final Float g(Double d) {
        if (d != null) {
            return Float.valueOf(wn8.c((float) d.doubleValue(), 0.0f));
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0098  */
    /* JADX WARN: Code duplicated, block: B:44:0x009f  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a6 A[LOOP:1: B:45:0x00a4->B:46:0x00a6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00cd  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Iterable, u15] */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.view.animation.AnimationSet] */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.view.animation.Animation] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v4, types: [android.view.animation.ScaleAnimation] */
    /* JADX WARN: Type inference failed for: r6v8 */
    public static final Animation h(DivAnimation divAnimation, oj3 oj3Var, boolean z, View view) {
        ?? animationSet;
        float fFloatValue;
        ArrayList arrayList;
        Drawable drawable;
        int numberOfLayers;
        int i;
        DivAnimation.Name name = (DivAnimation.Name) divAnimation.e.b(oj3Var);
        int i2 = a.a[name.ordinal()];
        if (i2 != 1) {
            animationSet = 0;
            animationSet = 0;
            animationSet = 0;
            animationSet = 0;
            if (i2 == 2) {
                Expression expression = divAnimation.h;
                Float fG = g(expression != null ? (Double) expression.b(oj3Var) : null);
                fFloatValue = fG != null ? fG.floatValue() : 1.0f;
                Expression expression2 = divAnimation.b;
                Float fG2 = g(expression2 != null ? (Double) expression2.b(oj3Var) : null);
                animationSet = d(fFloatValue, fG2 != null ? fG2.floatValue() : 0.95f);
            } else if (i2 != 3) {
                if (i2 != 4) {
                    Expression expression3 = divAnimation.h;
                    Float fA = a(expression3 != null ? (Double) expression3.b(oj3Var) : null);
                    fFloatValue = fA != null ? fA.floatValue() : 1.0f;
                    Expression expression4 = divAnimation.b;
                    Float fA2 = a(expression4 != null ? (Double) expression4.b(oj3Var) : null);
                    animationSet = new AlphaAnimation(fFloatValue, fA2 != null ? fA2.floatValue() : 0.6f);
                }
            } else if (view != 0) {
                Drawable background = view.getBackground();
                LayerDrawable layerDrawable = background instanceof LayerDrawable ? (LayerDrawable) background : null;
                if (layerDrawable != null) {
                    ?? Q = wn8.q(0, layerDrawable.getNumberOfLayers());
                    if ((Q instanceof Collection) && ((Collection) Q).isEmpty()) {
                        arrayList = new ArrayList();
                        if (layerDrawable != null) {
                            numberOfLayers = layerDrawable.getNumberOfLayers();
                            for (i = 0; i < numberOfLayers; i++) {
                                Drawable drawable2 = layerDrawable.getDrawable(i);
                                y45.i(drawable2, "it.getDrawable(i)");
                                arrayList.add(drawable2);
                            }
                        } else {
                            Drawable background2 = view.getBackground();
                            y45.i(background2, "view.background");
                            arrayList.add(background2);
                        }
                        Context context = view.getContext();
                        int i3 = R.drawable.native_animation_background;
                        drawable = ContextCompat.getDrawable(context, i3);
                        if (drawable != null) {
                            arrayList.add(drawable);
                        }
                        LayerDrawable layerDrawable2 = new LayerDrawable((Drawable[]) arrayList.toArray(new Drawable[0]));
                        layerDrawable2.setId(arrayList.size() - 1, i3);
                        view.setBackground(layerDrawable2);
                    } else {
                        Iterator it = Q.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                arrayList = new ArrayList();
                                if (layerDrawable != null) {
                                    numberOfLayers = layerDrawable.getNumberOfLayers();
                                    while (i < numberOfLayers) {
                                        Drawable drawable3 = layerDrawable.getDrawable(i);
                                        y45.i(drawable3, "it.getDrawable(i)");
                                        arrayList.add(drawable3);
                                    }
                                } else {
                                    Drawable background3 = view.getBackground();
                                    y45.i(background3, "view.background");
                                    arrayList.add(background3);
                                }
                                Context context2 = view.getContext();
                                int i4 = R.drawable.native_animation_background;
                                drawable = ContextCompat.getDrawable(context2, i4);
                                if (drawable != null) {
                                    arrayList.add(drawable);
                                }
                                LayerDrawable layerDrawable3 = new LayerDrawable((Drawable[]) arrayList.toArray(new Drawable[0]));
                                layerDrawable3.setId(arrayList.size() - 1, i4);
                                view.setBackground(layerDrawable3);
                            } else if (layerDrawable.getId(((q15) it).nextInt()) == R.drawable.native_animation_background) {
                            }
                        }
                    }
                } else {
                    arrayList = new ArrayList();
                    if (layerDrawable != null) {
                        numberOfLayers = layerDrawable.getNumberOfLayers();
                        while (i < numberOfLayers) {
                            Drawable drawable4 = layerDrawable.getDrawable(i);
                            y45.i(drawable4, "it.getDrawable(i)");
                            arrayList.add(drawable4);
                        }
                    } else {
                        Drawable background4 = view.getBackground();
                        y45.i(background4, "view.background");
                        arrayList.add(background4);
                    }
                    Context context3 = view.getContext();
                    int i5 = R.drawable.native_animation_background;
                    drawable = ContextCompat.getDrawable(context3, i5);
                    if (drawable != null) {
                        arrayList.add(drawable);
                    }
                    LayerDrawable layerDrawable4 = new LayerDrawable((Drawable[]) arrayList.toArray(new Drawable[0]));
                    layerDrawable4.setId(arrayList.size() - 1, i5);
                    view.setBackground(layerDrawable4);
                }
            }
        } else {
            animationSet = new AnimationSet(false);
            List list = divAnimation.d;
            if (list != null) {
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    Animation animationH = h((DivAnimation) it2.next(), oj3Var, z, view);
                    if (animationH != null) {
                        animationSet.addAnimation(animationH);
                    }
                }
            }
        }
        if (name != DivAnimation.Name.SET) {
            if (animationSet != 0) {
                animationSet.setInterpolator(z ? av8.a(eu2.d((DivAnimationInterpolator) divAnimation.c.b(oj3Var))) : eu2.d((DivAnimationInterpolator) divAnimation.c.b(oj3Var)));
            }
            if (animationSet != 0) {
                animationSet.setDuration(((Number) divAnimation.a.b(oj3Var)).longValue());
            }
        }
        if (animationSet != 0) {
            animationSet.setStartOffset(((Number) divAnimation.g.b(oj3Var)).longValue());
        }
        if (animationSet != 0) {
            animationSet.setFillAfter(true);
        }
        return animationSet;
    }

    public static Animation i(DivAnimation divAnimation, oj3 oj3Var, boolean z, View view, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            view = null;
        }
        return h(divAnimation, oj3Var, z, view);
    }
}
