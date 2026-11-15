package com.transsion.usercenter.laboratory;

import android.app.Application;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabInfoDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "keyColor", "valueColor", "Lah/c;", "p0", "(II)Lah/c;", "", "q0", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabInfoDialog extends BaseDialog {
    public LabInfoDialog() {
        super(R$layout.dialog_lab_info);
    }

    private final ah.c p0(int keyColor, int valueColor) {
        UserInfo userInfoI;
        ah.c.a aVarC = ah.c.e().e("user_id = ").c(keyColor);
        qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        ah.c.a aVarC2 = aVarC.e(((aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId()) + "\n").c(valueColor).e("device_id = ").c(keyColor);
        tg.b bVar = tg.b.f72740a;
        ah.c.a aVarC3 = aVarC2.e(bVar.h() + "\n").c(valueColor).e("version_name = ").c(keyColor).e(com.blankj.utilcode.util.c.h() + "\n").c(valueColor).e("version_code = ").c(keyColor).e(com.blankj.utilcode.util.c.f() + "\n").c(valueColor).e("os_version = ").c(keyColor).e(bVar.n() + "\n").c(valueColor).e("model = ").c(keyColor).e(bVar.l() + "\n").c(valueColor).e("install_ch = ").c(keyColor).e(mg.a.f66402a.a() + "\n").c(valueColor).e("gaid = ").c(keyColor).e(bVar.i() + "\n").c(valueColor).e("net = ").c(keyColor).e(yg.l.f76264a.d() + "\n").c(valueColor).e("region = ").c(keyColor).e(Locale.getDefault().getCountry() + "\n").c(valueColor).e("timezone = ").c(keyColor).e(TimeZone.getDefault().getID() + "\n").c(valueColor).e("sp_code = ").c(keyColor).e(q0() + "\n").c(valueColor).e("channel = ").c(keyColor);
        jg.b.a aVar2 = jg.b.f63119a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        ah.c.a aVarC4 = aVarC3.e(aVar2.e(applicationA) + "\n").c(valueColor).e("package = ").c(keyColor).e(com.blankj.utilcode.util.c.e() + "\n").c(valueColor).e("SignatureMD5 = ").c(keyColor);
        ij.d dVar = ij.d.f62101a;
        Application applicationA2 = Utils.a();
        Intrinsics.g(applicationA2, "getApp(...)");
        ah.c.a aVarC5 = aVarC4.e(dVar.a(applicationA2) + "\n").c(valueColor).e("SignatureSha1 = ").c(keyColor);
        Application applicationA3 = Utils.a();
        Intrinsics.g(applicationA3, "getApp(...)");
        ah.c.a aVarC6 = aVarC5.e(ij.d.c(applicationA3) + "\n").c(valueColor).e("SignatureSHA256 = ").c(keyColor);
        Application applicationA4 = Utils.a();
        Intrinsics.g(applicationA4, "getApp(...)");
        ah.c cVarB = aVarC6.e(dVar.b(applicationA4) + "\n").c(valueColor).b();
        Intrinsics.g(cVarB, "build(...)");
        return cVarB;
    }

    private final String q0() {
        String string;
        MMKV mmkvC = mg.a.f66402a.c();
        String str = "";
        if (mmkvC != null && (string = mmkvC.getString("sp_code", "")) != null) {
            str = string;
        }
        return TextUtils.isEmpty(str) ? tg.b.f72740a.o() : str;
    }

    public static final void r0(LabInfoDialog labInfoDialog, View view) {
        labInfoDialog.dismiss();
    }

    public static final void s0(xu.v vVar, LabInfoDialog labInfoDialog, View view) {
        com.blankj.utilcode.util.g.a(vVar.f75787d.getText().toString());
        Toast.makeText(labInfoDialog.getContext(), "copy success", 1).show();
        labInfoDialog.dismiss();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        final xu.v vVarA = xu.v.a(view);
        Intrinsics.g(vVarA, "bind(...)");
        vVarA.f75787d.setText(p0(androidx.core.content.b.getColor(view.getContext(), R$color.main), androidx.core.content.b.getColor(view.getContext(), R$color.text_02)));
        vVarA.f75785b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LabInfoDialog.r0(this.f54769a, view2);
            }
        });
        vVarA.f75786c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LabInfoDialog.s0(vVarA, this, view2);
            }
        });
    }
}
