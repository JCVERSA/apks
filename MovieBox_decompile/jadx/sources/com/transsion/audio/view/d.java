package com.transsion.audio.view;

import android.R;
import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import com.therouter.TheRouter;
import com.transsion.audio.fragment.AudioBottomSheetFragment;
import com.transsion.baselib.db.audio.AudioBean;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class d {

    private FloatingMagnetView f41828a;

    private WeakReference f41829b;

    private final List f41830c;

    private String f41831d;

    private AudioBean f41832e;

    class a implements EnFloatingView.f {

        final FrameLayout f41833a;

        a(FrameLayout frameLayout) {
            this.f41833a = frameLayout;
        }

        @Override
        public void a(ViewGroup viewGroup) {
            d dVar = d.this;
            dVar.i((ViewGroup) dVar.f41829b.get());
            for (ep.b.a aVar : d.this.f41830c) {
                if (aVar != null) {
                    aVar.onRemove();
                }
            }
            d.this.w(8);
        }

        @Override
        public void b(ViewGroup viewGroup) {
            AudioBottomSheetFragment.INSTANCE.a(d.this.f41832e).show(((FragmentActivity) this.f41833a.getContext()).getSupportFragmentManager(), "dialog");
        }
    }

    private static class b {

        private static final d f41835a = new d();
    }

    private void e(View view) {
        FrameLayout frameLayoutN;
        if (n() == null || (frameLayoutN = n()) == null) {
            return;
        }
        frameLayoutN.addView(view);
    }

    private void j(Activity activity, AudioBean audioBean) {
        if (this.f41828a == null) {
            EnFloatingView enFloatingView = new EnFloatingView(activity);
            this.f41828a = enFloatingView;
            e(enFloatingView);
        } else {
            w(0);
            if (!((ep.a) TheRouter.d(ep.a.class, new Object[0])).b(audioBean) && this.f41828a.isPackUp()) {
                this.f41828a.expanded();
            }
        }
    }

    public static d k() {
        return b.f41835a;
    }

    private FrameLayout l(Activity activity) {
        if (activity == null) {
            return null;
        }
        try {
            return (FrameLayout) activity.getWindow().getDecorView().findViewById(R.id.content);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private FrameLayout n() {
        WeakReference weakReference = this.f41829b;
        if (weakReference == null) {
            return null;
        }
        return (FrameLayout) weakReference.get();
    }

    public d d(Activity activity, AudioBean audioBean) {
        j(activity, audioBean);
        return this;
    }

    public d f(Activity activity) {
        g(activity, l(activity));
        return this;
    }

    public void g(Activity activity, FrameLayout frameLayout) {
        FloatingMagnetView floatingMagnetView;
        String simpleName = activity.getClass().getSimpleName();
        if (!TextUtils.equals(this.f41831d, simpleName)) {
            this.f41831d = simpleName;
            FloatingMagnetView floatingMagnetView2 = this.f41828a;
            if (floatingMagnetView2 != null) {
                floatingMagnetView2.packUp();
            }
        }
        if (frameLayout == null || (floatingMagnetView = this.f41828a) == null) {
            this.f41829b = new WeakReference(frameLayout);
            return;
        }
        floatingMagnetView.setOnOptionListener(new a(frameLayout));
        if (this.f41828a.getParent() == frameLayout) {
            return;
        }
        if (this.f41828a.getParent() != null) {
            ((ViewGroup) this.f41828a.getParent()).removeView(this.f41828a);
        }
        this.f41828a.attach(activity);
        this.f41829b = new WeakReference(frameLayout);
        frameLayout.addView(this.f41828a);
    }

    public d h(Activity activity) {
        i(l(activity));
        return this;
    }

    public void i(ViewGroup viewGroup) {
        FloatingMagnetView floatingMagnetView = this.f41828a;
        if (floatingMagnetView != null && viewGroup != null && ViewCompat.isAttachedToWindow(floatingMagnetView)) {
            viewGroup.removeView(this.f41828a);
        }
        if (n() == viewGroup) {
            this.f41829b = null;
        }
    }

    public AudioBean m() {
        return this.f41832e;
    }

    public Boolean o() {
        return Boolean.valueOf(this.f41828a.getVisibility() == 8);
    }

    public d p(Long l10, Long l11) {
        if (this.f41828a != null) {
            int iLongValue = (int) (((l10.longValue() * 1.0f) / l11.longValue()) * 100.0f);
            if (iLongValue > 100) {
                iLongValue = 100;
            }
            this.f41828a.onProgress(iLongValue);
        }
        return this;
    }

    public d q(int i10) {
        FloatingMagnetView floatingMagnetView = this.f41828a;
        if (floatingMagnetView != null) {
            floatingMagnetView.onStateChanged(i10);
        }
        return this;
    }

    public void r() {
        FloatingMagnetView floatingMagnetView = this.f41828a;
        if (floatingMagnetView != null) {
            floatingMagnetView.packUp();
        }
    }

    public void s() {
        FloatingMagnetView floatingMagnetView = this.f41828a;
        if (floatingMagnetView != null) {
            floatingMagnetView.packUpAnimation();
        }
    }

    public d t(AudioBean audioBean) {
        if (audioBean != null) {
            this.f41832e = audioBean;
            wf.a.f74274a.c("EnFloatingView", "prepare..mEnFloatingView.." + this.f41828a, false);
            FloatingMagnetView floatingMagnetView = this.f41828a;
            if (floatingMagnetView != null) {
                floatingMagnetView.prepare();
            }
        }
        return this;
    }

    public void u(ep.b.a aVar) {
        this.f41830c.remove(aVar);
    }

    public void v(ep.b.a aVar) {
        this.f41830c.add(aVar);
    }

    public d w(int i10) {
        FloatingMagnetView floatingMagnetView = this.f41828a;
        if (floatingMagnetView != null && floatingMagnetView.getVisibility() != i10) {
            this.f41828a.setVisibility(i10);
        }
        return this;
    }

    public void x(String str) {
        m().setTitle(str);
    }

    private d() {
        this.f41831d = "";
        this.f41832e = null;
        this.f41830c = new ArrayList();
    }
}
