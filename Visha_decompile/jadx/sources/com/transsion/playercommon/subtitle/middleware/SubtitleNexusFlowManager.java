package com.transsion.playercommon.subtitle.middleware;

import android.content.Context;
import android.util.Log;
import com.transsion.aicore.nexusflow.bean.SubtitleBean;
import com.transsion.aicore.nexusflow.client.SubtitleManager;
import com.transsion.aicore.nexusflow.constant.State;
import com.transsion.playercommon.subtitle.model.AILaunageConfig;
import defpackage.se;
import defpackage.y45;
import defpackage.zt4;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class SubtitleNexusFlowManager {
    public static final a f = new a(null);
    public static SubtitleNexusFlowManager g;
    public SubtitleManager a;
    public zt4 b;
    public int c = -1;
    public State d = State.NONE;
    public String e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubtitleNexusFlowManager a() {
            if (b() == null) {
                c(new SubtitleNexusFlowManager());
            }
            SubtitleNexusFlowManager subtitleNexusFlowManagerB = b();
            y45.g(subtitleNexusFlowManagerB);
            return subtitleNexusFlowManagerB;
        }

        public final SubtitleNexusFlowManager b() {
            return SubtitleNexusFlowManager.g;
        }

        public final void c(SubtitleNexusFlowManager subtitleNexusFlowManager) {
            SubtitleNexusFlowManager.g = subtitleNexusFlowManager;
        }

        public a() {
        }
    }

    public final void g(AILaunageConfig aILaunageConfig) {
        if (y45.e("none", aILaunageConfig.getToLang())) {
            aILaunageConfig.setToLang(aILaunageConfig.getFromLang());
        }
    }

    public final void h(Context context) {
        Log.d("SubtitleNexusFlowManager", "initSubtitleManager " + context);
        this.a = new SubtitleManager(context, new SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1(this));
    }

    public final boolean i() {
        return this.c == 2;
    }

    public final void j(String str) {
        if (!i()) {
            Log.e("SubtitleNexusFlowManager", "update isServiceConnected");
            return;
        }
        try {
            SubtitleManager subtitleManager = this.a;
            if (subtitleManager != null) {
                subtitleManager.translate(str);
            }
        } catch (Exception e) {
            Log.e("SubtitleNexusFlowManager", "offlineTranslate " + e);
        }
    }

    public final void k(String str) {
        Log.i("SubtitleNexusFlowManager", "release " + this.a);
        String str2 = this.e;
        if (str2 != null && !y45.e(str2, str)) {
            Log.e("SubtitleNexusFlowManager", "release tag not match");
            return;
        }
        try {
            SubtitleManager subtitleManager = this.a;
            if (subtitleManager != null) {
                if (subtitleManager != null) {
                    subtitleManager.release();
                }
                this.c = -1;
                this.a = null;
                this.d = State.NONE;
            }
        } catch (Exception e) {
            Log.e("SubtitleNexusFlowManager", "release " + e);
        }
    }

    public final void l(String str) {
        this.e = str;
    }

    public final void m(zt4 zt4Var) {
        this.b = zt4Var;
    }

    public final void n(AILaunageConfig aILaunageConfig, boolean z) {
        y45.j(aILaunageConfig, "config");
        Log.i("SubtitleNexusFlowManager", "start " + (z ? SubtitleBean.InputType.AUDIO : SubtitleBean.InputType.TEXT) + ", " + aILaunageConfig);
        if (this.a == null) {
            Log.w("SubtitleNexusFlowManager", "start initSubtitleManager");
            h(se.a());
            return;
        }
        if (!i()) {
            Log.w("SubtitleNexusFlowManager", "start isServiceConnected");
            return;
        }
        SubtitleManager subtitleManager = this.a;
        State state = subtitleManager != null ? subtitleManager.getState() : null;
        State state2 = State.STARTED;
        if (state == state2) {
            Log.i("SubtitleNexusFlowManager", "start had started");
            return;
        }
        this.d = state2;
        g(aILaunageConfig);
        SubtitleBean subtitleBean = new SubtitleBean();
        subtitleBean.mInLanguage = aILaunageConfig.getFromLang();
        subtitleBean.mOutLanguage = aILaunageConfig.getToLang();
        subtitleBean.mInputType = z ? SubtitleBean.InputType.AUDIO : SubtitleBean.InputType.TEXT;
        try {
            SubtitleManager subtitleManager2 = this.a;
            if (subtitleManager2 != null) {
                subtitleManager2.start(subtitleBean);
            }
        } catch (Exception e) {
            Log.e("SubtitleNexusFlowManager", "start " + e);
        }
    }

    public final void o() {
        SubtitleManager subtitleManager;
        Log.d("SubtitleNexusFlowManager", "stop " + this.a);
        try {
            SubtitleManager subtitleManager2 = this.a;
            if ((subtitleManager2 != null ? subtitleManager2.getState() : null) == State.STOPPED || (subtitleManager = this.a) == null) {
                return;
            }
            subtitleManager.stop(5);
        } catch (Exception e) {
            Log.e("SubtitleNexusFlowManager", "stop " + e);
        }
    }

    public final void p(AILaunageConfig aILaunageConfig, boolean z) {
        y45.j(aILaunageConfig, "config");
        if (this.a == null) {
            h(se.a());
        }
        if (!i()) {
            Log.e("SubtitleNexusFlowManager", "update isNot ServiceConnected");
            return;
        }
        try {
            if (this.a != null) {
                g(aILaunageConfig);
                Log.d("SubtitleNexusFlowManager", "update " + (z ? SubtitleBean.InputType.AUDIO : SubtitleBean.InputType.TEXT) + ", " + aILaunageConfig);
                SubtitleBean subtitleBean = new SubtitleBean();
                subtitleBean.mInLanguage = aILaunageConfig.getFromLang();
                subtitleBean.mOutLanguage = aILaunageConfig.getToLang();
                subtitleBean.mInputType = z ? SubtitleBean.InputType.AUDIO : SubtitleBean.InputType.TEXT;
                SubtitleManager subtitleManager = this.a;
                if (subtitleManager != null) {
                    subtitleManager.update(subtitleBean);
                }
            }
        } catch (Exception e) {
            Log.e("SubtitleNexusFlowManager", "update " + e);
        }
    }
}
