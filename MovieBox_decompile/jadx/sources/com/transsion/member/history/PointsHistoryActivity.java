package com.transsion.member.history;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.gyf.immersionbar.ImmersionBar;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.member.R$id;
import com.transsion.member.R$string;
import com.transsion.member.bean.PointsHistoryData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0014\u0010\u0004R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/transsion/member/history/PointsHistoryActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lgm/b;", "<init>", "()V", "", "f0", "()Ljava/lang/String;", "", "isTranslucent", "()Z", "o0", "", "l0", "m0", "k0", "p0", "retryLoadData", "F0", "()Lgm/b;", "q0", "Lcom/transsion/member/history/PointsHistoryViewModel;", "i", "Lkotlin/Lazy;", "E0", "()Lcom/transsion/member/history/PointsHistoryViewModel;", "mViewModel", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PointsHistoryActivity extends BaseNewActivity<gm.b> {

    private final Lazy mViewModel;

    static final class a implements c0, FunctionAdapter {

        private final Function1 f45102a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45102a = function;
        }

        @Override
        public final Function a() {
            return this.f45102a;
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
            this.f45102a.invoke(obj);
        }
    }

    public PointsHistoryActivity() {
        final Function0 function0 = null;
        this.mViewModel = new ViewModelLazy(Reflection.b(PointsHistoryViewModel.class), new Function0<x0>() {
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

    private final PointsHistoryViewModel E0() {
        return (PointsHistoryViewModel) this.mViewModel.getValue();
    }

    public static final void G0(PointsHistoryActivity pointsHistoryActivity, View view) {
        pointsHistoryActivity.finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit H0(PointsHistoryActivity pointsHistoryActivity, PointsHistoryData pointsHistoryData) {
        String coinBalance;
        AppCompatTextView appCompatTextView = ((gm.b) pointsHistoryActivity.getMViewBinding()).f61086d;
        if (pointsHistoryData == null || (coinBalance = pointsHistoryData.getCoinBalance()) == null) {
            coinBalance = "0";
        }
        appCompatTextView.setText(coinBalance);
        return Unit.f64096a;
    }

    @Override
    public gm.b getViewBinding() {
        gm.b bVarC = gm.b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public String f0() {
        return "";
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public void k0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void l0() {
        ((gm.b) getMViewBinding()).f61085c.f61164c.setText(getString(R$string.points_history_title));
        ((gm.b) getMViewBinding()).f61085c.f61163b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                PointsHistoryActivity.G0(this.f45113a, view);
            }
        });
        LinearLayoutCompat root = ((gm.b) getMViewBinding()).getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.e(root);
        s0();
        ImmersionBar.with(this).statusBarDarkFont(false).init();
    }

    @Override
    public void m0() {
        E0().e().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PointsHistoryActivity.H0(this.f45114a, (PointsHistoryData) obj);
            }
        }));
    }

    @Override
    public boolean o0() {
        return false;
    }

    @Override
    public void p0() {
    }

    @Override
    public void q0() {
        super.q0();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        wVarP.s(R$id.container, PointsHistoryFragment.INSTANCE.a());
        wVarP.j();
    }

    @Override
    public void retryLoadData() {
    }
}
