package com.transsion.member.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.member.R$layout;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberSource;
import com.transsion.memberapi.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 52\u00020\u0001:\u00016B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u0019\u0010\u000e\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u000fJ!\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\t2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\"\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00104\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103¨\u00067"}, d2 = {"Lcom/transsion/member/dialog/MemberGuideDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Lcom/transsion/memberapi/MemberCheckResult;", "memberCheckResult", "", "q0", "(Lcom/transsion/memberapi/MemberCheckResult;)Ljava/lang/String;", "", "initView", "s0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lim/c;", "callback", "r0", "(Lim/c;)V", "Lcom/transsion/memberapi/MemberSource;", "memberSource", "w0", "(Lcom/transsion/memberapi/MemberSource;)V", "v0", "(Lcom/transsion/memberapi/MemberCheckResult;)V", "c", "Lcom/transsion/memberapi/MemberCheckResult;", "mMemberCheckResult", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lim/c;", "mCallback", "", "e", "Z", "isPayMemberSuccess", "Lgm/c;", "f", "Lgm/c;", "bind", "g", "Lcom/transsion/memberapi/MemberSource;", EventConstants.KEY_SOURCE, "h", "a", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MemberGuideDialog extends BaseDialog {

    public static final int f45029i = 8;

    private MemberCheckResult mMemberCheckResult;

    private im.c mCallback;

    private boolean isPayMemberSuccess;

    private gm.c bind;

    private MemberSource source;

    public static final class b extends RecyclerView.l {
        b() {
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            if (adapter != null) {
                if (childAdapterPosition == 0) {
                    outRect.top = a0.a(24.0f);
                    outRect.bottom = a0.a(16.0f);
                } else if (childAdapterPosition != adapter.getItemCount() - 1) {
                    outRect.bottom = a0.a(16.0f);
                } else if (childAdapterPosition == adapter.getItemCount() - 1) {
                    outRect.bottom = a0.a(24.0f);
                }
            }
        }
    }

    public static final class c implements im.c {
        c() {
        }

        @Override
        public void a() {
            MemberGuideDialog.this.isPayMemberSuccess = false;
            com.transsion.member.a.f45001a.a(MemberGuideDialog.this.getClassTag() + " --> startMemberPage --> onFailed() --> isPayMemberSuccess = false");
            if (!MemberGuideDialog.this.isAdded() || MemberGuideDialog.this.isDetached()) {
                return;
            }
            MemberGuideDialog.this.dismissAllowingStateLoss();
        }

        @Override
        public void onSuccess() {
            MemberGuideDialog.this.isPayMemberSuccess = true;
            com.transsion.member.a.f45001a.a(MemberGuideDialog.this.getClassTag() + " --> startMemberPage --> onSuccess() --> isPayMemberSuccess = true");
            if (!MemberGuideDialog.this.isAdded() || MemberGuideDialog.this.isDetached()) {
                return;
            }
            MemberGuideDialog.this.dismissAllowingStateLoss();
        }
    }

    public MemberGuideDialog() {
        super(R$layout.dialog_fragment_member_guide_layout);
    }

    private final void initView() {
        TextView textView;
        TextView textView2;
        RecyclerView recyclerView;
        TextView textView3;
        String str = q0(this.mMemberCheckResult) + getString(R$string.member_guide_dialog_get_per);
        gm.c cVar = this.bind;
        if (cVar != null && (textView3 = cVar.f61095i) != null) {
            textView3.setText(str);
        }
        gm.c cVar2 = this.bind;
        if (cVar2 != null && (recyclerView = cVar2.f61093g) != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
            MemberCheckResult memberCheckResult = this.mMemberCheckResult;
            recyclerView.setAdapter(new h(memberCheckResult != null ? memberCheckResult.getMemberRights() : null));
            recyclerView.addItemDecoration(new b());
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        boolean zC = bVar != null ? bVar.c() : false;
        gm.c cVar3 = this.bind;
        if (cVar3 != null && (textView2 = cVar3.f61095i) != null) {
            textView2.setVisibility(zC ? 0 : 8);
        }
        gm.c cVar4 = this.bind;
        if (cVar4 == null || (textView = cVar4.f61096j) == null) {
            return;
        }
        textView.setText(textView.getResources().getString(com.transsion.member.R$string.member_guide_dialog_title));
    }

    private final String q0(MemberCheckResult memberCheckResult) {
        return (memberCheckResult != null ? memberCheckResult.getMemberPrice() : null) + " " + (memberCheckResult != null ? memberCheckResult.getCurrency() : null) + " ";
    }

    private final void s0() {
        AppCompatImageView appCompatImageView;
        View view;
        gm.c cVar = this.bind;
        if (cVar != null && (view = cVar.f61097k) != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    MemberGuideDialog.t0(this.f45078a, view2);
                }
            });
        }
        gm.c cVar2 = this.bind;
        if (cVar2 == null || (appCompatImageView = cVar2.f61091e) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                MemberGuideDialog.u0(this.f45079a, view2);
            }
        });
    }

    public static final void t0(MemberGuideDialog memberGuideDialog, View view) {
        wj.d dVar = (wj.d) TheRouter.d(wj.d.class, new Object[0]);
        if (dVar != null) {
            dVar.d();
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            im.b.a.c(bVar, memberGuideDialog.getActivity(), memberGuideDialog.source, memberGuideDialog.new c(), false, null, 24, null);
        }
    }

    public static final void u0(MemberGuideDialog memberGuideDialog, View view) {
        wj.d dVar = (wj.d) TheRouter.d(wj.d.class, new Object[0]);
        if (dVar != null) {
            dVar.a();
        }
        if (!memberGuideDialog.isAdded() || memberGuideDialog.isDetached()) {
            return;
        }
        memberGuideDialog.dismissAllowingStateLoss();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        MemberSource memberSource;
        MemberCheckResult memberCheckResult;
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
        com.transsion.member.a.f45001a.a(getClassTag() + " --> onCreate()");
        if (savedInstanceState != null && (memberCheckResult = (MemberCheckResult) savedInstanceState.getParcelable("mMemberCheckResult")) != null) {
            this.mMemberCheckResult = memberCheckResult;
        }
        if (savedInstanceState == null || (memberSource = (MemberSource) savedInstanceState.getParcelable(EventConstants.KEY_SOURCE)) == null) {
            return;
        }
        this.source = memberSource;
    }

    @Override
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        if (this.isPayMemberSuccess) {
            im.c cVar = this.mCallback;
            if (cVar != null) {
                cVar.onSuccess();
                return;
            }
            return;
        }
        im.c cVar2 = this.mCallback;
        if (cVar2 != null) {
            cVar2.a();
        }
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putParcelable("mMemberCheckResult", this.mMemberCheckResult);
        outState.putParcelable(EventConstants.KEY_SOURCE, this.source);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
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
        wj.d dVar = (wj.d) TheRouter.d(wj.d.class, new Object[0]);
        if (dVar != null) {
            dVar.c();
        }
        this.bind = gm.c.a(view);
        initView();
        s0();
    }

    public final void r0(im.c callback) {
        Intrinsics.h(callback, "callback");
        this.mCallback = callback;
    }

    public final void v0(MemberCheckResult memberCheckResult) {
        this.mMemberCheckResult = memberCheckResult;
    }

    public final void w0(MemberSource memberSource) {
        this.source = memberSource;
    }
}
