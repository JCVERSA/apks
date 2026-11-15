package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

public abstract class l0 extends j {
    private static final String[] O = {"android:visibility:visibility", "android:visibility:parent"};
    private int N = 3;

    private static class a extends AnimatorListenerAdapter implements j.f {

        private final View f14750a;

        private final int f14751b;

        private final ViewGroup f14752c;

        private final boolean f14753d;

        private boolean f14754e;

        boolean f14755f = false;

        a(View view, int i10, boolean z10) {
            this.f14750a = view;
            this.f14751b = i10;
            this.f14752c = (ViewGroup) view.getParent();
            this.f14753d = z10;
            i(true);
        }

        private void h() {
            if (!this.f14755f) {
                z.f(this.f14750a, this.f14751b);
                ViewGroup viewGroup = this.f14752c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            i(false);
        }

        private void i(boolean z10) {
            ViewGroup viewGroup;
            if (!this.f14753d || this.f14754e == z10 || (viewGroup = this.f14752c) == null) {
                return;
            }
            this.f14754e = z10;
            y.b(viewGroup, z10);
        }

        @Override
        public void a(j jVar) {
            i(true);
            if (this.f14755f) {
                return;
            }
            z.f(this.f14750a, 0);
        }

        @Override
        public void c(j jVar) {
            i(false);
            if (this.f14755f) {
                return;
            }
            z.f(this.f14750a, this.f14751b);
        }

        @Override
        public void d(j jVar, boolean z10) {
            k.a(this, jVar, z10);
        }

        @Override
        public void e(j jVar) {
            jVar.S(this);
        }

        @Override
        public void g(j jVar, boolean z10) {
            k.b(this, jVar, z10);
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.f14755f = true;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            h();
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (z10) {
                return;
            }
            h();
        }

        @Override
        public void onAnimationStart(Animator animator, boolean z10) {
            if (z10) {
                z.f(this.f14750a, 0);
                ViewGroup viewGroup = this.f14752c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
        }

        @Override
        public void b(j jVar) {
        }

        @Override
        public void f(j jVar) {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }
    }

    private class b extends AnimatorListenerAdapter implements j.f {

        private final ViewGroup f14756a;

        private final View f14757b;

        private final View f14758c;

        private boolean f14759d = true;

        b(ViewGroup viewGroup, View view, View view2) {
            this.f14756a = viewGroup;
            this.f14757b = view;
            this.f14758c = view2;
        }

        private void h() {
            this.f14758c.setTag(R$id.save_overlay_view, null);
            this.f14756a.getOverlay().remove(this.f14757b);
            this.f14759d = false;
        }

        @Override
        public void d(j jVar, boolean z10) {
            k.a(this, jVar, z10);
        }

        @Override
        public void e(j jVar) {
            jVar.S(this);
        }

        @Override
        public void f(j jVar) {
            if (this.f14759d) {
                h();
            }
        }

        @Override
        public void g(j jVar, boolean z10) {
            k.b(this, jVar, z10);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            h();
        }

        @Override
        public void onAnimationPause(Animator animator) {
            this.f14756a.getOverlay().remove(this.f14757b);
        }

        @Override
        public void onAnimationResume(Animator animator) {
            if (this.f14757b.getParent() == null) {
                this.f14756a.getOverlay().add(this.f14757b);
            } else {
                l0.this.cancel();
            }
        }

        @Override
        public void onAnimationStart(Animator animator, boolean z10) {
            if (z10) {
                this.f14758c.setTag(R$id.save_overlay_view, this.f14757b);
                this.f14756a.getOverlay().add(this.f14757b);
                this.f14759d = true;
            }
        }

        @Override
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (z10) {
                return;
            }
            h();
        }

        @Override
        public void a(j jVar) {
        }

        @Override
        public void b(j jVar) {
        }

        @Override
        public void c(j jVar) {
        }
    }

    private static class c {

        boolean f14761a;

        boolean f14762b;

        int f14763c;

        int f14764d;

        ViewGroup f14765e;

        ViewGroup f14766f;

        c() {
        }
    }

    private void f0(w wVar) {
        wVar.f14780a.put("android:visibility:visibility", Integer.valueOf(wVar.f14781b.getVisibility()));
        wVar.f14780a.put("android:visibility:parent", wVar.f14781b.getParent());
        int[] iArr = new int[2];
        wVar.f14781b.getLocationOnScreen(iArr);
        wVar.f14780a.put("android:visibility:screenLocation", iArr);
    }

    private c g0(w wVar, w wVar2) {
        c cVar = new c();
        cVar.f14761a = false;
        cVar.f14762b = false;
        if (wVar == null || !wVar.f14780a.containsKey("android:visibility:visibility")) {
            cVar.f14763c = -1;
            cVar.f14765e = null;
        } else {
            cVar.f14763c = ((Integer) wVar.f14780a.get("android:visibility:visibility")).intValue();
            cVar.f14765e = (ViewGroup) wVar.f14780a.get("android:visibility:parent");
        }
        if (wVar2 == null || !wVar2.f14780a.containsKey("android:visibility:visibility")) {
            cVar.f14764d = -1;
            cVar.f14766f = null;
        } else {
            cVar.f14764d = ((Integer) wVar2.f14780a.get("android:visibility:visibility")).intValue();
            cVar.f14766f = (ViewGroup) wVar2.f14780a.get("android:visibility:parent");
        }
        if (wVar != null && wVar2 != null) {
            int i10 = cVar.f14763c;
            int i11 = cVar.f14764d;
            if (i10 == i11 && cVar.f14765e == cVar.f14766f) {
                return cVar;
            }
            if (i10 != i11) {
                if (i10 == 0) {
                    cVar.f14762b = false;
                    cVar.f14761a = true;
                } else if (i11 == 0) {
                    cVar.f14762b = true;
                    cVar.f14761a = true;
                }
            } else if (cVar.f14766f == null) {
                cVar.f14762b = false;
                cVar.f14761a = true;
            } else if (cVar.f14765e == null) {
                cVar.f14762b = true;
                cVar.f14761a = true;
            }
        } else if (wVar == null && cVar.f14764d == 0) {
            cVar.f14762b = true;
            cVar.f14761a = true;
        } else if (wVar2 == null && cVar.f14763c == 0) {
            cVar.f14762b = false;
            cVar.f14761a = true;
        }
        return cVar;
    }

