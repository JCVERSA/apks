package com.transsion.member.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.member.R$layout;
import com.transsion.member.R$string;
import com.transsion.member.i0;
import com.transsion.member.y;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 +2\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0018\u001a\u00020\u00042\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dR\u001e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lcom/transsion/member/dialog/MemberPromoCodeDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "initView", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", TmcConstants.NAVIGATION_ON_START, "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lkotlin/Function0;", "callBack", "z0", "(Lkotlin/jvm/functions/Function0;)V", "", NotificationCompat.CATEGORY_MESSAGE, "A0", "(Ljava/lang/String;)V", "c", "Lkotlin/jvm/functions/Function0;", "callback", "Lgm/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lgm/h;", "bind", "Lcom/transsion/member/y;", "e", "Lkotlin/Lazy;", "t0", "()Lcom/transsion/member/y;", "promoCodeViewModel", "f", "a", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MemberPromoCodeDialog extends BaseDialog {

    public static final Companion INSTANCE = new Companion(null);

    public static final int f45044g = 8;

    private Function0 callback;

    private gm.h bind;

    private final Lazy promoCodeViewModel;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MemberPromoCodeDialog a(Function0 callBack) {
            Intrinsics.h(callBack, "callBack");
            MemberPromoCodeDialog memberPromoCodeDialog = new MemberPromoCodeDialog();
            memberPromoCodeDialog.z0(callBack);
            return memberPromoCodeDialog;
        }

        private Companion() {
        }
    }

    public static final class b implements TextWatcher {
        b() {
        }

        @Override
        public void afterTextChanged(Editable s10) {
            AppCompatEditText appCompatEditText;
            AppCompatEditText appCompatEditText2;
            Intrinsics.h(s10, "s");
            String string = s10.toString();
            if (Intrinsics.c(s10.toString(), string)) {
                return;
            }
            gm.h hVar = MemberPromoCodeDialog.this.bind;
            if (hVar != null && (appCompatEditText2 = hVar.f61134f) != null) {
                appCompatEditText2.setText(string);
            }
            gm.h hVar2 = MemberPromoCodeDialog.this.bind;
            if (hVar2 == null || (appCompatEditText = hVar2.f61134f) == null) {
                return;
            }
            appCompatEditText.setSelection(string.length());
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int i10, int i11, int i12) {
            Intrinsics.h(s10, "s");
        }

        @Override
        public void onTextChanged(CharSequence s10, int i10, int i11, int i12) {
            ImageView imageView;
            AppCompatEditText appCompatEditText;
            Editable text;
            ImageView imageView2;
            Intrinsics.h(s10, "s");
            MemberPromoCodeDialog.this.A0("");
            gm.h hVar = MemberPromoCodeDialog.this.bind;
            if (hVar == null || (appCompatEditText = hVar.f61134f) == null || (text = appCompatEditText.getText()) == null || text.length() == 0) {
                gm.h hVar2 = MemberPromoCodeDialog.this.bind;
                if (hVar2 == null || (imageView = hVar2.f61131c) == null) {
                    return;
                }
                uf.c.g(imageView);
                return;
            }
            gm.h hVar3 = MemberPromoCodeDialog.this.bind;
            if (hVar3 == null || (imageView2 = hVar3.f61131c) == null) {
                return;
            }
            uf.c.k(imageView2);
        }
    }

    static final class c implements c0, FunctionAdapter {

        private final Function1 f45049a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45049a = function;
        }

        @Override
        public final Function a() {
            return this.f45049a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f45049a.invoke(obj);
        }
    }

    public MemberPromoCodeDialog() {
        super(R$layout.dialog_member_promo_code_layout);
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.promoCodeViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(y.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }

    private final void initView() {
        TextView textView;
        ImageView imageView;
        ImageView imageView2;
        AppCompatEditText appCompatEditText;
        gm.h hVar = this.bind;
        if (hVar != null && (appCompatEditText = hVar.f61134f) != null) {
            appCompatEditText.addTextChangedListener(new b());
        }
        gm.h hVar2 = this.bind;
        if (hVar2 != null && (imageView2 = hVar2.f61130b) != null) {
            imageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MemberPromoCodeDialog.u0(this.f45082a, view);
                }
            });
        }
        gm.h hVar3 = this.bind;
        if (hVar3 != null && (imageView = hVar3.f61131c) != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MemberPromoCodeDialog.v0(this.f45083a, view);
                }
            });
        }
        gm.h hVar4 = this.bind;
        if (hVar4 != null && (textView = hVar4.f61132d) != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MemberPromoCodeDialog.w0(this.f45084a, view);
                }
            });
        }
        t0().e().j(getViewLifecycleOwner(), new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MemberPromoCodeDialog.x0(this.f45085a, (i0) obj);
            }
        }));
    }

    private final y t0() {
        return (y) this.promoCodeViewModel.getValue();
    }

    public static final void u0(MemberPromoCodeDialog memberPromoCodeDialog, View view) {
        memberPromoCodeDialog.dismissAllowingStateLoss();
    }

    public static final void v0(MemberPromoCodeDialog memberPromoCodeDialog, View view) {
        AppCompatEditText appCompatEditText;
        gm.h hVar = memberPromoCodeDialog.bind;
        if (hVar == null || (appCompatEditText = hVar.f61134f) == null) {
            return;
        }
        appCompatEditText.setText("");
    }

    public static final void w0(MemberPromoCodeDialog memberPromoCodeDialog, View view) {
        String string;
        TextView textView;
        AppCompatEditText appCompatEditText;
        Editable text;
        String string2;
        gm.h hVar = memberPromoCodeDialog.bind;
        if (hVar == null || (appCompatEditText = hVar.f61134f) == null || (text = appCompatEditText.getText()) == null || (string2 = text.toString()) == null || (string = StringsKt.n1(string2).toString()) == null) {
            string = "";
        }
        if (string.length() == 0) {
            String string3 = memberPromoCodeDialog.getString(R$string.member_promo_code_empty_tips);
            Intrinsics.g(string3, "getString(...)");
            memberPromoCodeDialog.A0(string3);
        } else {
            gm.h hVar2 = memberPromoCodeDialog.bind;
            if (hVar2 != null && (textView = hVar2.f61132d) != null) {
                textView.setEnabled(false);
            }
            memberPromoCodeDialog.t0().h(string);
        }
    }

    public static final Unit x0(MemberPromoCodeDialog memberPromoCodeDialog, i0 i0Var) {
        TextView textView;
        if (!i0Var.c()) {
            if (Intrinsics.c(i0Var.a(), "400")) {
                String string = memberPromoCodeDialog.getString(R$string.member_promo_code_error_tips);
                Intrinsics.g(string, "getString(...)");
                memberPromoCodeDialog.A0(string);
            } else {
                com.tn.lib.widget.toast.core.h.f40484a.k(com.tn.lib.widget.R$string.error_load_failed);
            }
            gm.h hVar = memberPromoCodeDialog.bind;
            if (hVar != null && (textView = hVar.f61132d) != null) {
                textView.setEnabled(true);
            }
        } else if (i0Var.b() == null) {
            String string2 = memberPromoCodeDialog.getString(R$string.member_promo_code_error_tips);
            Intrinsics.g(string2, "getString(...)");
            memberPromoCodeDialog.A0(string2);
        } else {
            Context context = memberPromoCodeDialog.getContext();
            if (context != null) {
                if (i0Var.b().getVipDurationDays() > 0) {
                    fh.b.a aVar = fh.b.f60176a;
                    int i10 = R$layout.claim_succeed_layout;
                    String string3 = context.getString(R$string.member_claimed_succeed_days, Integer.valueOf(i0Var.b().getVipDurationDays()));
                    Intrinsics.g(string3, "getString(...)");
                    aVar.g(i10, string3, (24 & 4) != 0 ? 0 : 17, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : 0);
                } else {
                    com.tn.lib.widget.toast.core.h.f40484a.k(R$string.member_enjoy_your_benefits_now);
                }
            }
            memberPromoCodeDialog.dismissAllowingStateLoss();
        }
        return Unit.f64096a;
    }

    public static final void y0(AppCompatEditText appCompatEditText) {
        appCompatEditText.requestFocus();
        KeyboardUtils.i(appCompatEditText);
    }

    public final void A0(String msg) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        Intrinsics.h(msg, "msg");
        if (msg.length() <= 0) {
            gm.h hVar = this.bind;
            if (hVar == null || (textView = hVar.f61133e) == null) {
                return;
            }
            uf.c.h(textView);
            return;
        }
        gm.h hVar2 = this.bind;
        if (hVar2 != null && (textView3 = hVar2.f61133e) != null) {
            textView3.setText(msg);
        }
        gm.h hVar3 = this.bind;
        if (hVar3 == null || (textView2 = hVar3.f61133e) == null) {
            return;
        }
        uf.c.k(textView2);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomInputDialogTheme);
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(requireContext(), getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setGravity(80);
        }
        cVar.k().U0(3);
        cVar.k().T0(true);
        return cVar;
    }

    @Override
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        Function0 function0 = this.callback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override
    public void onStart() {
        final AppCompatEditText appCompatEditText;
        super.onStart();
        gm.h hVar = this.bind;
        if (hVar == null || (appCompatEditText = hVar.f61134f) == null) {
            return;
        }
        appCompatEditText.postDelayed(new Runnable() {
            @Override
            public final void run() {
                MemberPromoCodeDialog.y0(appCompatEditText);
            }
        }, 200L);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(true);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(false);
        }
        this.bind = gm.h.a(view);
        initView();
    }

    public final void z0(Function0 callBack) {
        Intrinsics.h(callBack, "callBack");
        this.callback = callBack;
    }
}
