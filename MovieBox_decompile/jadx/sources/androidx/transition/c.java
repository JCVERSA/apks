package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;

public class c extends l0 {

    private static class a extends AnimatorListenerAdapter implements j.f {

        private final View f14681a;

        private boolean f14682b = false;

        a(View view) {
            this.f14681a = view;
        }

        @Override
        public void a(j jVar) {
            this.f14681a.setTag(R$id.transition_pause_alpha, null);
        }

        @Override
        public void c(j jVar) {
            this.f14681a.setTag(R$id.transition_pause_alpha, Float.valueOf(this.f14681a.getVisibility() == 0 ? z.b(this.f14681a) : 0.0f));
        }

        @Override
        public void d(j jVar, boolean z10) {
            k.a(this, jVar, z10);
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            z.e(this.f14681a, 1.0f);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (this.f14681a.hasOverlappingRendering() && this.f14681a.getLayerType() == 0) {
                this.f14682b = true;
                this.f14681a.setLayerType(2, null);
            }
        }

        @Override
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (this.f14682b) {
                this.f14681a.setLayerType(0, null);
            }
            if (z10) {
                return;
            }
            z.e(this.f14681a, 1.0f);
            z.a(this.f14681a);
        }

        @Override
        public void b(j jVar) {
        }

        @Override
        public void e(j jVar) {
        }

        @Override
        public void f(j jVar) {
        }

        @Override
        public void g(j jVar, boolean z10) {
        }
    }

    public c(int i10) {
        l0(i10);
    }

    private Animator m0(View view, float f10, float f11) {
        if (f10 == f11) {
            return null;
        }
        z.e(view, f10);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) z.f14789b, f11);
        a aVar = new a(view);
        objectAnimatorOfFloat.addListener(aVar);
        x().a(aVar);
        return objectAnimatorOfFloat;
    }

    private static float n0(w wVar, float f10) {
        Float f11;
        return (wVar == null || (f11 = (Float) wVar.f14780a.get("android:fade:transitionAlpha")) == null) ? f10 : f11.floatValue();
    }

    @Override
    public Animator h0(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        z.c(view);
        return m0(view, n0(wVar, 0.0f), 1.0f);
    }

    @Override
    public void j(w wVar) {
        super.j(wVar);
        Float fValueOf = (Float) wVar.f14781b.getTag(R$id.transition_pause_alpha);
        if (fValueOf == null) {
            fValueOf = wVar.f14781b.getVisibility() == 0 ? Float.valueOf(z.b(wVar.f14781b)) : Float.valueOf(0.0f);
        }
        wVar.f14780a.put("android:fade:transitionAlpha", fValueOf);
    }

    @Override
    public Animator j0(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        z.c(view);
        Animator animatorM0 = m0(view, n0(wVar, 1.0f), 0.0f);
        if (animatorM0 == null) {
            z.e(view, n0(wVar2, 1.0f));
        }
        return animatorM0;
    }

    public c() {
    }
}
