package com.transsion.usercenter.laboratory;

import android.text.Editable;
import android.view.View;
import android.widget.Toast;
import com.transsion.baseui.activity.BaseNewActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\u0004¨\u0006\u0012"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabMiniAppSDKTestActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lxu/c;", "<init>", "()V", "E0", "()Lxu/c;", "", "f0", "()Ljava/lang/String;", "", "l0", "m0", "k0", "p0", "retryLoadData", "i", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabMiniAppSDKTestActivity extends BaseNewActivity<xu.c> {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void F0(LabMiniAppSDKTestActivity labMiniAppSDKTestActivity, View view) {
        String string;
        String string2;
        Editable text = ((xu.c) labMiniAppSDKTestActivity.getMViewBinding()).f75517c.getText();
        String str = "";
        if (text == null || (string = text.toString()) == null) {
            string = "";
        }
        if (string.length() == 0) {
            Toast.makeText(labMiniAppSDKTestActivity, "appId is empty", 1).show();
            return;
        }
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        bVar.b().putString("KEY_TEST_MIN_APP_SDK_APP_ID", string);
        Editable text2 = ((xu.c) labMiniAppSDKTestActivity.getMViewBinding()).f75518d.getText();
        if (text2 != null && (string2 = text2.toString()) != null) {
            str = string2;
        }
        if (str.length() > 0) {
            bVar.b().putString("KEY_TEST_MIN_APP_SDK_SCENE_ID", string);
        }
        dj.a.f59043a.c(labMiniAppSDKTestActivity, string, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void G0(LabMiniAppSDKTestActivity labMiniAppSDKTestActivity, View view) {
        String string;
        Editable text = ((xu.c) labMiniAppSDKTestActivity.getMViewBinding()).f75516b.getText();
        if (text == null || (string = text.toString()) == null) {
            string = "";
        }
        if (string.length() == 0) {
            Toast.makeText(labMiniAppSDKTestActivity, "deeplink is empty", 1).show();
        } else {
            com.transsion.baselib.report.launch.b.f42221a.b().putString("KEY_TEST_MIN_APP_SDK_DEEPLINK", string);
            ij.k.h(string, null, 1, null);
        }
    }

    @Override
    public xu.c getViewBinding() {
        xu.c cVarC = xu.c.c(getLayoutInflater());
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    @Override
    public String f0() {
        return "";
    }

    @Override
    public void k0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void l0() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        String string = bVar.b().getString("KEY_TEST_MIN_APP_SDK_APP_ID", "");
        if (string == null) {
            string = "";
        }
        if (string.length() > 0) {
            ((xu.c) getMViewBinding()).f75517c.setText(string);
        }
        String string2 = bVar.b().getString("KEY_TEST_MIN_APP_SDK_SCENE_ID", "");
        if (string2 == null) {
            string2 = "";
        }
        if (string2.length() > 0) {
            ((xu.c) getMViewBinding()).f75518d.setText(string2);
        }
        String string3 = bVar.b().getString("KEY_TEST_MIN_APP_SDK_DEEPLINK", "");
        String str = string3 != null ? string3 : "";
        if (str.length() > 0) {
            ((xu.c) getMViewBinding()).f75516b.setText(str);
        }
        ((xu.c) getMViewBinding()).f75519e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LabMiniAppSDKTestActivity.F0(this.f54783a, view);
            }
        });
        ((xu.c) getMViewBinding()).f75520f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LabMiniAppSDKTestActivity.G0(this.f54724a, view);
            }
        });
    }

    @Override
    public void m0() {
    }

    @Override
    public void p0() {
    }

    @Override
    public void retryLoadData() {
    }
}
