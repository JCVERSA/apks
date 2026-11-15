package com.transsion.ad.bidding.gemini;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import xh.b;

public abstract class AbsBiddingBuyOutGemini implements b {

    public static final a f40905g = new a(null);

    private oh.a f40906a;

    private Integer f40908c;

    private boolean f40910e;

    private String f40907b = "";

    private Boolean f40909d = Boolean.TRUE;

    private final BroadcastReceiver f40911f = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            Intrinsics.h(intent, "intent");
            this.f40912a.o(context, intent);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final String f() {
        return "com.transsion.ad.bidding." + e() + ".click";
    }

    private final String g() {
        return "com.transsion.ad.bidding." + e() + ".close";
    }

    private final String h() {
        return "com.transsion.ad.bidding." + e() + ".display";
    }

    private final String i() {
        return "com.transsion.ad.bidding." + e() + ".display_timestamp";
    }

    private final oh.a j() {
        return this.f40906a;
    }

    private final String k() {
        return "com.transsion.ad.bidding." + e() + ".resume";
    }

    private final String l() {
        return "com.transsion.ad.bidding." + e() + ".rewarded";
    }

    private final String m() {
        return "com.transsion.ad.bidding." + e() + ".show_error";
    }

    public final void o(Context context, Intent intent) {
        oh.a aVarJ;
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = Build.VERSION.SDK_INT >= 33 ? (BiddingIntermediateMaterialBean) intent.getParcelableExtra("ad_max_ecpm_object", BiddingIntermediateMaterialBean.class) : (BiddingIntermediateMaterialBean) intent.getParcelableExtra("ad_max_ecpm_object");
        long longExtra = intent.getLongExtra("display_timestamp", 0L);
        String action = intent.getAction();
        if (Intrinsics.c(action, k())) {
            oh.a aVarJ2 = j();
            if (aVarJ2 != null) {
                aVarJ2.f(biddingIntermediateMaterialBean);
                return;
            }
            return;
        }
        if (Intrinsics.c(action, h())) {
            oh.a aVarJ3 = j();
            if (aVarJ3 != null) {
                aVarJ3.c(biddingIntermediateMaterialBean);
                return;
            }
            return;
        }
        if (Intrinsics.c(action, f())) {
            oh.a aVarJ4 = j();
            if (aVarJ4 != null) {
                aVarJ4.a(biddingIntermediateMaterialBean);
                return;
            }
            return;
        }
        if (Intrinsics.c(action, l())) {
            oh.a aVarJ5 = j();
            if (aVarJ5 != null) {
                aVarJ5.g(biddingIntermediateMaterialBean);
                return;
            }
            return;
        }
        if (Intrinsics.c(action, i())) {
            oh.a aVarJ6 = j();
            if (aVarJ6 != null) {
                aVarJ6.d(biddingIntermediateMaterialBean, longExtra);
                return;
            }
            return;
        }
        if (Intrinsics.c(action, g())) {
            oh.a aVarJ7 = j();
            if (aVarJ7 != null) {
                aVarJ7.b(biddingIntermediateMaterialBean);
                return;
            }
            return;
        }
        if (!Intrinsics.c(action, m()) || (aVarJ = j()) == null) {
            return;
        }
        aVarJ.h(null, biddingIntermediateMaterialBean);
    }

    public final void b() {
        r1.a.b(Utils.a()).e(this.f40911f);
        r(null);
        this.f40910e = false;
    }

    public abstract Class c();

    public final String d() {
        return com.transsion.ad.scene.a.f41152a.a(getSceneId());
    }

    public abstract String e();

    @Override
    public String getClassTag() {
        return b.a.a(this);
    }

    @Override
    public String getSceneId() {
        return this.f40907b;
    }

    public final AbsBiddingBuyOutGemini n(Boolean bool) {
        this.f40909d = bool;
        return this;
    }

    @Override
    public void onLog(int i10, String str, String str2, boolean z10) {
        b.a.b(this, i10, str, str2, z10);
    }

    public final AbsBiddingBuyOutGemini p() {
        if (!this.f40910e) {
            this.f40910e = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(k());
            intentFilter.addAction(h());
            intentFilter.addAction(f());
            intentFilter.addAction(l());
            intentFilter.addAction(i());
            intentFilter.addAction(g());
            intentFilter.addAction(m());
            r1.a.b(Utils.a()).c(this.f40911f, intentFilter);
        }
        return this;
    }

    public final AbsBiddingBuyOutGemini q(Integer num) {
        this.f40908c = num;
        return this;
    }

    public final AbsBiddingBuyOutGemini r(oh.a aVar) {
        this.f40906a = aVar;
        return this;
    }

    public final AbsBiddingBuyOutGemini s(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        this.f40907b = sceneId;
        return this;
    }

    public final void t(Context context, String sceneId, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        Object objM453constructorimpl;
        oh.a aVarJ;
        Unit unit;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (context != null) {
                Intent intent = new Intent(context, (Class<?>) c());
                intent.putExtra("scene_id", sceneId);
                intent.putExtra("ad_max_ecpm_object", biddingIntermediateMaterialBean);
                intent.putExtra("app_layout_id", this.f40908c);
                intent.putExtra("is_show_member_btn", this.f40909d);
                intent.putExtra("action_resume", k());
                intent.putExtra("action_display", h());
                intent.putExtra("action_click", f());
                intent.putExtra("action_display_timestamp", i());
                intent.putExtra("action_rewarded", l());
                intent.putExtra("action_close", g());
                intent.putExtra("show_error", m());
                context.startActivity(intent);
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            objM453constructorimpl = Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null || (aVarJ = j()) == null) {
            return;
        }
        aVarJ.h(new TAdErrorCode(102, String.valueOf(thM456exceptionOrNullimpl.getMessage())), null);
    }
}
