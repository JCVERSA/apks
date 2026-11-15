package com.app.hubert.guide.core;

import android.R;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.app.hubert.guide.lifecycle.ListenerFragment;
import com.app.hubert.guide.lifecycle.V4ListenerFragment;
import defpackage.bl0;
import defpackage.dq5;
import defpackage.r54;
import defpackage.se7;
import java.lang.reflect.Field;
import java.security.InvalidParameterException;
import java.util.List;

public class Controller {
    public Activity a;
    public Fragment b;
    public androidx.fragment.app.Fragment c;
    public se7 d;
    public String e;
    public boolean f;
    public int g;
    public List h;
    public int i;
    public GuideLayout j;
    public FrameLayout k;
    public SharedPreferences l;
    public int m;
    public boolean n;

    public class a implements GuideLayout.e {
        public a() {
        }

        @Override
        public void a(GuideLayout guideLayout) {
            Controller.this.o();
        }
    }

    public class b implements GuideLayout.e {
        public b() {
        }

        @Override
        public void a(GuideLayout guideLayout) {
            Controller.this.p();
        }
    }

    public class c extends r54 {
        public c() {
        }

        @Override
        public void a() {
            dq5.c("ListenerFragment.onDestroyView");
            Controller.this.l();
        }
    }

    public class d extends r54 {
        public d() {
        }

        @Override
        public void a() {
            dq5.c("v4ListenerFragment.onDestroyView");
            Controller.this.l();
        }
    }

    public Controller(bl0 bl0Var) {
        this.m = -1;
        Activity activity = bl0Var.a;
        this.a = activity;
        this.b = bl0Var.b;
        this.c = bl0Var.c;
        this.d = bl0Var.h;
        this.e = bl0Var.d;
        this.f = bl0Var.e;
        this.h = bl0Var.i;
        this.g = bl0Var.g;
        View viewFindViewById = bl0Var.f;
        viewFindViewById = viewFindViewById == null ? activity.findViewById(R.id.content) : viewFindViewById;
        if (viewFindViewById instanceof FrameLayout) {
            this.k = (FrameLayout) viewFindViewById;
        } else {
            FrameLayout frameLayout = new FrameLayout(this.a);
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            this.m = viewGroup.indexOfChild(viewFindViewById);
            viewGroup.removeView(viewFindViewById);
            int i = this.m;
            if (i >= 0) {
                viewGroup.addView(frameLayout, i, viewFindViewById.getLayoutParams());
            } else {
                viewGroup.addView(frameLayout, viewFindViewById.getLayoutParams());
            }
            frameLayout.addView(viewFindViewById, new ViewGroup.LayoutParams(-1, -1));
            this.k = frameLayout;
        }
        this.l = this.a.getSharedPreferences("NewbieGuide", 0);
    }

    public final void i() {
        Fragment fragment = this.b;
        if (fragment != null) {
            j(fragment);
            FragmentManager childFragmentManager = this.b.getChildFragmentManager();
            ListenerFragment listenerFragment = (ListenerFragment) childFragmentManager.findFragmentByTag("listener_fragment");
            if (listenerFragment == null) {
                listenerFragment = new ListenerFragment();
                childFragmentManager.beginTransaction().add(listenerFragment, "listener_fragment").commitAllowingStateLoss();
            }
            listenerFragment.a(new c());
        }
        androidx.fragment.app.Fragment fragment2 = this.c;
        if (fragment2 == null || !fragment2.isAdded()) {
            return;
        }
        androidx.fragment.app.FragmentManager childFragmentManager2 = this.c.getChildFragmentManager();
        V4ListenerFragment v4ListenerFragment = (V4ListenerFragment) childFragmentManager2.findFragmentByTag("listener_fragment");
        if (v4ListenerFragment == null) {
            v4ListenerFragment = new V4ListenerFragment();
            childFragmentManager2.beginTransaction().add(v4ListenerFragment, "listener_fragment").commitAllowingStateLoss();
        }
        v4ListenerFragment.u(new d());
    }

