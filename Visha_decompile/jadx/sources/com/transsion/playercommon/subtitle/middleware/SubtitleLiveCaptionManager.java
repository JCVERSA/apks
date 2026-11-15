package com.transsion.playercommon.subtitle.middleware;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.livecaption.IAapCallback;
import com.transsion.livecaption.bean.SubtitleBean;
import com.transsion.livecaption.client.SubtitleManager;
import com.transsion.livecaption.constant.State;
import com.transsion.playercommon.subtitle.model.AILaunageConfig;
import defpackage.l6a;
import defpackage.se;
import defpackage.zt4;

public class SubtitleLiveCaptionManager {
    public static volatile SubtitleLiveCaptionManager e;
    public SubtitleManager a;
    public zt4 b;
    public int c = -1;
    public String d;

    public class AnonymousClass1 extends IAapCallback.Stub {
        public AnonymousClass1() {
        }

        public void lambda$onData$0(Bundle bundle) {
            if (bundle != null) {
                String string = bundle.getString("origin_text");
                String string2 = bundle.getString("text");
                if (SubtitleLiveCaptionManager.this.b != null) {
                    SubtitleLiveCaptionManager.this.b.a(string2, string);
                } else {
                    Log.w("Subtitle_Out", "onTranslateCallback subtitleSubtitleListener is null");
                }
            }
        }

        public void lambda$onError$2(int i) {
            SubtitleLiveCaptionManager.this.c = -1;
            if (i == 1015) {
                l6a.b().c(-3);
            }
            if (SubtitleLiveCaptionManager.this.a != null) {
                SubtitleLiveCaptionManager.this.a.stop();
                SubtitleLiveCaptionManager.this.a = null;
            }
        }

        public void lambda$onEvent$1(int i) {
            if (i == 1011) {
                SubtitleLiveCaptionManager.this.c = 2;
                l6a.b().c(2);
            } else {
                if (i != 1015 || SubtitleLiveCaptionManager.this.a == null) {
                    return;
                }
                SubtitleLiveCaptionManager.this.a.stop();
                SubtitleLiveCaptionManager.this.a = null;
            }
        }

        @Override
        public void onData(final Bundle bundle) {
            Log.e("Subtitle_Out", "onTranslateCallback data:" + bundle);
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onData$0(bundle);
                }
            });
        }

        @Override
        public void onError(final int i, String str) {
            Log.w("SubtitleLiveCaptionManager", "onError " + i + ", " + str);
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onError$2(i);
                }
            });
        }

        @Override
        public void onEvent(final int i) {
            Log.i("SubtitleLiveCaptionManager", "onEvent " + i);
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onEvent$1(i);
                }
            });
        }
    }

    public static SubtitleLiveCaptionManager e() {
        if (e == null) {
            synchronized (SubtitleLiveCaptionManager.class) {
                try {
                    if (e == null) {
                        e = new SubtitleLiveCaptionManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public final void f(AILaunageConfig aILaunageConfig) {
        if ("none".equals(aILaunageConfig.getToLang())) {
            aILaunageConfig.setToLang(aILaunageConfig.getFromLang());
        }
    }

    public void g(Context context) {
        Log.d("SubtitleLiveCaptionManager", "initSubtitleManager " + context);
        this.a = new SubtitleManager(context, new AnonymousClass1());
    }

    public boolean h() {
        return this.c == 2;
    }

    public void i(String str) {
        if (!h()) {
            Log.e("SubtitleLiveCaptionManager", "update isServiceConnected");
            return;
        }
        try {
            SubtitleManager subtitleManager = this.a;
            if (subtitleManager != null) {
                subtitleManager.translate(str);
            }
        } catch (Exception e2) {
            Log.e("SubtitleLiveCaptionManager", "offlineTranslate " + e2);
        }
    }

    public void j(String str) {
        Log.i("SubtitleLiveCaptionManager", "release " + this.a);
        String str2 = this.d;
        if (str2 != null && !str2.equals(str)) {
            Log.e("SubtitleLiveCaptionManager", "release tag not match");
            return;
        }
        try {
            SubtitleManager subtitleManager = this.a;
            if (subtitleManager != null) {
                subtitleManager.release();
                this.c = -1;
                this.a = null;
            }
        } catch (Exception e2) {
            Log.e("SubtitleLiveCaptionManager", "release " + e2);
        }
    }

    public void k(String str) {
        this.d = str;
    }

    public void l(zt4 zt4Var) {
        this.b = zt4Var;
    }

    public void m(AILaunageConfig aILaunageConfig, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("start ");
        sb.append(z ? SubtitleBean.InputType.AUDIO : SubtitleBean.InputType.TEXT);
        sb.append(", ");
        sb.append(aILaunageConfig);
        Log.i("SubtitleLiveCaptionManager", sb.toString());
        if (this.a == null) {
            Log.w("SubtitleLiveCaptionManager", "start initSubtitleManager");
            g(se.a());
            return;
        }
        if (!h()) {
            Log.w("SubtitleLiveCaptionManager", "start isServiceConnected");
            return;
        }
        if (this.a.getState() == State.STARTED) {
            Log.i("SubtitleLiveCaptionManager", "start had started");
            return;
        }
        f(aILaunageConfig);
        SubtitleBean subtitleBean = new SubtitleBean();
        subtitleBean.setInLanguage(aILaunageConfig.getFromLang());
        subtitleBean.setOutLanguage(aILaunageConfig.getToLang());
        subtitleBean.setInputType(z ? SubtitleBean.InputType.AUDIO : SubtitleBean.InputType.TEXT);
        try {
            this.a.start(subtitleBean);
        } catch (Exception e2) {
            Log.e("SubtitleLiveCaptionManager", "start " + e2);
        }
    }

    public void n() {
        Log.d("SubtitleLiveCaptionManager", "stop " + this.a);
        try {
            SubtitleManager subtitleManager = this.a;
            if (subtitleManager == null || subtitleManager.getState() == State.STOPPED) {
                return;
            }
            this.a.stop(5);
        } catch (Exception e2) {
            Log.e("SubtitleLiveCaptionManager", "stop " + e2);
        }
    }

    public void o(AILaunageConfig aILaunageConfig, boolean z) {
        if (this.a == null) {
            g(se.a());
        }
        if (!h()) {
            Log.e("SubtitleLiveCaptionManager", "update isNot ServiceConnected");
            return;
        }
        try {
            if (this.a != null) {
                f(aILaunageConfig);
                StringBuilder sb = new StringBuilder();
                sb.append("update ");
                sb.append(z ? SubtitleBean.InputType.AUDIO : SubtitleBean.InputType.TEXT);
                sb.append(", ");
                sb.append(aILaunageConfig);
                Log.d("SubtitleLiveCaptionManager", sb.toString());
                SubtitleBean subtitleBean = new SubtitleBean();
                subtitleBean.setInLanguage(aILaunageConfig.getFromLang());
                subtitleBean.setOutLanguage(aILaunageConfig.getToLang());
                subtitleBean.setInputType(z ? SubtitleBean.InputType.AUDIO : SubtitleBean.InputType.TEXT);
                this.a.update(subtitleBean);
            }
        } catch (Exception e2) {
            Log.e("SubtitleLiveCaptionManager", "update " + e2);
        }
    }
}
