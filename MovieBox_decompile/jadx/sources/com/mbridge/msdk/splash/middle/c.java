package com.mbridge.msdk.splash.middle;

import android.R;
import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.c1;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBSplashLoadListener;
import com.mbridge.msdk.out.MBSplashShowListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.ZoomOutTypeEnum;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.splash.manager.e;
import com.mbridge.msdk.splash.manager.f;
import com.mbridge.msdk.splash.view.BaseSplashPopView;
import com.mbridge.msdk.splash.view.MBSplashPopView;
import com.mbridge.msdk.splash.view.MBSplashView;

public class c {
    private static String D = "SplashProvider";
    private CampaignEx A;
    private MBSplashPopView B;

    private String f36705a;

    private String f36706b;

    private MBridgeIds f36707c;

    private long f36709e;

    private e f36710f;

    private f f36711g;

    private b f36712h;

    private MBSplashShowListener f36713i;

    private d f36714j;

    private MBSplashView f36715k;

    private ViewGroup f36716l;

    private View f36717m;

    private l f36718n;

    private boolean f36719o;

    private ViewGroup f36720p;

    private j f36721q;

    private boolean f36722r;

    private Activity f36729y;

    private boolean f36730z;

    private int f36708d = 5;

    private int f36723s = 1;

    private int f36724t = k0.n(com.mbridge.msdk.foundation.controller.c.m().d());

    private int f36725u = k0.m(com.mbridge.msdk.foundation.controller.c.m().d());

    private Object f36726v = new Object();

    private Object f36727w = new Object();

    public boolean f36728x = false;
    private boolean C = false;

    class a implements Runnable {

        final CampaignEx f36731a;

        final int f36732b;

        final boolean f36733c;

        a(CampaignEx campaignEx, int i10, boolean z10) {
            this.f36731a = campaignEx;
            this.f36732b = i10;
            this.f36733c = z10;
        }

        @Override
        public void run() {
            c.this.a(this.f36731a, this.f36732b - 1, this.f36733c);
        }
    }

    public c(Activity activity, String str, String str2) {
        this.f36706b = TextUtils.isEmpty(str) ? "" : str;
        this.f36705a = str2;
        this.f36707c = new MBridgeIds(str, str2);
        this.f36729y = activity;
        b(activity);
    }

    public void b(boolean z10) {
        this.f36719o = z10;
    }