    public final void j(Fragment fragment) {
        try {
            Field declaredField = Fragment.class.getDeclaredField("mChildFragmentManager");
            declaredField.setAccessible(true);
            declaredField.set(fragment, null);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean k() {
        return this.n;
    }

    public void l() {
        GuideLayout guideLayout = this.j;
        if (guideLayout != null && guideLayout.getParent() != null) {
            ViewGroup viewGroup = (ViewGroup) this.j.getParent();
            viewGroup.removeView(this.j);
            if (!(viewGroup instanceof FrameLayout)) {
                ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
                View childAt = viewGroup.getChildAt(0);
                viewGroup.removeAllViews();
                if (childAt != null) {
                    int i = this.m;
                    if (i > 0) {
                        viewGroup2.addView(childAt, i, viewGroup.getLayoutParams());
                    } else {
                        viewGroup2.addView(childAt, viewGroup.getLayoutParams());
                    }
                }
            }
            se7 se7Var = this.d;
            if (se7Var != null) {
                se7Var.b(this);
            }
            this.j = null;
        }
        this.n = false;
    }

    public final void m() {
        Fragment fragment = this.b;
        if (fragment != null) {
            FragmentManager childFragmentManager = fragment.getChildFragmentManager();
            ListenerFragment listenerFragment = (ListenerFragment) childFragmentManager.findFragmentByTag("listener_fragment");
            if (listenerFragment != null) {
                childFragmentManager.beginTransaction().remove(listenerFragment).commitAllowingStateLoss();
            }
        }
        androidx.fragment.app.Fragment fragment2 = this.c;
        if (fragment2 != null) {
            androidx.fragment.app.FragmentManager childFragmentManager2 = fragment2.getChildFragmentManager();
            V4ListenerFragment v4ListenerFragment = (V4ListenerFragment) childFragmentManager2.findFragmentByTag("listener_fragment");
            if (v4ListenerFragment != null) {
                childFragmentManager2.beginTransaction().remove(v4ListenerFragment).commitAllowingStateLoss();
            }
        }
    }

    public void n() {
        final int i = this.l.getInt(this.e, 0);
        if ((this.f || i < this.g) && !this.n) {
            this.n = true;
            this.k.post(new Runnable() {
                @Override
                public void run() {
                    if (Controller.this.h == null || Controller.this.h.size() == 0) {
                        throw new IllegalStateException("there is no guide to show!! Please add at least one Page.");
                    }
                    Controller.this.i = 0;
                    Controller.this.o();
                    if (Controller.this.d != null) {
                        Controller.this.d.a(Controller.this);
                    }
                    Controller.this.i();
                    Controller.this.l.edit().putInt(Controller.this.e, i + 1).apply();
                }
            });
        }
    }

    public final void o() {
        GuideLayout guideLayout = new GuideLayout(this.a, (com.app.hubert.guide.model.a) this.h.get(this.i), this);
        guideLayout.setOnGuideLayoutDismissListener(new b());
        this.k.addView(guideLayout, new FrameLayout.LayoutParams(-1, -1));
        this.j = guideLayout;
        this.n = true;
    }

    public final void p() {
        if (this.i < this.h.size() - 1) {
            this.i++;
            o();
            return;
        }
        se7 se7Var = this.d;
        if (se7Var != null) {
            se7Var.b(this);
        }
        m();
        this.n = false;
    }

    public void q(int i) {
        if (i < 0 || i > this.h.size() - 1) {
            throw new InvalidParameterException("The Guide page position is out of range. current:" + i + ", range: [ 0, " + this.h.size() + " )");
        }
        if (this.i == i) {
            return;
        }
        this.i = i;
        GuideLayout guideLayout = this.j;
        if (guideLayout == null) {
            o();
        } else {
            guideLayout.setOnGuideLayoutDismissListener(new a());
            this.j.remove();
        }
    }
}
