package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.Map;

public class b extends j {
    private static final String[] O = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private static final Property P = new a(PointF.class, "topLeft");
    private static final Property Q = new C0119b(PointF.class, "bottomRight");
    private static final Property R = new c(PointF.class, "bottomRight");
    private static final Property S = new d(PointF.class, "topLeft");
    private static final Property T = new e(PointF.class, RequestParameters.POSITION);
    private static final androidx.transition.h U = new androidx.transition.h();
    private boolean N = false;

    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public PointF get(i iVar) {
            return null;
        }

        @Override
        public void set(i iVar, PointF pointF) {
            iVar.c(pointF);
        }
    }

    class C0119b extends Property {
        C0119b(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public PointF get(i iVar) {
            return null;
        }

        @Override
        public void set(i iVar, PointF pointF) {
            iVar.a(pointF);
        }
    }

    class c extends Property {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public PointF get(View view) {
            return null;
        }

        @Override
        public void set(View view, PointF pointF) {
            z.d(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    class d extends Property {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public PointF get(View view) {
            return null;
        }

        @Override
        public void set(View view, PointF pointF) {
            z.d(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    class e extends Property {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public PointF get(View view) {
            return null;
        }

        @Override
        public void set(View view, PointF pointF) {
            int iRound = Math.round(pointF.x);
            int iRound2 = Math.round(pointF.y);
            z.d(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }
    }

    class f extends AnimatorListenerAdapter {

        final i f14656a;
        private final i mViewBounds;

        f(i iVar) {
            this.f14656a = iVar;
            this.mViewBounds = iVar;
        }
    }

    private static class g extends AnimatorListenerAdapter implements j.f {

        private final View f14658a;

        private final Rect f14659b;

        private final boolean f14660c;

        private final Rect f14661d;

        private final boolean f14662e;

        private final int f14663f;

        private final int f14664g;

        private final int f14665h;

        private final int f14666i;

        private final int f14667j;

        private final int f14668k;

        private final int f14669l;

        private final int f14670m;

        private boolean f14671n;

        g(View view, Rect rect, boolean z10, Rect rect2, boolean z11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.f14658a = view;
            this.f14659b = rect;
            this.f14660c = z10;
            this.f14661d = rect2;
            this.f14662e = z11;
            this.f14663f = i10;
            this.f14664g = i11;
            this.f14665h = i12;
            this.f14666i = i13;
            this.f14667j = i14;
            this.f14668k = i15;
            this.f14669l = i16;
            this.f14670m = i17;
        }

        @Override
        public void a(j jVar) {
            Rect rect = (Rect) this.f14658a.getTag(R$id.transition_clip);
            this.f14658a.setTag(R$id.transition_clip, null);
            this.f14658a.setClipBounds(rect);
        }

        @Override
        public void c(j jVar) {
            this.f14658a.setTag(R$id.transition_clip, this.f14658a.getClipBounds());
            this.f14658a.setClipBounds(this.f14662e ? null : this.f14661d);
        }

        @Override
        public void d(j jVar, boolean z10) {
            k.a(this, jVar, z10);
        }

        @Override
        public void f(j jVar) {
            this.f14671n = true;
        }

        @Override
        public void g(j jVar, boolean z10) {
            k.b(this, jVar, z10);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            onAnimationStart(animator, false);
        }

        @Override
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (this.f14671n) {
                return;
            }
            Rect rect = null;
            if (z10) {
                if (!this.f14660c) {
                    rect = this.f14659b;
                }
            } else if (!this.f14662e) {
                rect = this.f14661d;
            }
            this.f14658a.setClipBounds(rect);
            if (z10) {
                z.d(this.f14658a, this.f14663f, this.f14664g, this.f14665h, this.f14666i);
            } else {
                z.d(this.f14658a, this.f14667j, this.f14668k, this.f14669l, this.f14670m);
            }
        }

        @Override
        public void onAnimationStart(Animator animator, boolean z10) {
            int iMax = Math.max(this.f14665h - this.f14663f, this.f14669l - this.f14667j);
            int iMax2 = Math.max(this.f14666i - this.f14664g, this.f14670m - this.f14668k);
            int i10 = z10 ? this.f14667j : this.f14663f;
            int i11 = z10 ? this.f14668k : this.f14664g;
            z.d(this.f14658a, i10, i11, iMax + i10, iMax2 + i11);
            this.f14658a.setClipBounds(z10 ? this.f14661d : this.f14659b);
        }

        @Override
        public void b(j jVar) {
        }

        @Override
        public void e(j jVar) {
        }
    }

    private static class h extends r {

        boolean f14672a = false;

        final ViewGroup f14673b;

        h(ViewGroup viewGroup) {
            this.f14673b = viewGroup;
        }

        @Override
        public void a(j jVar) {
            y.b(this.f14673b, true);
        }

        @Override
        public void c(j jVar) {
            y.b(this.f14673b, false);
        }

        @Override
        public void e(j jVar) {
            if (!this.f14672a) {
                y.b(this.f14673b, false);
            }
            jVar.S(this);
        }

        @Override
        public void f(j jVar) {
            y.b(this.f14673b, false);
            this.f14672a = true;
        }
    }

    private static class i {

        private int f14674a;

        private int f14675b;

        private int f14676c;

        private int f14677d;

        private final View f14678e;

        private int f14679f;

        private int f14680g;

        i(View view) {
            this.f14678e = view;
        }

        private void b() {
            z.d(this.f14678e, this.f14674a, this.f14675b, this.f14676c, this.f14677d);
            this.f14679f = 0;
            this.f14680g = 0;
        }

        void a(PointF pointF) {
            this.f14676c = Math.round(pointF.x);
            this.f14677d = Math.round(pointF.y);
            int i10 = this.f14680g + 1;
            this.f14680g = i10;
            if (this.f14679f == i10) {
                b();
            }
        }

        void c(PointF pointF) {
            this.f14674a = Math.round(pointF.x);
            this.f14675b = Math.round(pointF.y);
            int i10 = this.f14679f + 1;
            this.f14679f = i10;
            if (i10 == this.f14680g) {
                b();
            }
        }
    }

    private void f0(w wVar) {
        View view = wVar.f14781b;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        wVar.f14780a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        wVar.f14780a.put("android:changeBounds:parent", wVar.f14781b.getParent());
        if (this.N) {
            wVar.f14780a.put("android:changeBounds:clip", view.getClipBounds());
        }
    }

    @Override
    public String[] E() {
        return O;
    }

    @Override
    public void g(w wVar) {
        f0(wVar);
    }

    @Override
    public void j(w wVar) {
        Rect rect;
        f0(wVar);
        if (!this.N || (rect = (Rect) wVar.f14781b.getTag(R$id.transition_clip)) == null) {
            return;
        }
        wVar.f14780a.put("android:changeBounds:clip", rect);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Animator n(ViewGroup viewGroup, w wVar, w wVar2) {
        int i10;
        View view;
        int i11;
        ObjectAnimator objectAnimatorOfObject;
        Animator animatorC;
        if (wVar == null || wVar2 == null) {
            return null;
        }
        Map map = wVar.f14780a;
        Map map2 = wVar2.f14780a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = wVar2.f14781b;
        Rect rect = (Rect) wVar.f14780a.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) wVar2.f14780a.get("android:changeBounds:bounds");
        int i12 = rect.left;
        int i13 = rect2.left;
        int i14 = rect.top;
        int i15 = rect2.top;
        int i16 = rect.right;
        int i17 = rect2.right;
        int i18 = rect.bottom;
        int i19 = rect2.bottom;
        int i20 = i16 - i12;
        int i21 = i18 - i14;
        int i22 = i17 - i13;
        int i23 = i19 - i15;
        Rect rect3 = (Rect) wVar.f14780a.get("android:changeBounds:clip");
        Rect rect4 = (Rect) wVar2.f14780a.get("android:changeBounds:clip");
        if ((i20 == 0 || i21 == 0) && (i22 == 0 || i23 == 0)) {
            i10 = 0;
        } else {
            i10 = (i12 == i13 && i14 == i15) ? 0 : 1;
            if (i16 != i17 || i18 != i19) {
                i10++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i10++;
        }
        if (i10 <= 0) {
            return null;
        }
        if (this.N) {
            view = view2;
            z.d(view, i12, i14, Math.max(i20, i22) + i12, i14 + Math.max(i21, i23));
            ObjectAnimator objectAnimatorA = (i12 == i13 && i14 == i15) ? null : androidx.transition.f.a(view, T, v().a(i12, i14, i13, i15));
            boolean z10 = rect3 == null;
            if (z10) {
                i11 = 0;
                rect3 = new Rect(0, 0, i20, i21);
            } else {
                i11 = 0;
            }
            Rect rect5 = rect3;
            int i24 = rect4 == null ? 1 : i11;
            Rect rect6 = i24 != 0 ? new Rect(i11, i11, i22, i23) : rect4;
            if (rect5.equals(rect6)) {
                objectAnimatorOfObject = null;
            } else {
                view.setClipBounds(rect5);
                androidx.transition.h hVar = U;
                Object[] objArr = new Object[2];
                objArr[i11] = rect5;
                objArr[1] = rect6;
                objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", hVar, objArr);
                g gVar = new g(view, rect5, z10, rect6, i24, i12, i14, i16, i18, i13, i15, i17, i19);
                objectAnimatorOfObject.addListener(gVar);
                a(gVar);
            }
            animatorC = v.c(objectAnimatorA, objectAnimatorOfObject);
        } else {
            view = view2;
            z.d(view, i12, i14, i16, i18);
            if (i10 != 2) {
                animatorC = (i12 == i13 && i14 == i15) ? androidx.transition.f.a(view, R, v().a(i16, i18, i17, i19)) : androidx.transition.f.a(view, S, v().a(i12, i14, i13, i15));
            } else if (i20 == i22 && i21 == i23) {
                animatorC = androidx.transition.f.a(view, T, v().a(i12, i14, i13, i15));
            } else {
                i iVar = new i(view);
                ObjectAnimator objectAnimatorA2 = androidx.transition.f.a(iVar, P, v().a(i12, i14, i13, i15));
                ObjectAnimator objectAnimatorA3 = androidx.transition.f.a(iVar, Q, v().a(i16, i18, i17, i19));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorA2, objectAnimatorA3);
                animatorSet.addListener(new f(iVar));
                animatorC = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            y.b(viewGroup4, true);
            x().a(new h(viewGroup4));
        }
        return animatorC;
    }
}
