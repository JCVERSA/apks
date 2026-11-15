package com.tn.lib.widget.toast.core;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import com.vungle.ads.internal.protos.Sdk$SDKError;

final class ToastImpl {

    private static final Handler f40457g = new Handler(Looper.getMainLooper());

    private final gh.a f40458a;

    private final i f40459b;

    private final String f40460c;

    private boolean f40461d;

    private final Runnable f40462e = new AnonymousClass1();

    private final Runnable f40463f = new Runnable() {
        @Override
        public void run() {
            WindowManager windowManager;
            try {
                try {
                    Activity activityA = ToastImpl.this.f40459b.a();
                    if (activityA != null && (windowManager = (WindowManager) activityA.getSystemService("window")) != null) {
                        windowManager.removeViewImmediate(ToastImpl.this.f40458a.c());
                    }
                } catch (IllegalArgumentException e10) {
                    e10.printStackTrace();
                }
            } finally {
                ToastImpl.this.f40459b.c();
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
            Activity activityA = ToastImpl.this.f40459b.a();
            if (activityA == null || activityA.isFinishing() || activityA.isDestroyed()) {
                return;
            }
            int iA = (ToastImpl.this.f40458a.c() == null || !(ToastImpl.this.f40458a.c().getTag() instanceof Integer)) ? -2 : a0.a(((Integer) ToastImpl.this.f40458a.c().getTag()).intValue());
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.height = -2;
            layoutParams.width = iA;
            layoutParams.format = -3;
            layoutParams.windowAnimations = 16973828;
            if (ToastImpl.this.f40458a.a()) {
                layoutParams.flags = Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
            } else {
                layoutParams.flags = 152;
            }
            layoutParams.packageName = ToastImpl.this.f40460c;
            layoutParams.gravity = ToastImpl.this.f40458a.getGravity();
            layoutParams.x = ToastImpl.this.f40458a.getXOffset();
            layoutParams.y = ToastImpl.this.f40458a.getYOffset();
            layoutParams.verticalMargin = ToastImpl.this.f40458a.getVerticalMargin();
            layoutParams.horizontalMargin = ToastImpl.this.f40458a.getHorizontalMargin();
            WindowManager windowManager = (WindowManager) activityA.getSystemService("window");
            if (windowManager == null) {
                return;
            }
            try {
                windowManager.addView(ToastImpl.this.f40458a.c(), layoutParams);
                ToastImpl.f40457g.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.f40478a.lambda$run$0();
                    }
                }, ToastImpl.this.f40458a.getDuration() == 1 ? ToastStrategy.LONG_DURATION_TIMEOUT : 2000L);
                ToastImpl.this.f40459b.b(ToastImpl.this);
                ToastImpl.this.g(true);
            } catch (WindowManager.BadTokenException | IllegalStateException e10) {
                e10.printStackTrace();
            }
        }
    }

    ToastImpl(Activity activity, gh.a aVar) {
        this.f40458a = aVar;
        this.f40460c = activity.getPackageName();
        this.f40459b = new i(activity);
    }

    void e() {
        if (f()) {
            Handler handler = f40457g;
            handler.removeCallbacks(this.f40463f);
            handler.post(this.f40463f);
        }
    }

    boolean f() {
        return this.f40461d;
    }

    void g(boolean z10) {
        this.f40461d = z10;
    }

    void h() {
        if (f()) {
            return;
        }
        Handler handler = f40457g;
        handler.removeCallbacks(this.f40462e);
        handler.post(this.f40462e);
    }
}
