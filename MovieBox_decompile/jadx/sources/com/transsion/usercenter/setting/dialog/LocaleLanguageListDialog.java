package com.transsion.usercenter.setting.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.bottomsheet.c;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baselib.locale.LocaleChangedHelper;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.setting.dialog.LocaleLanguageListDialog;
import com.transsion.usercenter.setting.viewmodel.LocaleLanguageViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import jv.a;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import r6.d;
import xu.b0;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000  2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u0019\u0010\r\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0010\u001a\u00020\u000f2\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "t0", "(Landroid/view/View;)V", "initAdapter", "r0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lxu/b0;", "c", "Lxu/b0;", "viewBinding", "Lcom/transsion/usercenter/setting/adapter/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/usercenter/setting/adapter/b;", "adapter", "Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;", "e", "Lcom/transsion/usercenter/setting/viewmodel/LocaleLanguageViewModel;", "viewModel", "f", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LocaleLanguageListDialog extends BaseDialog {

    private b0 viewBinding;

    private com.transsion.usercenter.setting.adapter.b adapter;

    private LocaleLanguageViewModel viewModel;

    static final class b implements c0, FunctionAdapter {

        private final Function1 f55256a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55256a = function;
        }

        @Override
        public final Function a() {
            return this.f55256a;
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
            this.f55256a.invoke(obj);
        }
    }

    public LocaleLanguageListDialog() {
        super(R$layout.dialog_locale_language);
    }

    private final void initAdapter() {
        RecyclerView recyclerView;
        final com.transsion.usercenter.setting.adapter.b bVar = new com.transsion.usercenter.setting.adapter.b(new ArrayList());
        bVar.w1(new d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                LocaleLanguageListDialog.q0(bVar, this, baseQuickAdapter, view, i10);
            }
        });
        this.adapter = bVar;
        b0 b0Var = this.viewBinding;
        if (b0Var == null || (recyclerView = b0Var.f75503b) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(requireContext()));
        recyclerView.setAdapter(this.adapter);
    }

    public static final void q0(com.transsion.usercenter.setting.adapter.b bVar, LocaleLanguageListDialog localeLanguageListDialog, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof a) {
            LocaleChangedHelper.f42148a.a(bVar.getContext(), ((a) item).b());
        }
        localeLanguageListDialog.dismissAllowingStateLoss();
    }

    private final void r0() {
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            LocaleLanguageViewModel localeLanguageViewModel = (LocaleLanguageViewModel) new v0(appCompatActivity).a(LocaleLanguageViewModel.class);
            localeLanguageViewModel.e().j(appCompatActivity, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LocaleLanguageListDialog.s0(this.f65492a, (List) obj);
                }
            }));
            localeLanguageViewModel.d();
            this.viewModel = localeLanguageViewModel;
        }
    }

    public static final Unit s0(LocaleLanguageListDialog localeLanguageListDialog, List list) {
        com.transsion.usercenter.setting.adapter.b bVar = localeLanguageListDialog.adapter;
        if (bVar != null) {
            bVar.n1(list);
        }
        return Unit.f64096a;
    }

    private final void t0(View view) {
        AppCompatTextView appCompatTextView;
        b0 b0VarA = b0.a(view);
        this.viewBinding = b0VarA;
        if (b0VarA == null || (appCompatTextView = b0VarA.f75504c) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                LocaleLanguageListDialog.u0(this.f65493a, view2);
            }
        });
    }

    public static final void u0(LocaleLanguageListDialog localeLanguageListDialog, View view) {
        localeLanguageListDialog.dismissAllowingStateLoss();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        c cVar = new c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
            window.setGravity(80);
            window.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = y.e();
            window.setAttributes(attributes);
            window.setBackgroundDrawable(null);
        }
        return cVar;
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        t0(view);
        initAdapter();
        r0();
    }
}
