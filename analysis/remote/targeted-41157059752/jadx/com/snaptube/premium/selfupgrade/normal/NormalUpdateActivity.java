package com.snaptube.premium.selfupgrade.normal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
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
import com.snaptube.premium.selfupgrade.BaseUpgradeActivity;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import com.snaptube.premium.selfupgrade.incremental_upgrade.UpgradeConfig;
import com.snaptube.premium.selfupgrade.incremental_upgrade.b;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import o.cu7;
import o.gx0;
import o.m75;
import o.n75;
import o.or3;
import o.pg1;
import o.vh8;
import o.xh8;
import o.xy8;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 %2\u00020\u00012\u00020\u0002:\u0001&B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0018\u0010\fJ\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u0019\u0010\u001e\u001a\u00020\u00072\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0007H\u0002¢\u0006\u0004\b \u0010\u0004R\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;", "Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;", "Lo/gx0;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lo/mg8;", "onCreate", "(Landroid/os/Bundle;)V", "", "i1", "()Ljava/lang/String;", "Landroidx/appcompat/widget/Toolbar;", "n1", "()Landroidx/appcompat/widget/Toolbar;", "Landroid/view/View;", "m1", "()Landroid/view/View;", "w1", "b1", "Lo/xy8;", "p1", "()Lo/xy8;", "j1", "u1", "A1", "onBackPressed", "", "args", "n", "(Ljava/lang/Object;)V", "h2", "Lo/xh8;", CampaignEx.JSON_KEY_AD_Q, "Lo/xh8;", "binding", CampaignEx.JSON_KEY_AD_R, "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNormalUpdateActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NormalUpdateActivity.kt\ncom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,147:1\n262#2,2:148\n*S KotlinDebug\n*F\n+ 1 NormalUpdateActivity.kt\ncom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity\n*L\n77#1:148,2\n*E\n"})
public final class NormalUpdateActivity extends BaseUpgradeActivity implements gx0 {

    public static final Companion INSTANCE = new Companion(null);

    public xh8 binding;

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
            NavigationManager.l1(context, new Intent(context, (Class<?>) NormalUpdateActivity.class).putExtra("extra_update_config", upgradeConfig).putExtra("extra_update_from", str));
        }
    }

    public static void U1(NormalUpdateActivity normalUpdateActivity, View view) {
        c2(normalUpdateActivity, view);
    }

    public static void W1(NormalUpdateActivity normalUpdateActivity, View view) {
        d2(normalUpdateActivity, view);
    }

    public static final UpgradeConfig X1(NormalUpdateActivity normalUpdateActivity) {
        return normalUpdateActivity.e1();
    }

    public static final String Z1(NormalUpdateActivity normalUpdateActivity) {
        return normalUpdateActivity.getPopTriggerScene();
    }

    public static final void a2(NormalUpdateActivity normalUpdateActivity) {
        normalUpdateActivity.F1();
    }

    public static final void b2(NormalUpdateActivity normalUpdateActivity) {
        normalUpdateActivity.h2();
    }

    public static final void c2(NormalUpdateActivity normalUpdateActivity, View view) {
        or3.f(normalUpdateActivity, "this$0");
        normalUpdateActivity.h2();
        if (Config.l4()) {
            vh8.d(normalUpdateActivity, normalUpdateActivity.e1(), normalUpdateActivity.getPopTriggerScene(), normalUpdateActivity);
        } else {
            normalUpdateActivity.b1();
        }
    }

    public static final void d2(NormalUpdateActivity normalUpdateActivity, View view) {
        or3.f(normalUpdateActivity, "this$0");
        normalUpdateActivity.h2();
        normalUpdateActivity.z1();
    }

    @Override
    public void A1() {
        b.x(e1(), "normal_update_dialog", e1().isApkExist(), getPopTriggerScene());
    }

    @Override
    public void b1() {
        finish();
    }

    public final void h2() {
        CheckSelfUpgradeManager.d0(e1().getVersion());
    }

    @Override
    public String i1() {
        return "normal_upgrade";
    }

    @Override
    public String j1() {
        String strB2 = Config.b2();
        if (strB2 != null && !cu7.B(strB2)) {
            or3.c(strB2);
            return strB2;
        }
        String string = getString(R.string.update_now);
        or3.e(string, "getString(...)");
        return string;
    }

    @Override
    public View m1() {
        xh8 xh8VarC = xh8.c(getLayoutInflater());
        or3.e(xh8VarC, "inflate(...)");
        this.binding = xh8VarC;
        if (xh8VarC == null) {
            or3.w("binding");
            xh8VarC = null;
        }
        ConstraintLayout constraintLayoutB = xh8VarC.b();
        or3.e(constraintLayoutB, "getRoot(...)");
        return constraintLayoutB;
    }

    @Override
    public void n(Object args) {
        b1();
    }

    @Override
    public Toolbar n1() {
        xh8 xh8Var = this.binding;
        if (xh8Var == null) {
            or3.w("binding");
            xh8Var = null;
        }
        return xh8Var.e;
    }

    @Override
    public void onBackPressed() {
        if (Config.j3() && Config.l4()) {
            vh8.d(this, e1(), getPopTriggerScene(), this);
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public xy8 p1() {
        xh8 xh8Var = this.binding;
        if (xh8Var == null) {
            or3.w("binding");
            xh8Var = null;
        }
        xy8 xy8Var = xh8Var.j;
        or3.e(xy8Var, "upgradeProgressLayout");
        return xy8Var;
    }

    @Override
    public void u1() {
        xh8 xh8Var = this.binding;
        if (xh8Var == null) {
            or3.w("binding");
            xh8Var = null;
        }
        xh8Var.f.setText(d1());
        xh8Var.f.setMovementMethod(LinkMovementMethod.getInstance());
        String bigVersion = e1().getBigVersion();
        String strC2 = Config.c2();
        xh8Var.i.setText(!TextUtils.isEmpty(strC2) ? getString(R.string.upgrade_custom_title_version_format, strC2, bigVersion) : getString(R.string.upgrade_default_title_version_format, bigVersion));
        xh8Var.j.e.setText(o1());
    }

    @Override
    public void w1() {
        u1();
        xh8 xh8Var = this.binding;
        xh8 xh8Var2 = null;
        if (xh8Var == null) {
            or3.w("binding");
            xh8Var = null;
        }
        FrameLayout frameLayout = xh8Var.j.b;
        or3.e(frameLayout, "flContainer");
        ViewKt.t(frameLayout, new NormalUpdateActivity$initView$1(this));
        xh8 xh8Var3 = this.binding;
        if (xh8Var3 == null) {
            or3.w("binding");
            xh8Var3 = null;
        }
        xh8Var3.g.setOnClickListener(new m75(this));
        xh8 xh8Var4 = this.binding;
        if (xh8Var4 == null) {
            or3.w("binding");
            xh8Var4 = null;
        }
        ImageView imageView = xh8Var4.c;
        or3.e(imageView, "ivNormalFeedback");
        imageView.setVisibility(Config.w4() ? 0 : 8);
        xh8 xh8Var5 = this.binding;
        if (xh8Var5 == null) {
            or3.w("binding");
        } else {
            xh8Var2 = xh8Var5;
        }
        xh8Var2.c.setOnClickListener(new n75(this));
    }
}
