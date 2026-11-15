package com.transsion.usercenter.laboratory;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RadioGroup;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baselib.utils.PlayMode;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabStreamingDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lxu/z;", "c", "Lxu/z;", "viewBinding", "Lcom/transsion/baselib/utils/PlayMode;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/baselib/utils/PlayMode;", "playMode", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabStreamingDialog extends BaseDialog {

    private xu.z viewBinding;

    private PlayMode playMode;

    public LabStreamingDialog() {
        super(R$layout.dialog_lab_streaming_layout);
    }

    public static final void q0(LabStreamingDialog labStreamingDialog, View view) {
        labStreamingDialog.dismissAllowingStateLoss();
    }

    public static final void r0(LabStreamingDialog labStreamingDialog, View view) {
        fh.b.f60176a.e("当前媒体播放模式是 playMode = " + labStreamingDialog.playMode);
        PlayMode playMode = labStreamingDialog.playMode;
        if (playMode != null) {
            ij.t.f62121a.c(playMode);
        }
        labStreamingDialog.dismissAllowingStateLoss();
    }

    public static final void s0(LabStreamingDialog labStreamingDialog, RadioGroup radioGroup, int i10) {
        if (i10 == R$id.radioButtonDownload) {
            fh.b.f60176a.e("PlayMode.DOWNLOAD");
            labStreamingDialog.playMode = PlayMode.DOWNLOAD;
        } else if (i10 == R$id.radioButtonStream) {
            fh.b.f60176a.e("PlayMode.STREAM");
            labStreamingDialog.playMode = PlayMode.STREAM;
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
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewBinding = xu.z.a(view);
        if (getActivity() != null) {
            if (ij.t.f62121a.b()) {
                xu.z zVar = this.viewBinding;
                if (zVar != null && (radioGroup3 = zVar.f75848f) != null) {
                    radioGroup3.check(R$id.radioButtonStream);
                }
                this.playMode = PlayMode.STREAM;
            } else {
                xu.z zVar2 = this.viewBinding;
                if (zVar2 != null && (radioGroup2 = zVar2.f75848f) != null) {
                    radioGroup2.check(R$id.radioButtonDownload);
                }
                this.playMode = PlayMode.DOWNLOAD;
            }
        }
        xu.z zVar3 = this.viewBinding;
        if (zVar3 != null && (button2 = zVar3.f75844b) != null) {
            button2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LabStreamingDialog.q0(this.f54744a, view2);
                }
            });
        }
        xu.z zVar4 = this.viewBinding;
        if (zVar4 != null && (button = zVar4.f75845c) != null) {
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    LabStreamingDialog.r0(this.f54748a, view2);
                }
            });
        }
        xu.z zVar5 = this.viewBinding;
        if (zVar5 == null || (radioGroup = zVar5.f75848f) == null) {
            return;
        }
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public final void onCheckedChanged(RadioGroup radioGroup4, int i10) {
                LabStreamingDialog.s0(this.f54750a, radioGroup4, i10);
            }
        });
    }
}
