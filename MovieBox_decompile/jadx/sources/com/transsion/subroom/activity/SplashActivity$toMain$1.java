package com.transsion.subroom.activity;

import android.app.Application;
import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.therouter.TheRouter;
import com.transsion.baselib.helper.ReferrerBean;
import com.transsion.baselib.report.launch.RoomInstallReferrer;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subroom.activity.SplashActivity$toMain$1", f = "SplashActivity.kt", l = {Sdk$SDKError.Reason.SILENT_MODE_MONITOR_ERROR_VALUE}, m = "invokeSuspend")
final class SplashActivity$toMain$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private Object L$0;
    int label;
    final SplashActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SplashActivity$toMain$1(SplashActivity splashActivity, Continuation<? super SplashActivity$toMain$1> continuation) {
        super(2, continuation);
        this.this$0 = splashActivity;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SplashActivity$toMain$1 splashActivity$toMain$1 = new SplashActivity$toMain$1(this.this$0, continuation);
        splashActivity$toMain$1.L$0 = obj;
        return splashActivity$toMain$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            RoomInstallReferrer roomInstallReferrer = RoomInstallReferrer.f42217a;
            this.label = 1;
            if (roomInstallReferrer.f(n0Var, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        jg.b.a aVar = jg.b.f63119a;
        Application application = this.this$0.getApplication();
        Intrinsics.g(application, "getApplication(...)");
        if (TextUtils.equals(aVar.e(application), "gp")) {
            RoomInstallReferrer roomInstallReferrer2 = RoomInstallReferrer.f42217a;
            Application application2 = this.this$0.getApplication();
            Intrinsics.g(application2, "getApplication(...)");
            roomInstallReferrer2.e(application2, new RoomInstallReferrer.a() {
                @Override
                public void a(ReferrerBean referrer) {
                    String utmContent;
                    kk.a aVar2;
                    Intrinsics.h(referrer, "referrer");
                    if (TextUtils.isEmpty(referrer.getUtmContent())) {
                        return;
                    }
                    try {
                        if (Intrinsics.c(referrer.getUtmSource(), "fission-share") && (utmContent = referrer.getUtmContent()) != null && (aVar2 = (kk.a) TheRouter.d(kk.a.class, new Object[0])) != null) {
                            aVar2.a(utmContent);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    Uri uriG = com.transsion.baselib.helper.b.f42123a.g(Uri.parse(referrer.getUtmContent()));
                    if (uriG != null) {
                        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new SplashActivity$toMain$1$1$onResolved$2(uriG, null), 3, null);
                    }
                }
            });
        } else {
            RoomInstallReferrer roomInstallReferrer3 = RoomInstallReferrer.f42217a;
            Application application3 = this.this$0.getApplication();
            Intrinsics.g(application3, "getApplication(...)");
            roomInstallReferrer3.i(application3, TmcConstants.ROUTE_UNKNOWN, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SplashActivity$toMain$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
