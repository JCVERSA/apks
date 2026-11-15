package com.transsion.usercenter.setting;

import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.laboratory.LabPwdDialog;
import com.transsion.usercenter.laboratory.LaboratoryActivity;
import com.transsion.usercenter.laboratory.MccActivity;
import com.transsion.usercenter.laboratory.developer.AdDeveloperDialog;
import com.transsion.web.api.WebPageIdentity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import xu.v0;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00128\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u0014¨\u0006\u001e"}, d2 = {"Lcom/transsion/usercenter/setting/SettingAboutUsActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/v0;", "<init>", "()V", "", "initView", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "isStatusDark", "()Z", "isTranslucent", "f0", "()Lxu/v0;", "onDestroy", "", "a", "I", "CLICK_COUNT", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "CLICK_TIME", "", "c", "J", "lastClickTime", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "clickCount", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SettingAboutUsActivity extends BaseActivity<v0> {

    private final int CLICK_COUNT = 6;

    private final int CLICK_TIME = 500;

    private long lastClickTime;

    private int clickCount;

    public static final class a extends ClickableSpan {
        a() {
        }

        @Override
        public void onClick(View widget) {
            Intrinsics.h(widget, "widget");
            Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", "https://h5-static.aoneroom.com/spa/html/moviebox-privacy-policy.html"), SettingAboutUsActivity.this, null, 2, null);
        }

        @Override
        public void updateDrawState(TextPaint ds2) {
            Intrinsics.h(ds2, "ds");
            super.updateDrawState(ds2);
            ds2.setColor(androidx.core.content.b.getColor(SettingAboutUsActivity.this, R$color.main));
            ds2.setUnderlineText(false);
            ds2.clearShadowLayer();
        }
    }

    public static final class b extends ClickableSpan {
        b() {
        }

        @Override
        public void onClick(View widget) {
            Intrinsics.h(widget, "widget");
            Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", "https://h5-static.aoneroom.com/spa/html/moviebox-terms-of-use.html"), SettingAboutUsActivity.this, null, 2, null);
        }

        @Override
        public void updateDrawState(TextPaint ds2) {
            Intrinsics.h(ds2, "ds");
            super.updateDrawState(ds2);
            ds2.setColor(androidx.core.content.b.getColor(SettingAboutUsActivity.this, R$color.main));
            ds2.setUnderlineText(false);
            ds2.clearShadowLayer();
        }
    }

    public static final void g0(final SettingAboutUsActivity settingAboutUsActivity, boolean z10, View view) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - settingAboutUsActivity.lastClickTime < settingAboutUsActivity.CLICK_TIME) {
            settingAboutUsActivity.clickCount++;
        } else {
            settingAboutUsActivity.clickCount = 0;
        }
        settingAboutUsActivity.lastClickTime = jCurrentTimeMillis;
        if (settingAboutUsActivity.clickCount == settingAboutUsActivity.CLICK_COUNT) {
            if (z10) {
                settingAboutUsActivity.startActivity(new Intent(settingAboutUsActivity, (Class<?>) LaboratoryActivity.class));
            } else {
                new LabPwdDialog().r0(new Function0() {
                    @Override
                    public final Object invoke() {
                        return SettingAboutUsActivity.h0(this.f55239a);
                    }
                }).k0(settingAboutUsActivity, "labPwd");
            }
        }
    }

    public static final Unit h0(SettingAboutUsActivity settingAboutUsActivity) {
        settingAboutUsActivity.startActivity(new Intent(settingAboutUsActivity, (Class<?>) LaboratoryActivity.class));
        return Unit.f64096a;
    }

    public static final void i0(final SettingAboutUsActivity settingAboutUsActivity, View view) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - settingAboutUsActivity.lastClickTime < settingAboutUsActivity.CLICK_TIME) {
            settingAboutUsActivity.clickCount++;
        } else {
            settingAboutUsActivity.clickCount = 0;
        }
        settingAboutUsActivity.lastClickTime = jCurrentTimeMillis;
        if (settingAboutUsActivity.clickCount == settingAboutUsActivity.CLICK_COUNT) {
            new AdDeveloperDialog().r0(new Function0() {
                @Override
                public final Object invoke() {
                    return SettingAboutUsActivity.j0(this.f55241a);
                }
            }).k0(settingAboutUsActivity, "AdDeveloperDialog");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        TitleLayout titleLayout = ((v0) getMViewBinding()).f75791c;
        String string = getString(R$string.user_setting_About_us);
        Intrinsics.g(string, "getString(...)");
        titleLayout.setTitleText(string);
        String string2 = getString(R$string.login_sign_up_privacy);
        Intrinsics.g(string2, "getString(...)");
        String string3 = getString(R$string.login_privacy);
        Intrinsics.g(string3, "getString(...)");
        String string4 = getString(R$string.login_user_agreement);
        Intrinsics.g(string4, "getString(...)");
        SpannableString spannableString = new SpannableString(string2);
        a aVar = new a();
        b bVar = new b();
        int iO0 = StringsKt.o0(string2, string3, 0, false, 6, null);
        int i10 = iO0 != -1 ? iO0 : 0;
        int iO1 = StringsKt.o0(string2, string4, 0, false, 6, null);
        if (iO1 == -1) {
            iO1 = 0;
        }
        spannableString.setSpan(aVar, i10, string3.length() + i10, 33);
        spannableString.setSpan(bVar, iO1, string4.length() + iO1, 33);
        AppCompatTextView appCompatTextView = ((v0) getMViewBinding()).f75792d;
        appCompatTextView.setText(spannableString);
        appCompatTextView.setMovementMethod(LinkMovementMethod.getInstance());
        ((v0) getMViewBinding()).f75793e.setText(com.blankj.utilcode.util.c.h());
        final boolean z10 = System.currentTimeMillis() - com.transsion.baselib.report.launch.b.f42221a.b().getLong("lab_enter_password_time", 0L) < TimeUnit.DAYS.toMillis(1L);
        ((v0) getMViewBinding()).f75793e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SettingAboutUsActivity.g0(this.f55226a, z10, view);
            }
        });
        ((v0) getMViewBinding()).f75790b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SettingAboutUsActivity.i0(this.f55233a, view);
            }
        });
    }

    public static final Unit j0(SettingAboutUsActivity settingAboutUsActivity) {
        settingAboutUsActivity.startActivity(new Intent(settingAboutUsActivity, (Class<?>) MccActivity.class));
        return Unit.f64096a;
    }

    @Override
    public v0 getViewBinding() {
        v0 v0VarC = v0.c(getLayoutInflater());
        Intrinsics.g(v0VarC, "inflate(...)");
        return v0VarC;
    }

    @Override
    public boolean isStatusDark() {
        return true;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.clickCount = 0;
    }
}
