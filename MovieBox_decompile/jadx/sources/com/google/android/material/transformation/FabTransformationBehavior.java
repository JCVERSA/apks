package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import qa.h;
import qa.i;
import qa.j;

@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    private final Rect f29337c;

    private final RectF f29338d;

    private final RectF f29339e;

    private final int[] f29340f;

    private float f29341g;

    private float f29342h;

    class a extends AnimatorListenerAdapter {

        final boolean f29343a;

        final View f29344b;

        final View f29345c;

        a(boolean z10, View view, View view2) {
            this.f29343a = z10;
            this.f29344b = view;
            this.f29345c = view2;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (this.f29343a) {
                return;
            }
            this.f29344b.setVisibility(4);
            this.f29345c.setAlpha(1.0f);
            this.f29345c.setVisibility(0);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (this.f29343a) {
                this.f29344b.setVisibility(0);
                this.f29345c.setAlpha(0.0f);
                this.f29345c.setVisibility(4);
            }
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {

        final View f29347a;

        b(View view) {
            this.f29347a = view;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f29347a.invalidate();
        }
    }

    class c extends AnimatorListenerAdapter {

        final com.google.android.material.circularreveal.c f29349a;

        final Drawable f29350b;

        c(com.google.android.material.circularreveal.c cVar, Drawable drawable) {
            this.f29349a = cVar;
            this.f29350b = drawable;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f29349a.setCircularRevealOverlayDrawable(null);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.f29349a.setCircularRevealOverlayDrawable(this.f29350b);
        }
    }

    class d extends AnimatorListenerAdapter {

        final com.google.android.material.circularreveal.c f29352a;

        d(com.google.android.material.circularreveal.c cVar) {
            this.f29352a = cVar;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            com.google.android.material.circularreveal.c.e revealInfo = this.f29352a.getRevealInfo();
            revealInfo.f27933c = Float.MAX_VALUE;
            this.f29352a.setRevealInfo(revealInfo);
        }
    }

    protected static class e {

        public h f29354a;

        public j f29355b;

        protected e() {
        }
    }

    public FabTransformationBehavior() {
        this.f29337c = new Rect();
        this.f29338d = new RectF();
        this.f29339e = new RectF();
        this.f29340f = new int[2];
    }

    private ViewGroup K(View view) {
        View viewFindViewById = view.findViewById(R$id.mtrl_child_content_container);
        if (viewFindViewById != null) {
            return f0(viewFindViewById);
        }
        return ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? f0(((ViewGroup) view).getChildAt(0)) : f0(view);
    }

    private void L(View view, e eVar, i iVar, i iVar2, float f10, float f11, float f12, float f13, RectF rectF) {
        float fS = S(eVar, iVar, f10, f12);
        float fS2 = S(eVar, iVar2, f11, f13);
        Rect rect = this.f29337c;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f29338d;
        rectF2.set(rect);
        RectF rectF3 = this.f29339e;
        T(view, rectF3);
        rectF3.offset(fS, fS2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private void M(View view, RectF rectF) {
        T(view, rectF);
        rectF.offset(this.f29341g, this.f29342h);
    }

    private Pair N(float f10, float f11, boolean z10, e eVar) {
        i iVarH;
        i iVarH2;
        if (f10 == 0.0f || f11 == 0.0f) {
            iVarH = eVar.f29354a.h("translationXLinear");
            iVarH2 = eVar.f29354a.h("translationYLinear");
        } else if ((!z10 || f11 >= 0.0f) && (z10 || f11 <= 0.0f)) {
            iVarH = eVar.f29354a.h("translationXCurveDownwards");
            iVarH2 = eVar.f29354a.h("translationYCurveDownwards");
        } else {
            iVarH = eVar.f29354a.h("translationXCurveUpwards");
            iVarH2 = eVar.f29354a.h("translationYCurveUpwards");
        }
        return new Pair(iVarH, iVarH2);
    }

    private float O(View view, View view2, j jVar) {
        RectF rectF = this.f29338d;
        RectF rectF2 = this.f29339e;
        M(view, rectF);
        T(view2, rectF2);
        rectF2.offset(-Q(view, view2, jVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private float P(View view, View view2, j jVar) {
        RectF rectF = this.f29338d;
        RectF rectF2 = this.f29339e;
        M(view, rectF);
        T(view2, rectF2);
        rectF2.offset(0.0f, -R(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    private float Q(View view, View view2, j jVar) {
        float fCenterX;
        float fCenterX2;
        float f10;
        RectF rectF = this.f29338d;
        RectF rectF2 = this.f29339e;
        M(view, rectF);
        T(view2, rectF2);
        int i10 = jVar.f69597a & 7;
        if (i10 == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else {
            if (i10 != 3) {
                if (i10 != 5) {
                    f10 = 0.0f;
                } else {
                    fCenterX = rectF2.right;
                    fCenterX2 = rectF.right;
                }
                return f10 + jVar.f69598b;
            }
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        }
        f10 = fCenterX - fCenterX2;
        return f10 + jVar.f69598b;
    }

    private float R(View view, View view2, j jVar) {
        float fCenterY;
        float fCenterY2;
        float f10;
        RectF rectF = this.f29338d;
        RectF rectF2 = this.f29339e;
        M(view, rectF);
        T(view2, rectF2);
        int i10 = jVar.f69597a & 112;
        if (i10 == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else {
            if (i10 != 48) {
                if (i10 != 80) {
                    f10 = 0.0f;
                } else {
                    fCenterY = rectF2.bottom;
                    fCenterY2 = rectF.bottom;
                }
                return f10 + jVar.f69599c;
            }
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        }
        f10 = fCenterY - fCenterY2;
        return f10 + jVar.f69599c;
    }

    private float S(e eVar, i iVar, float f10, float f11) {
        long jC = iVar.c();
        long jD = iVar.d();
        i iVarH = eVar.f29354a.h("expansion");
        return qa.a.a(f10, f11, iVar.e().getInterpolation((((iVarH.c() + iVarH.d()) + 17) - jC) / jD));
    }

    private void T(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f29340f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private void U(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ViewGroup viewGroupK;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof com.google.android.material.circularreveal.c) && com.google.android.material.circularreveal.b.f27917j == 0) || (viewGroupK = K(view2)) == null) {
                return;
            }
            if (z10) {
                if (!z11) {
                    qa.d.f69583a.set(viewGroupK, Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupK, (Property<ViewGroup, Float>) qa.d.f69583a, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupK, (Property<ViewGroup, Float>) qa.d.f69583a, 0.0f);
            }
            eVar.f29354a.h("contentFade").a(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void V(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof com.google.android.material.circularreveal.c) {
            com.google.android.material.circularreveal.c cVar = (com.google.android.material.circularreveal.c) view2;
            int iD0 = d0(view);
            int i10 = 16777215 & iD0;
            if (z10) {
                if (!z11) {
                    cVar.setCircularRevealScrimColor(iD0);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(cVar, (Property<com.google.android.material.circularreveal.c, Integer>) com.google.android.material.circularreveal.c.d.f27930a, i10);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(cVar, (Property<com.google.android.material.circularreveal.c, Integer>) com.google.android.material.circularreveal.c.d.f27930a, iD0);
            }
            objectAnimatorOfInt.setEvaluator(qa.c.b());
            eVar.f29354a.h(TtmlNode.ATTR_TTS_COLOR).a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    private void W(View view, View view2, boolean z10, e eVar, List list) {
        float fQ = Q(view, view2, eVar.f29355b);
        float fR = R(view, view2, eVar.f29355b);
        Pair pairN = N(fQ, fR, z10, eVar);
        i iVar = (i) pairN.first;
        i iVar2 = (i) pairN.second;
        Property property = View.TRANSLATION_X;
        if (!z10) {
            fQ = this.f29341g;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fQ);
        Property property2 = View.TRANSLATION_Y;
        if (!z10) {
            fR = this.f29342h;
        }
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fR);
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    private void X(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float elevation = ViewCompat.getElevation(view2) - ViewCompat.getElevation(view);
        if (z10) {
            if (!z11) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        eVar.f29354a.h("elevation").a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void Y(View view, View view2, boolean z10, boolean z11, e eVar, float f10, float f11, List list, List list2) {
        Animator animatorA;
        if (view2 instanceof com.google.android.material.circularreveal.c) {
            com.google.android.material.circularreveal.c cVar = (com.google.android.material.circularreveal.c) view2;
            float fO = O(view, view2, eVar.f29355b);
            float fP = P(view, view2, eVar.f29355b);
            ((FloatingActionButton) view).getContentRect(this.f29337c);
            float fWidth = this.f29337c.width() / 2.0f;
            i iVarH = eVar.f29354a.h("expansion");
            if (z10) {
                if (!z11) {
                    cVar.setRevealInfo(new com.google.android.material.circularreveal.c.e(fO, fP, fWidth));
                }
                if (z11) {
                    fWidth = cVar.getRevealInfo().f27933c;
                }
                animatorA = com.google.android.material.circularreveal.a.a(cVar, fO, fP, xa.a.b(fO, fP, 0.0f, 0.0f, f10, f11));
                animatorA.addListener(new d(cVar));
                b0(view2, iVarH.c(), (int) fO, (int) fP, fWidth, list);
            } else {
                float f12 = cVar.getRevealInfo().f27933c;
                Animator animatorA2 = com.google.android.material.circularreveal.a.a(cVar, fO, fP, fWidth);
                int i10 = (int) fO;
                int i11 = (int) fP;
                b0(view2, iVarH.c(), i10, i11, f12, list);
                a0(view2, iVarH.c(), iVarH.d(), eVar.f29354a.i(), i10, i11, fWidth, list);
                animatorA = animatorA2;
            }
            iVarH.a(animatorA);
            list.add(animatorA);
            list2.add(com.google.android.material.circularreveal.a.b(cVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void Z(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof com.google.android.material.circularreveal.c) && (view instanceof ImageView)) {
            com.google.android.material.circularreveal.c cVar = (com.google.android.material.circularreveal.c) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z10) {
                if (!z11) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, (Property<Drawable, Integer>) qa.e.f69584b, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, (Property<Drawable, Integer>) qa.e.f69584b, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new b(view2));
            eVar.f29354a.h("iconFade").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new c(cVar, drawable));
        }
    }

    private void a0(View view, long j10, long j11, long j12, int i10, int i11, float f10, List list) {
        long j13 = j10 + j11;
        if (j13 < j12) {
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f10, f10);
            animatorCreateCircularReveal.setStartDelay(j13);
            animatorCreateCircularReveal.setDuration(j12 - j13);
            list.add(animatorCreateCircularReveal);
        }
    }

    private void b0(View view, long j10, int i10, int i11, float f10, List list) {
        if (j10 > 0) {
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f10, f10);
            animatorCreateCircularReveal.setStartDelay(0L);
            animatorCreateCircularReveal.setDuration(j10);
            list.add(animatorCreateCircularReveal);
        }
    }

    private void c0(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2, RectF rectF) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fQ = Q(view, view2, eVar.f29355b);
        float fR = R(view, view2, eVar.f29355b);
        Pair pairN = N(fQ, fR, z10, eVar);
        i iVar = (i) pairN.first;
        i iVar2 = (i) pairN.second;
        if (z10) {
            if (!z11) {
                view2.setTranslationX(-fQ);
                view2.setTranslationY(-fR);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            L(view2, eVar, iVar, iVar2, -fQ, -fR, 0.0f, 0.0f, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fQ);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fR);
        }
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    private int d0(View view) {
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            return backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
        }
        return 0;
    }

    private ViewGroup f0(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Override
    protected AnimatorSet J(View view, View view2, boolean z10, boolean z11) {
        e eVarE0 = e0(view2.getContext(), z10);
        if (z10) {
            this.f29341g = view.getTranslationX();
            this.f29342h = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        X(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        RectF rectF = this.f29338d;
        c0(view, view2, z10, z11, eVarE0, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        W(view, view2, z10, eVarE0, arrayList);
        Z(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        Y(view, view2, z10, z11, eVarE0, fWidth, fHeight, arrayList, arrayList2);
        V(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        U(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        qa.b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z10, view2, view));
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            animatorSet.addListener((Animator.AnimatorListener) arrayList2.get(i10));
        }
        return animatorSet;
    }

    @Override
    public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    protected abstract e e0(Context context, boolean z10);

    @Override
    public void g(CoordinatorLayout.f fVar) {
        if (fVar.f7605h == 0) {
            fVar.f7605h = 80;
        }
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29337c = new Rect();
        this.f29338d = new RectF();
        this.f29339e = new RectF();
        this.f29340f = new int[2];
    }
}