    @Override
    public String[] E() {
        return O;
    }

    @Override
    public boolean G(w wVar, w wVar2) {
        if (wVar == null && wVar2 == null) {
            return false;
        }
        if (wVar != null && wVar2 != null && wVar2.f14780a.containsKey("android:visibility:visibility") != wVar.f14780a.containsKey("android:visibility:visibility")) {
            return false;
        }
        c cVarG0 = g0(wVar, wVar2);
        if (cVarG0.f14761a) {
            return cVarG0.f14763c == 0 || cVarG0.f14764d == 0;
        }
        return false;
    }

    @Override
    public void g(w wVar) {
        f0(wVar);
    }

    public Animator h0(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        return null;
    }

    public Animator i0(ViewGroup viewGroup, w wVar, int i10, w wVar2, int i11) {
        if ((this.N & 1) != 1 || wVar2 == null) {
            return null;
        }
        if (wVar == null) {
            View view = (View) wVar2.f14781b.getParent();
            if (g0(t(view, false), F(view, false)).f14761a) {
                return null;
            }
        }
        return h0(viewGroup, wVar2.f14781b, wVar, wVar2);
    }

    @Override
    public void j(w wVar) {
        f0(wVar);
    }

    public Animator j0(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0036  */
    public Animator k0(ViewGroup viewGroup, w wVar, int i10, w wVar2, int i11) {
        View view;
        boolean z10;
        boolean z11;
        View view2;
        if ((this.N & 2) != 2 || wVar == null) {
            return null;
        }
        View view3 = wVar.f14781b;
        View viewA = wVar2 != null ? wVar2.f14781b : null;
        View view4 = (View) view3.getTag(R$id.save_overlay_view);
        if (view4 != null) {
            view2 = null;
            z11 = true;
        } else {
            if (viewA == null || viewA.getParent() == null) {
                if (viewA != null) {
                    view = null;
                    z10 = false;
                } else {
                    viewA = null;
                    view = null;
                    z10 = true;
                }
            } else if (i11 == 4 || view3 == viewA) {
                view = viewA;
                z10 = false;
                viewA = null;
            } else {
                viewA = null;
                view = null;
                z10 = true;
            }
            if (z10) {
                if (view3.getParent() != null) {
                    if (view3.getParent() instanceof View) {
                        View view5 = (View) view3.getParent();
                        if (g0(F(view5, true), t(view5, true)).f14761a) {
                            int id2 = view5.getId();
                            if (view5.getParent() != null || id2 == -1 || viewGroup.findViewById(id2) == null || !this.f14731w) {
                            }
                        } else {
                            viewA = v.a(viewGroup, view3, view5);
                        }
                    }
                    z11 = false;
                    View view6 = view;
                    view4 = viewA;
                    view2 = view6;
                }
                view2 = view;
                z11 = false;
                view4 = view3;
            } else {
                z11 = false;
                View view7 = view;
                view4 = viewA;
                view2 = view7;
            }
        }
        if (view4 == null) {
            if (view2 == null) {
                return null;
            }
            int visibility = view2.getVisibility();
            z.f(view2, 0);
            Animator animatorJ0 = j0(viewGroup, view2, wVar, wVar2);
            if (animatorJ0 != null) {
                a aVar = new a(view2, i11, true);
                animatorJ0.addListener(aVar);
                x().a(aVar);
            } else {
                z.f(view2, visibility);
            }
            return animatorJ0;
        }
        if (!z11) {
            int[] iArr = (int[]) wVar.f14780a.get("android:visibility:screenLocation");
            int i12 = iArr[0];
            int i13 = iArr[1];
            int[] iArr2 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            view4.offsetLeftAndRight((i12 - iArr2[0]) - view4.getLeft());
            view4.offsetTopAndBottom((i13 - iArr2[1]) - view4.getTop());
            viewGroup.getOverlay().add(view4);
        }
        Animator animatorJ1 = j0(viewGroup, view4, wVar, wVar2);
        if (!z11) {
            if (animatorJ1 == null) {
                viewGroup.getOverlay().remove(view4);
            } else {
                view3.setTag(R$id.save_overlay_view, view4);
                b bVar = new b(viewGroup, view4, view3);
                animatorJ1.addListener(bVar);
                animatorJ1.addPauseListener(bVar);
                x().a(bVar);
            }
        }
        return animatorJ1;
    }

    public void l0(int i10) {
        if ((i10 & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.N = i10;
    }

    @Override
    public Animator n(ViewGroup viewGroup, w wVar, w wVar2) {
        c cVarG0 = g0(wVar, wVar2);
        if (!cVarG0.f14761a) {
            return null;
        }
        if (cVarG0.f14765e == null && cVarG0.f14766f == null) {
            return null;
        }
        return cVarG0.f14762b ? i0(viewGroup, wVar, cVarG0.f14763c, wVar2, cVarG0.f14764d) : k0(viewGroup, wVar, cVarG0.f14763c, wVar2, cVarG0.f14764d);
    }
}
