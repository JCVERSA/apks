package com.transsnet.login.interest;

import android.os.Bundle;
import android.view.View;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.activity.BaseActivity;
import com.transsnet.login.R$array;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0010R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/transsnet/login/interest/LoginInterestActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lmx/d;", "<init>", "()V", "", "j0", "initView", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "f0", "()Lmx/d;", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "Lcom/transsnet/login/interest/LoginInterestViewModel;", "a", "Lcom/transsnet/login/interest/LoginInterestViewModel;", "mLoginInterestViewModel", "Lcom/transsnet/login/interest/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsnet/login/interest/f;", "mLoginInterestAdapter", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LoginInterestActivity extends BaseActivity<mx.d> {

    private LoginInterestViewModel mLoginInterestViewModel;

    private f mLoginInterestAdapter;

    static final class a implements c0, FunctionAdapter {

        private final Function1 f58142a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58142a = function;
        }

        @Override
        public final Function a() {
            return this.f58142a;
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
            this.f58142a.invoke(obj);
        }
    }

    public static final void g0(LoginInterestActivity loginInterestActivity, View view) {
        loginInterestActivity.setResult(0);
        loginInterestActivity.finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit h0(LoginInterestActivity loginInterestActivity, List it) {
        Intrinsics.h(it, "it");
        ((mx.d) loginInterestActivity.getMViewBinding()).f66758c.setEnabled(!it.isEmpty());
        return Unit.f64096a;
    }

    public static final void i0(LoginInterestActivity loginInterestActivity, View view) {
        LoginInterestViewModel loginInterestViewModel = loginInterestActivity.mLoginInterestViewModel;
        if (loginInterestViewModel != null) {
            f fVar = loginInterestActivity.mLoginInterestAdapter;
            loginInterestViewModel.e(fVar != null ? fVar.h() : null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        ix.d.f62813a.b().putBoolean("login_interest_show", true);
        ((mx.d) getMViewBinding()).f66759d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginInterestActivity.g0(this.f58144a, view);
            }
        });
        String[] stringArray = getResources().getStringArray(R$array.interest);
        Intrinsics.g(stringArray, "getStringArray(...)");
        this.mLoginInterestAdapter = new f(ArraysKt.G0(stringArray), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LoginInterestActivity.h0(this.f58145a, (List) obj);
            }
        });
        ((mx.d) getMViewBinding()).f66758c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LoginInterestActivity.i0(this.f58146a, view);
            }
        });
        RecyclerView recyclerView = ((mx.d) getMViewBinding()).f66757b;
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(this);
        flexboxLayoutManager.c0(0);
        flexboxLayoutManager.d0(1);
        flexboxLayoutManager.e0(0);
        recyclerView.setLayoutManager(flexboxLayoutManager);
        recyclerView.setAdapter(this.mLoginInterestAdapter);
    }

    private final void j0() {
        LoginInterestViewModel loginInterestViewModel = (LoginInterestViewModel) new v0(this).a(LoginInterestViewModel.class);
        this.mLoginInterestViewModel = loginInterestViewModel;
        if (loginInterestViewModel != null) {
            loginInterestViewModel.d().j(this, new a(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginInterestActivity.k0(this.f58147a, (String) obj);
                }
            }));
        }
    }

    public static final Unit k0(LoginInterestActivity loginInterestActivity, String str) {
        loginInterestActivity.setResult(-1);
        loginInterestActivity.finish();
        return Unit.f64096a;
    }

    @Override
    public mx.d getViewBinding() {
        mx.d dVarC = mx.d.c(getLayoutInflater());
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }

    @Override
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override
    public boolean isStatusDark() {
        return true;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        j0();
        initView();
    }
}
