package com.transsion.usercenter.laboratory;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.RadioGroup;
import androidx.fragment.app.FragmentActivity;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabChannelDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lxu/q;", "c", "Lxu/q;", "viewBinding", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "channelTag", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabChannelDialog extends BaseDialog {

    private xu.q viewBinding;

    private String channelTag;

    public LabChannelDialog() {
        super(R$layout.dialog_lab_channel_layout);
        this.channelTag = "";
    }

    public static final void q0(LabChannelDialog labChannelDialog, View view) {
        labChannelDialog.dismissAllowingStateLoss();
    }

    public static final void r0(LabChannelDialog labChannelDialog, View view) {
        if (!TextUtils.isEmpty(labChannelDialog.channelTag)) {
            jg.b.f63119a.k(labChannelDialog.channelTag);
            fh.b.f60176a.e("自定义成功 -- channel = " + labChannelDialog.channelTag);
        }
        labChannelDialog.dismissAllowingStateLoss();
    }

    public static final void s0(LabChannelDialog labChannelDialog, RadioGroup radioGroup, int i10) {
        if (i10 == R$id.radioButtonGP) {
            fh.b.f60176a.e("gp");
            labChannelDialog.channelTag = "gp";
        } else if (i10 == R$id.radioButtonPS) {
            fh.b.f60176a.e("ps");
            labChannelDialog.channelTag = "ps";
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        RadioGroup radioGroup;
        Button button;
        Button button2;
        RadioGroup radioGroup2;
        RadioGroup radioGroup3;
        RadioGroup radioGroup4;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewBinding = xu.q.a(view);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            String strE = jg.b.f63119a.e(activity);
            if (TextUtils.equals("ps", strE)) {
                xu.q qVar = this.viewBinding;
                if (qVar != null && (radioGroup4 = qVar.f75731f) != null) {
                    radioGroup4.check(R$id.radioButtonPS);
                }
            } else if (TextUtils.equals("gp", strE)) {
                xu.q qVar2 = this.viewBinding;
                if (qVar2 != null && (radioGroup3 = qVar2.f75731f) != null) {
                    radioGroup3.check(R$id.radioButtonGP);
                }
            } else {
                xu.q qVar3 = this.viewBinding;
                if (qVar3 != null && (radioGroup2 = qVar3.f75731f) != null) {
                    radioGroup2.clearCheck();
                }
            }
        }
        xu.q qVar4 = this.viewBinding;
        if (qVar4 != null && (button2 = qVar4.f75727b) != null) {
            button2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LabChannelDialog.q0(this.f54723a, view2);
                }
            });
        }
        xu.q qVar5 = this.viewBinding;
        if (qVar5 != null && (button = qVar5.f75728c) != null) {
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LabChannelDialog.r0(this.f54726a, view2);
                }
            });
        }
        xu.q qVar6 = this.viewBinding;
        if (qVar6 == null || (radioGroup = qVar6.f75731f) == null) {
            return;
        }
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public final void onCheckedChanged(RadioGroup radioGroup5, int i10) {
                LabChannelDialog.s0(this.f54729a, radioGroup5, i10);
            }
        });
    }
}
