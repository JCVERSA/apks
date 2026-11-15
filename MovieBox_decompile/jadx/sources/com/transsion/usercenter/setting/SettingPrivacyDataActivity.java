package com.transsion.usercenter.setting;

import android.os.Bundle;
import android.view.View;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.usercenter.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import xu.z0;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/transsion/usercenter/setting/SettingPrivacyDataActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/z0;", "<init>", "()V", "", "d0", "c0", "()Lxu/z0;", "", "isStatusDark", "()Z", "isTranslucent", "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/os/Bundle;)V", "a", "Z", "firstStatus", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "shareData", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SettingPrivacyDataActivity extends BaseActivity<z0> {

    private boolean firstStatus = true;

    private boolean shareData = true;

    /* JADX WARN: Multi-variable type inference failed */
    private final void d0() {
        boolean z10 = com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_setting_privacy_idle", true);
        this.shareData = z10;
        this.firstStatus = z10;
        ((z0) getMViewBinding()).f75850b.setChecked(this.shareData);
        ((z0) getMViewBinding()).f75850b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SettingPrivacyDataActivity.e0(this.f55335a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void e0(SettingPrivacyDataActivity settingPrivacyDataActivity, View view) {
        if (settingPrivacyDataActivity.shareData) {
            com.transsion.baselib.report.launch.b.f42221a.b().putBoolean("k_setting_privacy_idle", false);
        } else {
            com.transsion.baselib.report.launch.b.f42221a.b().putBoolean("k_setting_privacy_idle", true);
        }
        boolean z10 = settingPrivacyDataActivity.shareData;
        settingPrivacyDataActivity.shareData = !z10;
        jg.b.f63119a.b("X-Idle-Data", !z10 ? "1" : "0");
        ((z0) settingPrivacyDataActivity.getMViewBinding()).f75850b.setChecked(settingPrivacyDataActivity.shareData);
    }

    @Override
    public z0 getViewBinding() {
        z0 z0VarC = z0.c(getLayoutInflater());
        Intrinsics.g(z0VarC, "inflate(...)");
        return z0VarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(Bundle savedInstanceState) {
        super.initView(savedInstanceState);
        TitleLayout toolBar = ((z0) getMViewBinding()).f75851c;
        Intrinsics.g(toolBar, "toolBar");
        uf.c.e(toolBar);
        ((z0) getMViewBinding()).f75851c.setTitleText(R$string.user_setting);
        d0();
    }

    @Override
    public boolean isStatusDark() {
        return false;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }
}
