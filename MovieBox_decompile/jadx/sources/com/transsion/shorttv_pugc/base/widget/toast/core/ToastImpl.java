package com.transsion.shorttv_pugc.base.widget.toast.core;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import com.vungle.ads.internal.protos.Sdk$SDKError;

final class ToastImpl {

    private static final Handler f51934g = new Handler(Looper.getMainLooper());

    private final os.a f51935a;

    private final i f51936b;

    private final String f51937c;

    private boolean f51938d;

    private final Runnable f51939e = new AnonymousClass1();

    private final Runnable f51940f = new Runnable() {
        @Override
        public void run() {
            WindowManager windowManager;
            try {
                try {
                    Activity activityA = ToastImpl.this.f51936b.a();
                    if (activityA != null && (windowManager = (WindowManager) activityA.getSystemService("window")) != null) {
                        windowManager.removeViewImmediate(ToastImpl.this.f51935a.getView());
                    }
                } catch (IllegalArgumentException e10) {
                    e10.printStackTrace();
                }
            } finally {
                ToastImpl.this.f51936b.c();
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
            Activity activityA = ToastImpl.this.f51936b.a();
            if (activityA == null || activityA.isFinishing() || activityA.isDestroyed()) {
                return;
            }
            int iA = (ToastImpl.this.f51935a.getView() == null || !(ToastImpl.this.f51935a.getView().getTag() instanceof Integer)) ? -2 : a0.a(((Integer) ToastImpl.this.f51935a.getView().getTag()).intValue());
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.height = -2;
            layoutParams.width = iA;
            layoutParams.format = -3;
            layoutParams.windowAnimations = 16973828;
            if (ToastImpl.this.f51935a.a()) {
                layoutParams.flags = Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
            } else {
                layoutParams.flags = 152;
            }
            layoutParams.packageName = ToastImpl.this.f51937c;
            layoutParams.gravity = ToastImpl.this.f51935a.getGravity();
            layoutParams.x = ToastImpl.this.f51935a.getXOffset();
            layoutParams.y = ToastImpl.this.f51935a.getYOffset();
            layoutParams.verticalMargin = ToastImpl.this.f51935a.getVerticalMargin();
            layoutParams.horizontalMargin = ToastImpl.this.f51935a.getHorizontalMargin();
            WindowManager windowManager = (WindowManager) activityA.getSystemService("window");
            if (windowManager == null) {
                return;
            }
            try {
                windowManager.addView(ToastImpl.this.f51935a.getView(), layoutParams);
                ToastImpl.f51934g.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.f51954a.lambda$run$0();
                    }
                }, ToastImpl.this.f51935a.getDuration() == 1 ? ToastStrategy.LONG_DURATION_TIMEOUT : 2000L);
                ToastImpl.this.f51936b.b(ToastImpl.this);
                ToastImpl.this.g(true);
            } catch (WindowManager.BadTokenException | IllegalStateException e10) {
                e10.printStackTrace();
            }
        }
    }

    ToastImpl(Activity activity, os.a aVar) {
        this.f51935a = aVar;
        this.f51937c = activity.getPackageName();
        this.f51936b = new i(activity);
    }

    void e() {
        if (f()) {
            Handler handler = f51934g;
            handler.removeCallbacks(this.f51940f);
            handler.post(this.f51940f);
        }
    }

    boolean f() {
        return this.f51938d;
    }

    void g(boolean z10) {
        this.f51938d = z10;
    }

    void h() {
        if (f()) {
            return;
        }
        Handler handler = f51934g;
        handler.removeCallbacks(this.f51939e);
        handler.post(this.f51939e);
    }
}
