package com.transsion.fission;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.activity.BaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.y;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0013R\u001d\u0010\u001a\u001a\u0004\u0018\u00010\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/fission/FissionInvitationCodeActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lhk/a;", "<init>", "()V", "", "k0", "", "code", "n0", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/os/Bundle;)V", "h0", "()Lhk/a;", "", "isStatusDark", "()Z", "isTranslucent", "Lkk/a;", "a", "Lkotlin/Lazy;", "g0", "()Lkk/a;", "mFissionProvider", "Lcom/transsion/fission/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "f0", "()Lcom/transsion/fission/f;", "mFissionInvitationViewModel", "Fission_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FissionInvitationCodeActivity extends BaseActivity<hk.a> {

    private final Lazy mFissionProvider = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return FissionInvitationCodeActivity.m0();
        }
    });

    private final Lazy mFissionInvitationViewModel;

    public static final class a implements TextWatcher {
        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void afterTextChanged(Editable editable) {
            AppCompatButton appCompatButton = ((hk.a) FissionInvitationCodeActivity.this.getMViewBinding()).f61371b;
            boolean z10 = false;
            if (editable != null && editable.length() == 8) {
                z10 = true;
            }
            appCompatButton.setSelected(z10);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f42957a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f42957a = function;
        }

        @Override
        public final Function a() {
            return this.f42957a;
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
            this.f42957a.invoke(obj);
        }
    }

    public FissionInvitationCodeActivity() {
        final Function0 function0 = null;
        this.mFissionInvitationViewModel = new ViewModelLazy(Reflection.b(f.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() {
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<p1.a>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final p1.a invoke() {
                p1.a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (p1.a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    private final f f0() {
        return (f) this.mFissionInvitationViewModel.getValue();
    }

    private final kk.a g0() {
        return (kk.a) this.mFissionProvider.getValue();
    }

    public static final void i0(FissionInvitationCodeActivity fissionInvitationCodeActivity, View view) {
        fissionInvitationCodeActivity.onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void j0(FissionInvitationCodeActivity fissionInvitationCodeActivity, View view) {
        Editable text = ((hk.a) fissionInvitationCodeActivity.getMViewBinding()).f61372c.getText();
        String string = text != null ? text.toString() : null;
        if (string == null || string.length() != 8) {
            return;
        }
        fissionInvitationCodeActivity.n0(string);
    }

    private final void k0() {
        f0().e().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FissionInvitationCodeActivity.l0(this.f42961a, (BaseDto) obj);
            }
        }));
    }

    public static final Unit l0(FissionInvitationCodeActivity fissionInvitationCodeActivity, BaseDto baseDto) {
        if (baseDto == null) {
            return Unit.f64096a;
        }
        if (Intrinsics.c(baseDto.getCode(), "0")) {
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.fission_invitation_success);
            fissionInvitationCodeActivity.setResult(-1);
            fissionInvitationCodeActivity.finish();
        } else {
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.fission_invitation_err);
        }
        return Unit.f64096a;
    }

    public static final kk.a m0() {
        return (kk.a) TheRouter.d(kk.a.class, new Object[0]);
    }

    private final void n0(String code) {
        if (zg.g.f76786a.a(this)) {
            f0().g(code);
        } else {
            com.tn.lib.widget.toast.core.h.f40484a.k(com.transsion.baseui.R$string.base_net_err);
        }
    }

    @Override
    public hk.a getViewBinding() {
        hk.a aVarC = hk.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(Bundle savedInstanceState) {
        super.initView(savedInstanceState);
        TitleLayout titleLayout = ((hk.a) getMViewBinding()).f61373d;
        String string = getString(R$string.fission_invitation_code);
        Intrinsics.g(string, "getString(...)");
        titleLayout.setTitleText(string);
        ((hk.a) getMViewBinding()).f61373d.setLeftOnclick(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                FissionInvitationCodeActivity.i0(this.f42959a, view);
            }
        });
        AppCompatEditText appCompatEditText = ((hk.a) getMViewBinding()).f61372c;
        kk.a aVarG0 = g0();
        appCompatEditText.setText(aVarG0 != null ? aVarG0.h() : null);
        AppCompatEditText etInvitationCode = ((hk.a) getMViewBinding()).f61372c;
        Intrinsics.g(etInvitationCode, "etInvitationCode");
        jk.a.a(etInvitationCode, com.blankj.utilcode.util.i.e(4.0f));
        AppCompatEditText etInvitationCode2 = ((hk.a) getMViewBinding()).f61372c;
        Intrinsics.g(etInvitationCode2, "etInvitationCode");
        etInvitationCode2.addTextChangedListener(new a());
        ((hk.a) getMViewBinding()).f61371b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                FissionInvitationCodeActivity.j0(this.f42960a, view);
            }
        });
        k0();
    }

    @Override
    public boolean isStatusDark() {
        return com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("dark_mode_follow_sys", true) && !y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }
}
