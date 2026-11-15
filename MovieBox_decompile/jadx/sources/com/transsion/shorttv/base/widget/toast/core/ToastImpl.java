package com.transsion.shorttv.base.widget.toast.core;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import com.vungle.ads.internal.protos.Sdk$SDKError;

final class ToastImpl {

    private static final Handler f50954g = new Handler(Looper.getMainLooper());

    private final kr.a f50955a;

    private final i f50956b;

    private final String f50957c;

    private boolean f50958d;

    private final Runnable f50959e = new AnonymousClass1();

    private final Runnable f50960f = new Runnable() {
        @Override
        public void run() {
            WindowManager windowManager;
            try {
                try {
                    Activity activityA = ToastImpl.this.f50956b.a();
                    if (activityA != null && (windowManager = (WindowManager) activityA.getSystemService("window")) != null) {
                        windowManager.removeViewImmediate(ToastImpl.this.f50955a.getView());
                    }
                } catch (IllegalArgumentException e10) {
                    e10.printStackTrace();
                }
            } finally {
                ToastImpl.this.f50956b.c();
                ToastImpl.this.g(false);
            }
        }
    };

    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        public void lambda$run$0() {
            ToastImpl.this.e();
        }

        @Override
        public void run() {
            Activity activityA = ToastImpl.this.f50956b.a();
            if (activityA == null || activityA.isFinishing() || activityA.isDestroyed()) {
                return;
            }
            int iA = (ToastImpl.this.f50955a.getView() == null || !(ToastImpl.this.f50955a.getView().getTag() instanceof Integer)) ? -2 : a0.a(((Integer) ToastImpl.this.f50955a.getView().getTag()).intValue());
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.height = -2;
            layoutParams.width = iA;
            layoutParams.format = -3;
            layoutParams.windowAnimations = 16973828;
            if (ToastImpl.this.f50955a.a()) {
                layoutParams.flags = Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
            } else {
                layoutParams.flags = 152;
            }
            layoutParams.packageName = ToastImpl.this.f50957c;
            layoutParams.gravity = ToastImpl.this.f50955a.getGravity();
            layoutParams.x = ToastImpl.this.f50955a.getXOffset();
            layoutParams.y = ToastImpl.this.f50955a.getYOffset();
            layoutParams.verticalMargin = ToastImpl.this.f50955a.getVerticalMargin();
            layoutParams.horizontalMargin = ToastImpl.this.f50955a.getHorizontalMargin();
            WindowManager windowManager = (WindowManager) activityA.getSystemService("window");
            if (windowManager == null) {
                return;
            }
            try {
                windowManager.addView(ToastImpl.this.f50955a.getView(), layoutParams);
                ToastImpl.f50954g.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.f50974a.lambda$run$0();
                    }
                }, ToastImpl.this.f50955a.getDuration() == 1 ? ToastStrategy.LONG_DURATION_TIMEOUT : 2000L);
                ToastImpl.this.f50956b.b(ToastImpl.this);
                ToastImpl.this.g(true);
            } catch (WindowManager.BadTokenException | IllegalStateException e10) {
                e10.printStackTrace();
            }
        }
    }

    ToastImpl(Activity activity, kr.a aVar) {
        this.f50955a = aVar;
        this.f50957c = activity.getPackageName();
        this.f50956b = new i(activity);
    }

    void e() {
        if (f()) {
            Handler handler = f50954g;
            handler.removeCallbacks(this.f50960f);
            handler.post(this.f50960f);
        }
    }

    boolean f() {
        return this.f50958d;
    }

    void g(boolean z10) {
        this.f50958d = z10;
    }

    void h() {
        if (f()) {
            return;
        }
        Handler handler = f50954g;
        handler.removeCallbacks(this.f50959e);
        handler.post(this.f50959e);
    }
}
