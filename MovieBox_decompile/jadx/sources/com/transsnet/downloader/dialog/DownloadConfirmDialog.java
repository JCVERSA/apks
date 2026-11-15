package com.transsnet.downloader.dialog;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u0000 (2\u00020\u0001:\u0001)B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\r\u0010\u000eJ0\u0010\u0015\u001a\u00020\u00062!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00060\u000f¢\u0006\u0004\b\u0015\u0010\u0016R3\u0010\u0019\u001a\u001f\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010#\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010 R\u0018\u0010'\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010 ¨\u0006*"}, d2 = {"Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "p0", "(Landroid/view/View;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "ok", "call", "s0", "(Lkotlin/jvm/functions/Function1;)V", "c", "Lkotlin/jvm/functions/Function1;", "callback", "Lbx/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lbx/f;", "viewBinding", "", "e", "Ljava/lang/String;", "noText", "f", "yesText", "g", CampaignEx.JSON_KEY_TITLE, "h", "tips", "i", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadConfirmDialog extends BaseDialog {

    public static final Companion INSTANCE = new Companion(null);

    private Function1 callback;

    private bx.f viewBinding;

    private String noText;

    private String yesText;

    private String title;

    private String tips;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DownloadConfirmDialog b(Companion companion, String str, String str2, String str3, String str4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = null;
            }
            if ((i10 & 2) != 0) {
                str2 = null;
            }
            if ((i10 & 8) != 0) {
                str4 = null;
            }
            return companion.a(str, str2, str3, str4);
        }

        public final DownloadConfirmDialog a(String str, String str2, String str3, String str4) {
            DownloadConfirmDialog downloadConfirmDialog = new DownloadConfirmDialog();
            downloadConfirmDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("no_text", str), TuplesKt.a("yes_text", str2), TuplesKt.a(CampaignEx.JSON_KEY_TITLE, str3), TuplesKt.a("tips", str4)));
            return downloadConfirmDialog;
        }

        private Companion() {
        }
    }

    public DownloadConfirmDialog() {
        super(R$layout.dialog_download_confirm);
    }

    private final void p0(View view) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        AppCompatTextView appCompatTextView7;
        AppCompatTextView appCompatTextView8;
        AppCompatTextView appCompatTextView9;
        AppCompatTextView appCompatTextView10;
        bx.f fVarA = bx.f.a(view);
        this.viewBinding = fVarA;
        if (fVarA != null && (appCompatTextView10 = fVarA.f16010b) != null) {
            appCompatTextView10.setText(this.noText);
        }
        bx.f fVar = this.viewBinding;
        if (fVar != null && (appCompatTextView9 = fVar.f16011c) != null) {
            appCompatTextView9.setText(this.yesText);
        }
        bx.f fVar2 = this.viewBinding;
        if (fVar2 != null && (appCompatTextView8 = fVar2.f16010b) != null) {
            appCompatTextView8.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    DownloadConfirmDialog.q0(this.f56525a, view2);
                }
            });
        }
        bx.f fVar3 = this.viewBinding;
        if (fVar3 != null && (appCompatTextView7 = fVar3.f16011c) != null) {
            appCompatTextView7.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    DownloadConfirmDialog.r0(this.f56527a, view2);
                }
            });
        }
        String str = this.title;
        if (str == null || str.length() == 0) {
            bx.f fVar4 = this.viewBinding;
            if (fVar4 != null && (appCompatTextView = fVar4.f16013e) != null) {
                uf.c.g(appCompatTextView);
            }
        } else {
            bx.f fVar5 = this.viewBinding;
            if (fVar5 != null && (appCompatTextView6 = fVar5.f16013e) != null) {
                uf.c.k(appCompatTextView6);
            }
            bx.f fVar6 = this.viewBinding;
            if (fVar6 != null && (appCompatTextView5 = fVar6.f16013e) != null) {
                appCompatTextView5.setText(this.title);
            }
        }
        String str2 = this.tips;
        if (str2 == null || str2.length() == 0) {
            bx.f fVar7 = this.viewBinding;
            if (fVar7 == null || (appCompatTextView2 = fVar7.f16012d) == null) {
                return;
            }
            uf.c.g(appCompatTextView2);
            return;
        }
        bx.f fVar8 = this.viewBinding;
        if (fVar8 != null && (appCompatTextView4 = fVar8.f16012d) != null) {
            uf.c.k(appCompatTextView4);
        }
        bx.f fVar9 = this.viewBinding;
        if (fVar9 == null || (appCompatTextView3 = fVar9.f16012d) == null) {
            return;
        }
        appCompatTextView3.setText(this.tips);
    }

    public static final void q0(DownloadConfirmDialog downloadConfirmDialog, View view) {
        downloadConfirmDialog.dismissAllowingStateLoss();
        Function1 function1 = downloadConfirmDialog.callback;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    public static final void r0(DownloadConfirmDialog downloadConfirmDialog, View view) {
        downloadConfirmDialog.dismissAllowingStateLoss();
        Function1 function1 = downloadConfirmDialog.callback;
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
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
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.noText = arguments.getString("no_text", getString(R$string.cancel));
            this.yesText = arguments.getString("yes_text", getString(R$string.confirm));
            this.title = arguments.getString(CampaignEx.JSON_KEY_TITLE);
            this.tips = arguments.getString("tips");
        }
        p0(view);
    }

    public final void s0(Function1 call) {
        Intrinsics.h(call, "call");
        this.callback = call;
    }
}
