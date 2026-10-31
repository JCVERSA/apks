package com.snaptube.premium.selfupgrade.force;

import android.content.Context;
import android.content.Intent;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.snaptube.ktx.view.ViewKt;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.selfupgrade.BaseUpgradeActivity;
import com.snaptube.premium.selfupgrade.incremental_upgrade.UpgradeConfig;
import com.snaptube.premium.selfupgrade.incremental_upgrade.b;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import o.b88;
import o.m5;
import o.or3;
import o.pg1;
import o.qr2;
import o.xi7;
import o.xy8;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\bJ\u000f\u0010\u0014\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0018\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0019\u0010\u0003R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;", "Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;", "<init>", "()V", "Lo/mg8;", "w1", "", "i1", "()Ljava/lang/String;", "Landroidx/appcompat/widget/Toolbar;", "n1", "()Landroidx/appcompat/widget/Toolbar;", "Landroid/view/View;", "m1", "()Landroid/view/View;", "b1", "Lo/xy8;", "p1", "()Lo/xy8;", "j1", "u1", "A1", "onBackPressed", "a2", "d2", "b2", "", CampaignEx.JSON_KEY_AD_Q, "J", "lastClick", "Lo/m5;", CampaignEx.JSON_KEY_AD_R, "Lo/m5;", "binding", "s", "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nForceUpdateActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceUpdateActivity.kt\ncom/snaptube/premium/selfupgrade/force/ForceUpdateActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,139:1\n262#2,2:140\n*S KotlinDebug\n*F\n+ 1 ForceUpdateActivity.kt\ncom/snaptube/premium/selfupgrade/force/ForceUpdateActivity\n*L\n57#1:140,2\n*E\n"})
public final class ForceUpdateActivity extends BaseUpgradeActivity {

    public static final Companion INSTANCE = new Companion(null);
    public static final long t = TimeUnit.SECONDS.toMillis(2);

    public long lastClick = -1;

    public m5 binding;

    public static final class Companion {
        public Companion() {
        }

        public Companion(pg1 pg1Var) {
            this();
        }

        public final void a(Context context, UpgradeConfig upgradeConfig, String str) {
            or3.f(context, "context");
            or3.f(upgradeConfig, "updateConfig");
            or3.f(str, "from");
            NavigationManager.l1(context, new Intent(context, (Class<?>) ForceUpdateActivity.class).putExtra("extra_update_config", upgradeConfig).putExtra("extra_update_from", str));
        }
    }

    public static void U1(ForceUpdateActivity forceUpdateActivity, View view) {
        c2(forceUpdateActivity, view);
    }

    public static final UpgradeConfig W1(ForceUpdateActivity forceUpdateActivity) {
        return forceUpdateActivity.e1();
    }

    public static final String X1(ForceUpdateActivity forceUpdateActivity) {
        return forceUpdateActivity.getPopTriggerScene();
    }

    public static final void Z1(ForceUpdateActivity forceUpdateActivity) {
        forceUpdateActivity.F1();
    }

    public static final void c2(ForceUpdateActivity forceUpdateActivity, View view) {
        or3.f(forceUpdateActivity, "this$0");
        forceUpdateActivity.z1();
    }

    @Override
    public void A1() {
        d2();
        b.x(e1(), "force_update_dialog", e1().isApkExist(), getPopTriggerScene());
    }

    public final void a2() {
        NavigationManager.e(this);
        finish();
    }

    @Override
    public void b1() {
        a2();
    }

    public final void b2() {
        AppForceUpdateHelper.a.h();
    }

    public final void d2() {
        ReportPropertyBuilder.e().setEventName("$AppViewScreen").setProperty("$url", "/compulsory_upgrade").setProperty("signature", e1().getFullMd5()).setProperty("is_not_an_official_version", Boolean.valueOf(xi7.c(getApplicationContext(), true))).reportEvent();
    }

    @Override
    public String i1() {
        return "compulsory_upgrade";
    }

    @Override
    public String j1() {
        String string = getString(R.string.update);
        or3.e(string, "getString(...)");
        return string;
    }

    @Override
    public View m1() {
        m5 m5VarC = m5.c(getLayoutInflater());
        or3.e(m5VarC, "inflate(...)");
        this.binding = m5VarC;
        if (m5VarC == null) {
            or3.w("binding");
            m5VarC = null;
        }
        ConstraintLayout constraintLayoutB = m5VarC.b();
        or3.e(constraintLayoutB, "getRoot(...)");
        return constraintLayoutB;
    }

    @Override
    public Toolbar n1() {
        m5 m5Var = this.binding;
        if (m5Var == null) {
            or3.w("binding");
            m5Var = null;
        }
        return m5Var.f;
    }

    @Override
    public void onBackPressed() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastClick < t) {
            b2();
        } else {
            this.lastClick = jCurrentTimeMillis;
            b88.l(this, R.string.toast_double_click_back);
        }
    }

    @Override
    public xy8 p1() {
        m5 m5Var = this.binding;
        if (m5Var == null) {
            or3.w("binding");
            m5Var = null;
        }
        xy8 xy8Var = m5Var.k;
        or3.e(xy8Var, "upgradeProgressLayout");
        return xy8Var;
    }

    @Override
    public void u1() {
        m5 m5Var = this.binding;
        m5 m5Var2 = null;
        if (m5Var == null) {
            or3.w("binding");
            m5Var = null;
        }
        m5Var.g.setText(d1());
        m5 m5Var3 = this.binding;
        if (m5Var3 == null) {
            or3.w("binding");
            m5Var3 = null;
        }
        m5Var3.g.setMovementMethod(LinkMovementMethod.getInstance());
        m5 m5Var4 = this.binding;
        if (m5Var4 == null) {
            or3.w("binding");
            m5Var4 = null;
        }
        m5Var4.j.setText(getString(R.string.force_update_title, e1().getBigVersion()));
        m5 m5Var5 = this.binding;
        if (m5Var5 == null) {
            or3.w("binding");
        } else {
            m5Var2 = m5Var5;
        }
        m5Var2.k.e.setText(o1());
    }

    @Override
    public void w1() {
        u1();
        m5 m5Var = this.binding;
        m5 m5Var2 = null;
        if (m5Var == null) {
            or3.w("binding");
            m5Var = null;
        }
        FrameLayout frameLayout = m5Var.k.b;
        or3.e(frameLayout, "flContainer");
        ViewKt.t(frameLayout, new ForceUpdateActivity$initView$1(this));
        m5 m5Var3 = this.binding;
        if (m5Var3 == null) {
            or3.w("binding");
            m5Var3 = null;
        }
        ImageView imageView = m5Var3.d;
        or3.e(imageView, "ivFeedback");
        imageView.setVisibility(Config.w4() ? 0 : 8);
        m5 m5Var4 = this.binding;
        if (m5Var4 == null) {
            or3.w("binding");
        } else {
            m5Var2 = m5Var4;
        }
        m5Var2.d.setOnClickListener(new qr2(this));
    }
}
