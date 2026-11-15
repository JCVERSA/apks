package com.transsion.widgetsliquid.effect;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.widgetslib.view.liquid.effect.OSLiquidContainerRootLayoutInner;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import defpackage.e74;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0016\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;", "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSLiquidContainerRootLayout extends OSLiquidContainerRootLayoutInner {

    public static final Companion INSTANCE = new Companion(null);
    public static final float LIQUID_SCALE_RATIO_BUTTON = 1.25f;
    public static final float LIQUID_SCALE_RATIO_CONTAINER = 1.05f;

    public static final class Companion {

        public static final class C0266a extends AnimatorListenerAdapter {
            public final List b;
            public final e74 c;
            public final Ref$BooleanRef d;

            public C0266a(List list, e74 e74Var, Ref$BooleanRef ref$BooleanRef) {
                this.b = list;
                this.c = e74Var;
                this.d = ref$BooleanRef;
            }

            @Override
            public void onAnimationCancel(Animator animator) {
                y45.j(animator, "animation");
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    ((OSLiquidContainerRootLayoutInner) it.next()).clearBackDropInnerColorsAlpha();
                }
                e74 e74Var = this.c;
                if (e74Var != null) {
                    e74Var.invoke(Boolean.valueOf(this.d.element));
                }
            }
        }

        public static final class b extends AnimatorListenerAdapter {
            public final Ref$BooleanRef b;
            public final boolean c;
            public final List d;
            public final Ref$ObjectRef e;
            public final e74 f;
            public final e74 g;

            public b(Ref$BooleanRef ref$BooleanRef, boolean z, List list, Ref$ObjectRef ref$ObjectRef, e74 e74Var, e74 e74Var2) {
                this.b = ref$BooleanRef;
                this.c = z;
                this.d = list;
                this.e = ref$ObjectRef;
                this.f = e74Var;
                this.g = e74Var2;
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                y45.j(animator, "animation");
                Iterator it = this.d.iterator();
                while (it.hasNext()) {
                    ((OSLiquidContainerRootLayoutInner) it.next()).clearBackDropInnerColorsAlpha();
                }
                e74 e74Var = this.f;
                if (e74Var != null) {
                    e74Var.invoke(Float.valueOf(1.0f));
                }
                e74 e74Var2 = this.g;
                if (e74Var2 != null) {
                    e74Var2.invoke(Boolean.valueOf(this.c));
                }
            }

            /* JADX WARN: Type inference failed for: r2v0, types: [T, java.util.ArrayList, java.util.Collection] */
            @Override
            public void onAnimationStart(Animator animator) {
                y45.j(animator, "animation");
                Ref$BooleanRef ref$BooleanRef = this.b;
                boolean z = this.c;
                ref$BooleanRef.element = z;
                Iterator it = this.d.iterator();
                while (it.hasNext()) {
                    ((OSLiquidContainerRootLayoutInner) it.next()).setNightMode(z);
                }
                Ref$ObjectRef ref$ObjectRef = this.e;
                List list = this.d;
                boolean z2 = this.c;
                ?? arrayList = new ArrayList(z71.v(list, 10));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((OSLiquidContainerRootLayoutInner) it2.next()).getBackDropDefaultAlphas(z2));
                }
                ref$ObjectRef.element = arrayList;
                Iterator it3 = this.d.iterator();
                while (it3.hasNext()) {
                    ((OSLiquidContainerRootLayoutInner) it3.next()).setBackDropInnerColorsAlpha(0.01f, 0.01f, 0.01f);
                }
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void e(e74 e74Var, List list, List list2, ValueAnimator valueAnimator) {
            y45.j(list, "$targets");
            y45.j(list2, "$startAlphas");
            y45.j(valueAnimator, "animator");
            Object animatedValue = valueAnimator.getAnimatedValue();
            y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            float fFloatValue = ((Float) animatedValue).floatValue();
            if (e74Var != null) {
                e74Var.invoke(Float.valueOf(0.5f * fFloatValue));
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                float[] fArr = (float[]) list2.get(i);
                ((OSLiquidContainerRootLayoutInner) list.get(i)).setBackDropInnerColorsAlpha(g(fArr[0], 0.01f, fFloatValue), g(fArr[1], 0.01f, fFloatValue), g(fArr[2], 0.01f, fFloatValue));
            }
        }

        public static final void f(e74 e74Var, List list, Ref$ObjectRef ref$ObjectRef, ValueAnimator valueAnimator) {
            y45.j(list, "$targets");
            y45.j(ref$ObjectRef, "$targetAlphas");
            y45.j(valueAnimator, "animator");
            Object animatedValue = valueAnimator.getAnimatedValue();
            y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            float fFloatValue = ((Float) animatedValue).floatValue();
            if (e74Var != null) {
                e74Var.invoke(Float.valueOf((fFloatValue * 0.5f) + 0.5f));
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                float[] fArr = (float[]) ((List) ref$ObjectRef.element).get(i);
                ((OSLiquidContainerRootLayoutInner) list.get(i)).setBackDropInnerColorsAlpha(g(0.01f, fArr[0], fFloatValue), g(0.01f, fArr[1], fFloatValue), g(0.01f, fArr[2], fFloatValue));
            }
        }

        public static final float g(float f, float f2, float f3) {
            return f + ((f2 - f) * f3);
        }

        /* JADX WARN: Type inference failed for: r3v4, types: [T, java.util.ArrayList, java.util.Collection] */
        public final Animator c(final List list, boolean z, long j, final e74 e74Var, e74 e74Var2, e74 e74Var3) {
            y45.j(list, "targets");
            List<OSLiquidContainerRootLayoutInner> list2 = list;
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                ((OSLiquidContainerRootLayoutInner) it.next()).clearBackDropInnerColorsAlpha();
            }
            boolean z2 = !z;
            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            ref$BooleanRef.element = z2;
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                ((OSLiquidContainerRootLayoutInner) it2.next()).setNightMode(z2);
            }
            final ArrayList arrayList = new ArrayList(z71.v(list2, 10));
            Iterator it3 = list2.iterator();
            while (it3.hasNext()) {
                arrayList.add(((OSLiquidContainerRootLayoutInner) it3.next()).getBackDropDefaultAlphas(z2));
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setDuration(j);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    OSLiquidContainerRootLayout.Companion.e(e74Var, list, arrayList, valueAnimator);
                }
            });
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ?? arrayList2 = new ArrayList(z71.v(list2, 10));
            for (OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner : list2) {
                arrayList2.add(new float[]{1.0f, 1.0f, 1.0f});
            }
            ref$ObjectRef.element = arrayList2;
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat2.setDuration(j);
            valueAnimatorOfFloat2.addListener(new b(ref$BooleanRef, z, list, ref$ObjectRef, e74Var, e74Var3));
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    OSLiquidContainerRootLayout.Companion.f(e74Var, list, ref$ObjectRef, valueAnimator);
                }
            });
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2);
            animatorSet.addListener(new C0266a(list, e74Var2, ref$BooleanRef));
            animatorSet.start();
            return animatorSet;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidContainerRootLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidContainerRootLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSLiquidContainerRootLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidContainerRootLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
    }
}