    public void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        } else if (this.f36712h != null) {
            this.f36712h.a(new com.mbridge.msdk.foundation.error.b(880035), 1);
        }
    }

    public int d() {
        return this.f36708d;
    }

    public long e() {
        return this.f36709e;
    }

    public boolean f() {
        return this.f36722r;
    }

    public boolean g() {
        return this.f36719o;
    }

    public void h() {
        f fVar = this.f36711g;
        if (fVar != null) {
            fVar.f();
        }
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView == null || !this.C) {
            return;
        }
        mBSplashPopView.pauseCountDown();
    }

    public void i() {
        f fVar = this.f36711g;
        if (fVar != null) {
            fVar.g();
        }
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView == null || !this.C) {
            return;
        }
        mBSplashPopView.reStartCountDown();
    }

    public void j() {
        this.C = true;
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView != null) {
            mBSplashPopView.startCountDown();
        }
    }

    public void k() {
        this.C = false;
        MBSplashShowListener mBSplashShowListener = this.f36713i;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onZoomOutPlayFinish(new MBridgeIds(this.f36706b, this.f36705a));
        }
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView != null) {
            mBSplashPopView.release();
        }
    }

    public void a(ViewGroup viewGroup) {
        this.f36720p = viewGroup;
    }

    public void b(String str) {
        a(str, 1);
    }

    public void d(String str, Activity activity) {
        ViewGroup viewGroupA = a(activity);
        if (viewGroupA != null) {
            d(str, viewGroupA);
            return;
        }
        MBSplashShowListener mBSplashShowListener = this.f36713i;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onShowFailed(this.f36707c, "activity is except,please check it");
        }
    }

    public void a(int i10) {
        this.f36723s = i10;
    }

    public void b(String str, Activity activity) {
        ViewGroup viewGroupA = a(activity);
        if (viewGroupA == null) {
            if (this.f36712h != null) {
                this.f36712h.a(new com.mbridge.msdk.foundation.error.b(880036), 1);
                return;
            }
            return;
        }
        b(str, viewGroupA);
    }

    public void a(long j10) {
        this.f36709e = j10;
    }

    public void a(MBSplashLoadListener mBSplashLoadListener) {
        if (this.f36712h == null) {
            this.f36712h = new b(this, this.f36707c);
        }
        this.f36712h.a(mBSplashLoadListener);
    }

    public void c(boolean z10) {
        this.f36722r = z10;
    }

    public void d(String str, ViewGroup viewGroup) {
        if (TextUtils.isEmpty(str)) {
            MBSplashShowListener mBSplashShowListener = this.f36713i;
            if (mBSplashShowListener != null) {
                mBSplashShowListener.onShowFailed(this.f36707c, "token is null or empty");
                return;
            }
            return;
        }
        c(str, viewGroup);
    }

    public String c() {
        if (!this.f36728x) {
            e eVar = this.f36710f;
            if (eVar != null) {
                return eVar.d();
            }
            return "";
        }
        f fVar = this.f36711g;
        if (fVar != null) {
            return fVar.d();
        }
        return "";
    }

    public void a(MBSplashShowListener mBSplashShowListener) {
        this.f36713i = mBSplashShowListener;
    }

    public void b(String str, ViewGroup viewGroup) {
        if (TextUtils.isEmpty(str)) {
            if (this.f36712h != null) {
                this.f36712h.a(new com.mbridge.msdk.foundation.error.b(880035), 1);
                return;
            }
            return;
        }
        a(str, viewGroup);
    }

    public void a(String str, Activity activity) {
        ViewGroup viewGroupA = a(activity);
        if (viewGroupA == null) {
            if (this.f36712h != null) {
                this.f36712h.a(new com.mbridge.msdk.foundation.error.b(880036), 1);
                return;
            }
            return;
        }
        a(str, viewGroupA);
    }

    public void d(boolean z10) {
        this.f36730z = z10;
    }

    public void b(int i10) {
        this.f36708d = i10;
    }

    public void c(String str, Activity activity) {
        ViewGroup viewGroupA = a(activity);
        if (viewGroupA == null) {
            MBSplashShowListener mBSplashShowListener = this.f36713i;
            if (mBSplashShowListener != null) {
                mBSplashShowListener.onShowFailed(this.f36707c, "activity is except,please check it");
                return;
            }
            return;
        }
        c(str, viewGroupA);
    }

    public void a(String str, ViewGroup viewGroup) {
        this.f36716l = viewGroup;
        MBSplashView mBSplashView = this.f36715k;
        if (mBSplashView != null) {
            mBSplashView.setDevContainer(viewGroup);
        }
        a(str, 2);
    }

    public void b(int i10, int i11) {
        a(i11, i10);
    }

    public String b() {
        if (!this.f36728x) {
            e eVar = this.f36710f;
            if (eVar != null) {
                return eVar.c();
            }
            return "";
        }
        f fVar = this.f36711g;
        if (fVar != null) {
            return fVar.c();
        }
        return "";
    }

    public void c(String str, ViewGroup viewGroup) {
        this.f36716l = viewGroup;
        MBSplashView mBSplashView = this.f36715k;
        if (mBSplashView != null) {
            mBSplashView.setDevContainer(viewGroup);
        }
        CampaignEx campaignExA = com.mbridge.msdk.splash.manager.d.a(this.f36715k, this.f36706b, this.f36705a, str, this.f36722r, this.f36708d, true, false);
        if (campaignExA != null) {
            if (this.f36718n == null) {
                this.f36718n = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36705a);
            }
            d dVar = new d(this, this.f36713i, campaignExA);
            this.f36714j = dVar;
            if (this.f36724t != 0 && this.f36725u != 0) {
                int i10 = this.f36708d;
                if (i10 >= 2 && i10 <= 10) {
                    b(campaignExA, this.f36718n.E(), false);
                    return;
                }
                dVar.a(this.f36707c, "countDownTime must in 2 - 10 ,but now is " + this.f36708d);
                return;
            }
            dVar.a(this.f36707c, "width or height is 0  or width or height is too small");
            return;
        }
        MBSplashShowListener mBSplashShowListener = this.f36713i;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onShowFailed(this.f36707c, "campaignEx is vali");
        }
    }

    public boolean a(String str) {
        return com.mbridge.msdk.splash.manager.d.a(this.f36715k, this.f36706b, this.f36705a, str, this.f36722r, this.f36708d, false, true) != null;
    }

    public void a(CampaignEx campaignEx, int i10, boolean z10) {
        if (!com.mbridge.msdk.splash.manager.d.a(this.f36715k, campaignEx)) {
            if (i10 > 0) {
                this.f36711g.f36607y.postDelayed(new a(campaignEx, i10, z10), 1L);
                return;
            }
            d dVar = this.f36714j;
            if (dVar != null) {
                dVar.a(this.f36707c, "campaignEx is not ready");
                return;
            }
            return;
        }
        a(true);
        ViewGroup.LayoutParams layoutParams = this.f36716l.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        } else {
            layoutParams.height = -1;
            layoutParams.width = -1;
        }
        this.f36716l.setLayoutParams(layoutParams);
        this.f36716l.removeAllViews();
        this.f36711g.c(this.f36708d);
        this.f36711g.a(this.f36720p);
        this.f36711g.a(this.f36714j);
        o0.b(D, "start show process");
        ViewGroup viewGroup = this.f36716l;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            c1.a(this.f36715k);
            this.f36716l.addView(this.f36715k);
        }
        this.f36711g.a(this.f36722r);
        this.f36711g.a(campaignEx, this.f36715k);
    }

    void b(CampaignEx campaignEx, int i10, boolean z10) {
        if (campaignEx != null && z10) {
            if (this.f36718n == null) {
                this.f36718n = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36705a);
            }
            this.f36714j = new d(this, this.f36713i, campaignEx);
        }
        ViewGroup viewGroup = this.f36716l;
        if (viewGroup == null) {
            d dVar = this.f36714j;
            if (dVar != null) {
                dVar.a(this.f36707c, "container is null");
                return;
            }
            return;
        }
        if (this.f36711g == null) {
            this.f36711g = new f(viewGroup.getContext(), this.f36706b, this.f36705a);
        }
        this.A = campaignEx;
        a(campaignEx, i10, z10);
    }

    private void b(Activity activity) {
        if (this.f36711g == null) {
            if (activity != null) {
                this.f36711g = new f(activity, this.f36706b, this.f36705a);
            } else {
                this.f36711g = new f(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36706b, this.f36705a);
            }
        }
        if (this.f36715k == null) {
            if (activity != null) {
                this.f36715k = new MBSplashView(activity);
            } else {
                this.f36715k = new MBSplashView(com.mbridge.msdk.foundation.controller.c.m().d());
            }
        }
        if (this.f36721q == null) {
            this.f36721q = new j();
        }
        this.f36721q.a(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c(), this.f36705a);
    }

    private void a(String str, int i10) {
        boolean zB;
        synchronized (this.f36726v) {
            try {
                if (this.f36719o) {
                    if (this.f36712h != null) {
                        this.f36712h.a(new com.mbridge.msdk.foundation.error.b(880016, "current unit is loading"), i10);
                        this.f36719o = true;
                    }
                    return;
                }
                this.f36719o = true;
                int i11 = this.f36708d;
                if (i11 >= 2 && i11 <= 10) {
                    if (this.f36724t != 0 && this.f36725u != 0) {
                        try {
                            zB = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
                        } catch (Exception unused) {
                            zB = false;
                        }
                        if (!zB) {
                            if (this.f36712h != null) {
                                this.f36712h.a(new com.mbridge.msdk.foundation.error.b(880029), i10);
                                return;
                            }
                            return;
                        }
                        this.f36715k.clearResState();
                        this.f36718n = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36705a);
                        if (this.f36710f == null) {
                            this.f36710f = new e(this.f36706b, this.f36705a, this.f36709e * 1000);
                        }
                        b bVar = this.f36712h;
                        if (bVar != null) {
                            bVar.a(str);
                            this.f36710f.a(this.f36712h);
                        }
                        this.f36715k.resetLoadState();
                        this.f36710f.a(this.f36708d);
                        this.f36710f.a(this.f36715k);
                        this.f36710f.a(this.f36718n);
                        this.f36710f.a(this.f36724t, this.f36725u);
                        this.f36710f.a(this.f36722r);
                        this.f36710f.b(this.f36723s);
                        this.f36710f.a(str, i10);
                        return;
                    }
                    if (this.f36712h != null) {
                        this.f36712h.a(new com.mbridge.msdk.foundation.error.b(880028), i10);
                        return;
                    }
                    return;
                }
                if (this.f36712h != null) {
                    com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880037);
                    bVar2.c("countDownTime must in 2 - 10");
                    this.f36712h.a(bVar2, i10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(View view, RelativeLayout.LayoutParams layoutParams) {
        this.f36717m = view;
        if (view != null) {
            a(layoutParams.width, layoutParams.height);
            MBSplashView mBSplashView = this.f36715k;
            if (mBSplashView != null) {
                mBSplashView.setIconVg(view, layoutParams);
            }
        }
    }

    public ViewGroup a(ZoomOutTypeEnum zoomOutTypeEnum) {
        MBSplashPopView mBSplashPopView = new MBSplashPopView(com.mbridge.msdk.foundation.controller.c.m().d(), new BaseSplashPopView.i(this.f36706b, this.f36705a, zoomOutTypeEnum.getIndex(), this.A), this.f36714j);
        this.B = mBSplashPopView;
        return mBSplashPopView;
    }

    private void a(int i10, int i11) {
        int iN = k0.n(com.mbridge.msdk.foundation.controller.c.m().d());
        int iM = k0.m(com.mbridge.msdk.foundation.controller.c.m().d());
        int i12 = this.f36723s;
        if (i12 == 1) {
            if (iM >= i11 * 4) {
                this.f36725u = iM - i11;
                this.f36724t = iN;
                return;
            } else {
                this.f36725u = 0;
                this.f36724t = 0;
                return;
            }
        }
        if (i12 == 2) {
            if (iN >= i10 * 4) {
                this.f36724t = iN - i10;
                this.f36725u = iM;
            } else {
                this.f36725u = 0;
                this.f36724t = 0;
            }
        }
    }

    public void a(boolean z10) {
        MBSplashView mBSplashView = this.f36715k;
        if (mBSplashView != null) {
            mBSplashView.setAllowClickSplash(z10);
        }
    }

    private ViewGroup a(Activity activity) {
        Throwable th2;
        ViewGroup viewGroup;
        if (activity != null && activity.isFinishing()) {
            activity = null;
        }
        if (activity == null) {
            o0.d(D, "splash can't show because, activity is null or activity is finishing");
            return null;
        }
        try {
            viewGroup = (ViewGroup) activity.getWindow().getDecorView().findViewById(R.id.content);
            try {
                try {
                    return (ViewGroup) viewGroup.getChildAt(0);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return viewGroup;
                }
            } catch (Throwable th3) {
                th2 = th3;
                th2.printStackTrace();
                return viewGroup;
            }
        } catch (Throwable th4) {
            th2 = th4;
            viewGroup = null;
        }
    }

    public void a(int i10, int i11, int i12, int i13) {
        try {
            MBSplashView mBSplashView = this.f36715k;
            if (mBSplashView != null) {
                mBSplashView.setNotchPadding(i10, i11, i12, i13);
            }
        } catch (Throwable th2) {
            o0.b(D, th2.getMessage());
        }
    }

    public void a() {
        this.A = null;
        if (this.f36713i != null) {
            this.f36713i = null;
        }
        if (this.f36712h != null) {
            this.f36712h = null;
        }
        if (this.f36714j != null) {
            this.f36714j = null;
        }
        e eVar = this.f36710f;
        if (eVar != null) {
            eVar.e();
        }
        f fVar = this.f36711g;
        if (fVar != null) {
            fVar.h();
        }
        if (this.f36729y != null) {
            this.f36729y = null;
        }
    }
}
