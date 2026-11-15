package com.transsion.wrapperad.view.secondfloor;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.wrapperad.R$drawable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\n¢\u0006\u0004\b\r\u0010\fJ\r\u0010\u000e\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\fJ\r\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\fR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u001b\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "idleTrigger", "()V", "refreshTrigger", "secondFloorTrigger", "refreshing", "Lpw/e;", "a", "Lpw/e;", "getBinding", "()Lpw/e;", "setBinding", "(Lpw/e;)V", "binding", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "isAbMode", "()Z", "setAbMode", "(Z)V", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SecondFloorArcCoverView extends ConstraintLayout {

    private pw.e binding;

    private boolean isAbMode;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SecondFloorArcCoverView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    public static final void i(SecondFloorArcCoverView secondFloorArcCoverView) {
        secondFloorArcCoverView.binding.getRoot().performHapticFeedback(1, 2);
    }

    public final pw.e getBinding() {
        return this.binding;
    }

    public final void idleTrigger() {
        ProgressBar progressBar = this.binding.f69306d;
        Intrinsics.g(progressBar, "progressBar");
        uf.c.g(progressBar);
        AppCompatTextView appCompatTextView = this.binding.f69307e;
        appCompatTextView.setText(this.isAbMode ? "" : "Pull to refresh");
        appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(0, R$drawable.ic_loading_white, 0, 0);
    }

    public final boolean getIsAbMode() {
        return this.isAbMode;
    }

    public final void refreshTrigger() {
        ProgressBar progressBar = this.binding.f69306d;
        Intrinsics.g(progressBar, "progressBar");
        uf.c.g(progressBar);
        AppCompatTextView appCompatTextView = this.binding.f69307e;
        appCompatTextView.setText(this.isAbMode ? "" : "Release to refresh or keep pulling");
        appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(0, R$drawable.ic_loading_white, 0, 0);
    }

    public final void refreshing() {
        ProgressBar progressBar = this.binding.f69306d;
        Intrinsics.g(progressBar, "progressBar");
        uf.c.k(progressBar);
        AppCompatTextView appCompatTextView = this.binding.f69307e;
        appCompatTextView.setText("");
        appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
    }

    public final void secondFloorTrigger() {
        ProgressBar progressBar = this.binding.f69306d;
        Intrinsics.g(progressBar, "progressBar");
        uf.c.g(progressBar);
        AppCompatTextView appCompatTextView = this.binding.f69307e;
        appCompatTextView.setText("Release for surprise");
        appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(0, R$drawable.ic_gift_white, 0, 0);
        this.binding.getRoot().post(new Runnable() {
            @Override
            public final void run() {
                SecondFloorArcCoverView.i(this.f56182a);
            }
        });
    }

    public final void setAbMode(boolean z10) {
        this.isAbMode = z10;
    }

    public final void setBinding(pw.e eVar) {
        Intrinsics.h(eVar, "<set-?>");
        this.binding = eVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SecondFloorArcCoverView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    public SecondFloorArcCoverView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SecondFloorArcCoverView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        pw.e eVarC = pw.e.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(eVarC, "inflate(...)");
        this.binding = eVarC;
    }
}
