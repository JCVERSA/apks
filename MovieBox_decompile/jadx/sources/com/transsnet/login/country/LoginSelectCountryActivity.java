package com.transsnet.login.country;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.KeyboardUtils;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.activity.BaseActivity;
import com.transsnet.login.country.widget.SideBar;
import com.transsnet.loginapi.bean.Country;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import mx.i;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u00020\u00072\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\u00072\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\u00072\b\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u001d\u0010\u001f\u001a\u00020\u00072\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00170\u0011H\u0002¢\u0006\u0004\b\u001f\u0010\u0015J\u0019\u0010 \u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b \u0010\fJ\u000f\u0010!\u001a\u00020\u0002H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020#H\u0016¢\u0006\u0004\b&\u0010%J\u000f\u0010'\u001a\u00020#H\u0016¢\u0006\u0004\b'\u0010%J\u0019\u0010)\u001a\u00020\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b)\u0010*J\u0019\u0010,\u001a\u00020\u00072\b\u0010+\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b,\u0010-R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104¨\u00066"}, d2 = {"Lcom/transsnet/login/country/LoginSelectCountryActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lmx/i;", "Landroid/view/View$OnClickListener;", "Lcom/transsnet/login/country/widget/SideBar$a;", "<init>", "()V", "", "initView", "Landroid/os/Bundle;", "savedInstanceState", "h0", "(Landroid/os/Bundle;)V", "", RequestParameters.POSITION, "n0", "(Ljava/lang/Integer;)V", "", "", "strings", "r0", "(Ljava/util/List;)V", "Lkx/a;", "Lcom/transsnet/loginapi/bean/Country;", "countryEvent", "o0", "(Lkx/a;)V", PlaceTypes.COUNTRY, "p0", "(Lcom/transsnet/loginapi/bean/Country;)V", "countries", "q0", "onCreate", "g0", "()Lmx/i;", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "Landroid/view/View;", "onClick", "(Landroid/view/View;)V", "index", "f", "(Ljava/lang/String;)V", "Ljx/a;", "a", "Ljx/a;", "adapter", "Lcom/transsnet/login/country/SelectCountryViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsnet/login/country/SelectCountryViewModel;", "viewModel", "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LoginSelectCountryActivity extends BaseActivity<i> implements View.OnClickListener, SideBar.a {

    private jx.a adapter;

    private SelectCountryViewModel viewModel;

    static final class a implements c0, FunctionAdapter {

        private final Function1 f58059a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58059a = function;
        }

        @Override
        public final Function a() {
            return this.f58059a;
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
            this.f58059a.invoke(obj);
        }
    }

    private final void h0(Bundle savedInstanceState) {
        SelectCountryViewModel selectCountryViewModel = (SelectCountryViewModel) new v0(this).a(SelectCountryViewModel.class);
        this.viewModel = selectCountryViewModel;
        if (selectCountryViewModel != null) {
            selectCountryViewModel.f().j(this, new a(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginSelectCountryActivity.i0(this.f58066a, (List) obj);
                }
            }));
            selectCountryViewModel.k().j(this, new a(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginSelectCountryActivity.j0(this.f58067a, (List) obj);
                }
            }));
            selectCountryViewModel.j().j(this, new a(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginSelectCountryActivity.k0(this.f58068a, (kx.a) obj);
                }
            }));
            selectCountryViewModel.i().j(this, new a(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LoginSelectCountryActivity.l0(this.f58069a, (Integer) obj);
                }
            }));
        }
    }

    public static final Unit i0(LoginSelectCountryActivity loginSelectCountryActivity, List list) {
        if (list != null) {
            loginSelectCountryActivity.q0(list);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        ((i) getMViewBinding()).f66805e.setScrollerListener(this);
        ((i) getMViewBinding()).f66802b.setOnClickListener(this);
    }

    public static final Unit j0(LoginSelectCountryActivity loginSelectCountryActivity, List list) {
        if (list != null) {
            loginSelectCountryActivity.r0(list);
        }
        return Unit.f64096a;
    }

    public static final Unit k0(LoginSelectCountryActivity loginSelectCountryActivity, kx.a aVar) {
        loginSelectCountryActivity.o0(aVar);
        return Unit.f64096a;
    }

    public static final Unit l0(LoginSelectCountryActivity loginSelectCountryActivity, Integer num) {
        loginSelectCountryActivity.n0(num);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void m0(LoginSelectCountryActivity loginSelectCountryActivity) {
        KeyboardUtils.e(((i) loginSelectCountryActivity.getMViewBinding()).f66804d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void n0(Integer position) {
        if (position != null) {
            ((i) getMViewBinding()).f66804d.scrollToPosition(position.intValue());
            RecyclerView.m layoutManager = ((i) getMViewBinding()).f66804d.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(position.intValue(), 0);
            }
        }
    }

    private final void o0(kx.a countryEvent) {
        if (countryEvent != null) {
            p0((Country) countryEvent.a());
        }
    }

    private final void p0(Country country) {
        if (country != null) {
            Intent intent = new Intent();
            intent.putExtra("countryCode", country);
            setResult(-1, intent);
            finish();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void q0(List countries) {
        jx.a aVar = this.adapter;
        if (aVar == null) {
            this.adapter = new jx.a(getApplicationContext(), this.viewModel, countries);
            ((i) getMViewBinding()).f66804d.setLayoutManager(new LinearLayoutManager(getApplicationContext()));
            ((i) getMViewBinding()).f66804d.setAdapter(this.adapter);
        } else if (aVar != null) {
            aVar.i(countries);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void r0(List strings) {
        ((i) getMViewBinding()).f66805e.setIndexs(strings);
    }

    @Override
    public void f(String index) {
        SelectCountryViewModel selectCountryViewModel;
        if (index == null || (selectCountryViewModel = this.viewModel) == null) {
            return;
        }
        selectCountryViewModel.q(index);
    }

    @Override
    public i getViewBinding() {
        i iVarC = i.c(getLayoutInflater());
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
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
    public void onClick(View p10) {
        onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        h0(savedInstanceState);
        KeyboardUtils.d(this);
        ((i) getMViewBinding()).f66804d.postDelayed(new Runnable() {
            @Override
            public final void run() {
                LoginSelectCountryActivity.m0(this.f58065a);
            }
        }, 200L);
    }
}
