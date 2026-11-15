package com.transsion.member.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.member.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\bJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/transsion/member/dialog/RewardQueryDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lgm/e;", "c", "Lgm/e;", "bind", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", CampaignEx.JSON_KEY_TITLE, "e", "a", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RewardQueryDialog extends BaseDialog {

    public static final int f45070f = 8;

    private gm.e bind;

    private String title;

    public RewardQueryDialog() {
        super(R$layout.dialog_fragment_reward_query);
    }

    public static final void p0(RewardQueryDialog rewardQueryDialog, View view) {
        rewardQueryDialog.dismissAllowingStateLoss();
    }

    public static final void q0(RewardQueryDialog rewardQueryDialog, View view) {
        rewardQueryDialog.dismissAllowingStateLoss();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
        com.transsion.member.a.f45001a.a(getClassTag() + " --> onCreate()");
        if (savedInstanceState != null) {
            dismissAllowingStateLoss();
        }
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString(CampaignEx.JSON_KEY_TITLE, this.title);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        AppCompatTextView appCompatTextView;
        TextView textView;
        AppCompatTextView appCompatTextView2;
        Window window;
        Window window2;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(17);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null) {
            dialog3.setCancelable(true);
        }
        Dialog dialog4 = getDialog();
        if (dialog4 != null) {
            dialog4.setCanceledOnTouchOutside(false);
        }
        gm.e eVarA = gm.e.a(view);
        this.bind = eVarA;
        if (eVarA != null && (appCompatTextView2 = eVarA.f61111f) != null) {
            appCompatTextView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    RewardQueryDialog.p0(this.f45094a, view2);
                }
            });
        }
        gm.e eVar = this.bind;
        if (eVar != null && (textView = eVar.f61112g) != null) {
            textView.setText(this.title);
        }
        gm.e eVar2 = this.bind;
        if (eVar2 == null || (appCompatTextView = eVar2.f61109d) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                RewardQueryDialog.q0(this.f45095a, view2);
            }
        });
    }
}
