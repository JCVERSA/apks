package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.cloud.tupdate.TUpdate;
import com.cloud.tupdate.bean.AppScoreContent;
import com.cloud.tupdate.bean.UpdateContent;
import com.cloud.tupdate.bean.UpdateEntity;
import com.transsion.ga.AthenaAnalytics;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

public final class vk {
    public static final vk a = new vk();

    public static final void A(Bundle bundle, String str) {
        y45.j(bundle, "$bundle1");
        y45.j(str, "$eventName");
        Bundle bundleM = a.m(bundle);
        bundleM.putString("terminal_type", "sdk");
        bundleM.putString("sdk_channel_id", "");
        new wj(str, 7936).c(bundleM, null).b();
    }

    public static final void D(Bundle bundle) {
        y45.j(bundle, "$bundle");
        bundle.putString("terminal_type", "sdk");
        bundle.putString("sdk_channel_id", "");
        new wj("upgrade_common_exposure", 7936).c(bundle, null).b();
    }

    public static final void E(String str, UpdateEntity updateEntity) {
        UpdateContent updateContent;
        AppScoreContent appScoreContent;
        UpdateContent updateContent2;
        y45.j(str, "$pageName");
        vk vkVar = a;
        String updateVersion = null;
        Bundle bundleN = n(vkVar, null, 1, null);
        bundleN.putString("action", "exposure");
        bundleN.putString("page", str);
        if (updateEntity != null && (updateContent2 = updateEntity.getUpdateContent()) != null) {
            updateVersion = updateContent2.getUpdateVersion();
        }
        bundleN.putString("upgrade_version", updateVersion);
        if ((updateEntity == null || (updateContent = updateEntity.getUpdateContent()) == null) ? false : y45.e(updateContent.getForce(), Boolean.TRUE)) {
            bundleN.putString("upgrade_type", "force");
        } else {
            bundleN.putString("upgrade_type", "optional");
        }
        if ((updateEntity == null || (appScoreContent = updateEntity.getAppScoreContent()) == null) ? false : y45.e(appScoreContent.getShowAfterUpdate(), Boolean.TRUE)) {
            bundleN.putInt("show_after_update", 1);
        } else {
            bundleN.putInt("show_after_update", 0);
        }
        vkVar.B(bundleN);
    }

    public static final void G(String str, String str2) {
        y45.j(str, "$type");
        Bundle bundle = new Bundle();
        bundle.putString("page", "score");
        bundle.putString("action", "score_click");
        bundle.putString("button_type", str);
        bundle.putString("action_url", str2);
        a.p(bundle);
    }

    public static final void I(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("headers", str);
        bundle.putString("params", str2);
        a.z("update_request", bundle);
    }

    public static final void K(int i, String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putInt("response_state", i);
        bundle.putString("response_code", str);
        bundle.putString("response_message", str2);
        a.z("update_request_result", bundle);
    }

    public static final void M(String str, String str2) {
        y45.j(str, "$type");
        Bundle bundle = new Bundle();
        bundle.putString("page", "upgrade");
        bundle.putString("action", "upgrade_click");
        bundle.putString("button_type", str);
        bundle.putString("action_url", str2);
        a.p(bundle);
    }

    public static Bundle n(vk vkVar, Bundle bundle, int i, Object obj) {
        if ((i & 1) != 0) {
            bundle = null;
        }
        return vkVar.m(bundle);
    }

    public static final void q(Bundle bundle) {
        y45.j(bundle, "$bundle1");
        Bundle bundleM = a.m(bundle);
        bundleM.putString("terminal_type", "sdk");
        bundleM.putString("sdk_channel_id", "");
        new wj("upgrade_common_click", 7936).c(bundleM, null).b();
    }

    public static final void s(String str, String str2, int i) {
        y45.j(str, "$pageName");
        y45.j(str2, "$action");
        Bundle bundle = new Bundle();
        bundle.putString("page", str);
        bundle.putString("action", str2);
        bundle.putInt("ignore_type", i);
        a.p(bundle);
    }

    public static final void u() {
        Bundle bundle = new Bundle();
        bundle.putInt("install_status", 1);
        a.z("install_status", bundle);
    }

    public static final void w(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("user_version", str);
        bundle.putString("update_version", str2);
        a.z("need_update", bundle);
    }

    public static final void y(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("reason_code", i);
        a.z("no_show_dialog_reason", bundle);
    }

    public final void B(final Bundle bundle) {
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.D(bundle);
            }
        });
    }

    public final void C(final String str, final UpdateEntity updateEntity) {
        y45.j(str, "pageName");
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.E(str, updateEntity);
            }
        });
    }

    public final void F(final String str, final String str2) {
        y45.j(str, "type");
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.G(str, str2);
            }
        });
    }

    public final void H(final String str, final String str2) {
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.I(str, str2);
            }
        });
    }

    public final void J(final int i, final String str, final String str2) {
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.K(i, str, str2);
            }
        });
    }

    public final void L(final String str, final String str2) {
        y45.j(str, "type");
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.M(str, str2);
            }
        });
    }

    public final Bundle m(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        qa1 qa1Var = qa1.a;
        bundle.putString("country", qa1Var.d());
        bundle.putString("language", qa1Var.i());
        bundle.putString("brand", qa1Var.c());
        bundle.putString(CommonUrlParts.OS_VERSION, qa1Var.q());
        bundle.putString("app_version", qa1Var.k(TUpdate.c.a()));
        return bundle;
    }

    public final void o(Context context, boolean z) {
        AthenaAnalytics.P(context, "upgradeSdk", 7936, z, false);
        AthenaAnalytics.a0(z);
        AthenaAnalytics.Z(z);
    }

    public final void p(final Bundle bundle) {
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.q(bundle);
            }
        });
    }

    public final void r(final String str, final String str2, final int i) {
        y45.j(str, "pageName");
        y45.j(str2, "action");
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.s(str, str2, i);
            }
        });
    }

    public final void t() {
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.u();
            }
        });
    }

    public final void v(final String str, final String str2) {
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.w(str, str2);
            }
        });
    }

    public final void x(final int i) {
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.y(i);
            }
        });
    }

    public final void z(final String str, final Bundle bundle) {
        y45.j(str, "eventName");
        y45.j(bundle, "bundle1");
        hk.a.d(new Runnable() {
            @Override
            public final void run() {
                vk.A(bundle, str);
            }
        });
    }
}
