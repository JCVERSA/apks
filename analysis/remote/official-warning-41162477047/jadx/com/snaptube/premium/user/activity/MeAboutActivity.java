package com.snaptube.premium.user.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.phoenix.slog.SnapTubeLoggerManager;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.ktx.view.ViewKt;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.activity.BaseSwipeBackActivity;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.controller.DialogHelper;
import com.snaptube.premium.dialog.PiraticalApkWarningDialogFragment;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import com.wandoujia.base.config.GlobalConfig;
import kotlin.Metadata;
import o.an5;
import o.b88;
import o.bk4;
import o.ck4;
import o.d97;
import o.dk4;
import o.ek4;
import o.fy4;
import o.hk4;
import o.ix6;
import o.j;
import o.lf2;
import o.or3;
import o.q55;
import o.sh;
import o.u5;
import o.ve1;
import o.vm8;
import o.xi7;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u0019\u0010\u0017\u001a\u00020\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001a\u0010\u0004R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/snaptube/premium/user/activity/MeAboutActivity;", "Lcom/snaptube/premium/activity/BaseSwipeBackActivity;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lo/mg8;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "Z0", "", "isFirstCheck", "Y0", "(Z)V", "j1", "i1", "Landroid/widget/TextView;", "tvInfo", "l1", "(Landroid/widget/TextView;)V", "d1", "c1", "Lo/u5;", "h", "Lo/u5;", "binding", "i", "Z", "isManualCheck", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class MeAboutActivity extends BaseSwipeBackActivity implements View.OnClickListener {

    public u5 binding;

    public boolean isManualCheck;

    public static void F0(MeAboutActivity meAboutActivity) {
        g1(meAboutActivity);
    }

    public static void H0(lf2 lf2Var, MeAboutActivity meAboutActivity, View view) {
        b1(lf2Var, meAboutActivity, view);
    }

    public static void I0(TextView textView, String str, View view) {
        h1(textView, str, view);
    }

    public static void J0(MeAboutActivity meAboutActivity, View view) {
        e1(meAboutActivity, view);
    }

    public static final void N0(MeAboutActivity meAboutActivity, boolean z) {
        meAboutActivity.Y0(z);
    }

    public static final u5 P0(MeAboutActivity meAboutActivity) {
        return meAboutActivity.binding;
    }

    public static final boolean Q0(MeAboutActivity meAboutActivity) {
        return meAboutActivity.isManualCheck;
    }

    public static final void R0(MeAboutActivity meAboutActivity) {
        meAboutActivity.i1();
    }

    public static final void S0(MeAboutActivity meAboutActivity, boolean z) {
        meAboutActivity.isManualCheck = z;
    }

    public static final void V0(MeAboutActivity meAboutActivity) {
        meAboutActivity.j1();
    }

    public static final void b1(lf2 lf2Var, MeAboutActivity meAboutActivity, View view) {
        or3.f(lf2Var, "$faqArticleHelper");
        or3.f(meAboutActivity, "this$0");
        lf2Var.c(meAboutActivity);
    }

    public static final void e1(MeAboutActivity meAboutActivity, View view) {
        or3.f(meAboutActivity, "this$0");
        meAboutActivity.finish();
    }

    public static final void g1(MeAboutActivity meAboutActivity) {
        or3.f(meAboutActivity, "this$0");
        DialogHelper.a.k(meAboutActivity);
        SnapTubeLoggerManager.Instance.reportForce();
    }

    public static final void h1(TextView textView, String str, View view) {
        or3.f(textView, "$this_apply");
        d97.a.q("about");
        NavigationManager.e0(textView.getContext(), str, true, "", "me_about");
    }

    public final void Y0(boolean isFirstCheck) {
        u5 u5Var = this.binding;
        u5 u5Var2 = null;
        if (u5Var == null) {
            or3.w("binding");
            u5Var = null;
        }
        u5Var.d.b().setVisibility(0);
        u5 u5Var3 = this.binding;
        if (u5Var3 == null) {
            or3.w("binding");
            u5Var3 = null;
        }
        u5Var3.k.setVisibility(8);
        u5 u5Var4 = this.binding;
        if (u5Var4 == null) {
            or3.w("binding");
        } else {
            u5Var2 = u5Var4;
        }
        u5Var2.h.setVisibility(8);
        CheckSelfUpgradeManager.p(this, "MeAboutActivity").z0(ix6.d()).Y(sh.c()).x0(new MeAboutActivity$checkUpgrade$1(this, isFirstCheck));
    }

    public final void Z0() {
        lf2 lf2Var = new lf2(Config.O());
        boolean zA = lf2Var.a();
        u5 u5Var = this.binding;
        u5 u5Var2 = null;
        if (u5Var == null) {
            or3.w("binding");
            u5Var = null;
        }
        u5Var.f.setVisibility(zA ? 0 : 8);
        if (zA) {
            u5 u5Var3 = this.binding;
            if (u5Var3 == null) {
                or3.w("binding");
            } else {
                u5Var2 = u5Var3;
            }
            u5Var2.f.setOnClickListener(new ek4(lf2Var, this));
        }
    }

    public final void c1() {
        u5 u5Var = this.binding;
        u5 u5Var2 = null;
        if (u5Var == null) {
            or3.w("binding");
            u5Var = null;
        }
        u5Var.e.d.setOnClickListener(this);
        u5 u5Var3 = this.binding;
        if (u5Var3 == null) {
            or3.w("binding");
            u5Var3 = null;
        }
        u5Var3.e.f.setOnClickListener(this);
        u5 u5Var4 = this.binding;
        if (u5Var4 == null) {
            or3.w("binding");
            u5Var4 = null;
        }
        u5Var4.e.e.setOnClickListener(this);
        u5 u5Var5 = this.binding;
        if (u5Var5 == null) {
            or3.w("binding");
        } else {
            u5Var2 = u5Var5;
        }
        u5Var2.e.c.setOnClickListener(this);
    }

    public final void d1() {
        hk4 hk4Var = new hk4();
        u5 u5Var = this.binding;
        if (u5Var == null) {
            or3.w("binding");
            u5Var = null;
        }
        hk4Var.c(u5Var.n);
    }

    public final void i1() {
        u5 u5Var = this.binding;
        u5 u5Var2 = null;
        if (u5Var == null) {
            or3.w("binding");
            u5Var = null;
        }
        u5Var.k.setVisibility(0);
        u5 u5Var3 = this.binding;
        if (u5Var3 == null) {
            or3.w("binding");
            u5Var3 = null;
        }
        u5Var3.h.setVisibility(8);
        u5 u5Var4 = this.binding;
        if (u5Var4 == null) {
            or3.w("binding");
        } else {
            u5Var2 = u5Var4;
        }
        LinearLayout linearLayout = u5Var2.l;
        or3.e(linearLayout, "meAboutUpgradeGroup");
        ViewKt.t(linearLayout, new MeAboutActivity$onErrorOrNotNetwork$1(this));
        if (this.isManualCheck) {
            b88.e(this, !q55.B(this) ? R.string.no_network_tips2 : R.string.setting_toast_update_failed);
        }
    }

    public final void j1() {
        new j(this, Config.T3(this)).c();
    }

    public final void l1(TextView tvInfo) {
        if (tvInfo == null) {
            return;
        }
        tvInfo.setText(tvInfo.getResources().getString(R.string.version, an5.d(tvInfo.getContext())));
    }

    @Override
    public void onClick(@Nullable View v) {
        Integer numValueOf = v != null ? Integer.valueOf(v.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.tv_me_about_credits) {
            NavigationManager.S(this);
        } else if (numValueOf != null && numValueOf.intValue() == R.id.tv_me_about_setting_terms) {
            NavigationManager.r0(this);
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        u5 u5VarC = u5.c(getLayoutInflater());
        or3.e(u5VarC, "inflate(...)");
        this.binding = u5VarC;
        u5 u5Var = null;
        if (u5VarC == null) {
            or3.w("binding");
            u5VarC = null;
        }
        setContentView(u5VarC.b());
        u5 u5Var2 = this.binding;
        if (u5Var2 == null) {
            or3.w("binding");
            u5Var2 = null;
        }
        u5Var2.f637o.setNavigationOnClickListener(new bk4(this));
        u5 u5Var3 = this.binding;
        if (u5Var3 == null) {
            or3.w("binding");
            u5Var3 = null;
        }
        setSupportActionBar(u5Var3.f637o);
        u5 u5Var4 = this.binding;
        if (u5Var4 == null) {
            or3.w("binding");
            u5Var4 = null;
        }
        new fy4(u5Var4.b, new ck4(this));
        u5 u5Var5 = this.binding;
        if (u5Var5 == null) {
            or3.w("binding");
            u5Var5 = null;
        }
        l1(u5Var5.q);
        Z0();
        Y0(true);
        this.isManualCheck = false;
        d1();
        c1();
        u5 u5Var6 = this.binding;
        if (u5Var6 == null) {
            or3.w("binding");
            u5Var6 = null;
        }
        u5Var6.e.b.setText(getString(R.string.about_dialog_declaration, ve1.d()));
        if (xi7.c(this, false)) {
            PiraticalApkWarningDialogFragment piraticalApkWarningDialogFragment = new PiraticalApkWarningDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putString(IntentUtil.POS, "me_about");
            piraticalApkWarningDialogFragment.setArguments(bundle);
            piraticalApkWarningDialogFragment.E2(getSupportFragmentManager());
        }
        u5 u5Var7 = this.binding;
        if (u5Var7 == null) {
            or3.w("binding");
        } else {
            u5Var = u5Var7;
        }
        TextView textView = u5Var.p;
        String snaptubeHomePageUrl = GlobalConfig.getSnaptubeHomePageUrl();
        textView.setText(vm8.a(snaptubeHomePageUrl));
        textView.setPaintFlags(textView.getPaintFlags() | 8);
        textView.setOnClickListener(new dk4(textView, snaptubeHomePageUrl));
    }
}
