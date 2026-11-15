package com.transsion.usercenter.laboratory;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.view.View;
import android.webkit.WebView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.transsion.ad.test.TestAdActivity;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.mbwidget.data.SportWidgetDataManager;
import com.transsion.mbwidget.data.WidgetRefreshWorker;
import com.transsion.push.PushTestActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0086@¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/laboratory/LaboratoryActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/e;", "<init>", "()V", "t0", "()Lxu/e;", "", "isStatusDark", "()Z", "isTranslucent", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Context;", "context", "M0", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LaboratoryActivity extends BaseActivity<xu.e> {
    public static final void A0(LaboratoryActivity laboratoryActivity, View view) {
        laboratoryActivity.startActivity(new Intent(laboratoryActivity, (Class<?>) LabMiniAppSDKTestActivity.class));
    }

    public static final void B0(LaboratoryActivity laboratoryActivity, View view) {
        new LabFpsDialog().k0(laboratoryActivity, LauncherMiniAppConfigHelper.KEY_FPS);
    }

    public static final void C0(LaboratoryActivity laboratoryActivity, View view) {
        TestAdActivity.INSTANCE.a(laboratoryActivity);
    }

    public static final void D0(LaboratoryActivity laboratoryActivity, View view) {
        new LabContentModeDialog().k0(laboratoryActivity, "LabContentModeDialog");
    }

    public static final void E0(LaboratoryActivity laboratoryActivity, View view) {
        new LabPhoneBrandDialog().k0(laboratoryActivity, "brand");
    }

    public static final void F0(LaboratoryActivity laboratoryActivity, View view) {
        new LabInfoDialog().k0(laboratoryActivity, "info");
    }

    public static final void G0(LaboratoryActivity laboratoryActivity, View view) {
        laboratoryActivity.startActivity(new Intent(laboratoryActivity, (Class<?>) MccActivity.class));
    }

    public static final void H0(LaboratoryActivity laboratoryActivity, View view) {
        new LabChannelDialog().k0(laboratoryActivity, "channel");
    }

    public static final void I0(LaboratoryActivity laboratoryActivity, View view) {
        new LabStreamingDialog().k0(laboratoryActivity, "stream");
    }

    public static final void J0(LaboratoryActivity laboratoryActivity, View view) {
        new LabHttpHostDialog().k0(laboratoryActivity, "host");
    }

    public static final void K0(LaboratoryActivity laboratoryActivity, View view) {
        com.tn.lib.widget.toast.core.h.f40484a.l("Cold start coming");
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(laboratoryActivity), null, null, new LaboratoryActivity$onCreate$9$1(laboratoryActivity, null), 3, null);
    }

    public static final void L0(View view) {
        com.tn.lib.widget.toast.core.h.f40484a.l("js调试ON 当次进程有效");
        WebView.setWebContentsDebuggingEnabled(true);
    }

    public static final void u0(LaboratoryActivity laboratoryActivity, View view) {
        laboratoryActivity.finish();
    }

    public static final void v0(LaboratoryActivity laboratoryActivity, View view) {
        new LabLaneDialog().k0(laboratoryActivity, "lane");
    }

    public static final void w0(LaboratoryActivity laboratoryActivity, View view) {
        new LabWebTestDialog().k0(laboratoryActivity, "webTest");
    }

    public static final void x0(LaboratoryActivity laboratoryActivity, View view) {
        laboratoryActivity.startActivity(new Intent(laboratoryActivity, (Class<?>) PushTestActivity.class));
    }

    public static final void y0(View view) {
        com.tn.lib.widget.toast.core.h.f40484a.l("Refresh Widget + 体育Widget强制刷新");
        WidgetRefreshWorker.INSTANCE.a();
        SportWidgetDataManager.f44879a.h();
    }

    public static final void z0(LaboratoryActivity laboratoryActivity, View view) {
        new LabLocationDialog().k0(laboratoryActivity, RequestParameters.SUBRESOURCE_LOCATION);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object M0(Context context, Continuation continuation) {
        LaboratoryActivity$restartApp$1 laboratoryActivity$restartApp$1;
        if (continuation instanceof LaboratoryActivity$restartApp$1) {
            laboratoryActivity$restartApp$1 = (LaboratoryActivity$restartApp$1) continuation;
            int i10 = laboratoryActivity$restartApp$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                laboratoryActivity$restartApp$1.label = i10 - Integer.MIN_VALUE;
            } else {
                laboratoryActivity$restartApp$1 = new LaboratoryActivity$restartApp$1(this, continuation);
            }
        } else {
            laboratoryActivity$restartApp$1 = new LaboratoryActivity$restartApp$1(this, continuation);
        }
        Object obj = laboratoryActivity$restartApp$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = laboratoryActivity$restartApp$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            laboratoryActivity$restartApp$1.L$0 = context;
            laboratoryActivity$restartApp$1.label = 1;
            if (kotlinx.coroutines.u0.a(2000L, laboratoryActivity$restartApp$1) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            context = (Context) laboratoryActivity$restartApp$1.L$0;
            ResultKt.b(obj);
        }
        com.transsion.baselib.report.k.f42210a.l();
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        Intrinsics.e(launchIntentForPackage);
        launchIntentForPackage.addFlags(ASTNode.DEOP);
        context.startActivity(launchIntentForPackage);
        Process.killProcess(Process.myPid());
        System.exit(0);
        return Unit.f64096a;
    }

    @Override
    public boolean isStatusDark() {
        return true;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ((xu.e) getMViewBinding()).f75536b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.u0(this.f54755a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75545k.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.v0(this.f54728a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75549o.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.E0(this.f54756a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75537c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.F0(this.f54758a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75543i.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.G0(this.f54760a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75538d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.H0(this.f54761a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75550p.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.I0(this.f54763a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75542h.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.J0(this.f54766a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75544j.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.K0(this.f54768a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75540f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.L0(view);
            }
        });
        ((xu.e) getMViewBinding()).f75552r.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.w0(this.f54772a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75548n.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.x0(this.f54774a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75553s.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.y0(view);
            }
        });
        ((xu.e) getMViewBinding()).f75546l.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.z0(this.f54778a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75547m.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.A0(this.f54780a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75541g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.B0(this.f54782a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75551q.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.C0(this.f54784a, view);
            }
        });
        ((xu.e) getMViewBinding()).f75539e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LaboratoryActivity.D0(this.f54725a, view);
            }
        });
    }

    @Override
    public xu.e getViewBinding() {
        xu.e eVarC = xu.e.c(getLayoutInflater());
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }
}
