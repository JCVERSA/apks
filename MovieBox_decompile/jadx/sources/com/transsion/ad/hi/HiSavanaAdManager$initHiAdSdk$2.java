package com.transsion.ad.hi;

import android.app.Application;
import android.content.Context;
import com.blankj.utilcode.util.Utils;
import com.cloud.hisavana.net.CommonOkHttpClient;
import com.hisavana.mediation.config.TAdManager;
import kg.c;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.OkHttpClient;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlin/Result;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lkotlin/Result;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.hi.HiSavanaAdManager$initHiAdSdk$2", f = "HiSavanaAdManager.kt", l = {}, m = "invokeSuspend")
final class HiSavanaAdManager$initHiAdSdk$2 extends SuspendLambda implements Function2<n0, Continuation<? super Result<? extends Unit>>, Object> {
    final boolean $adTestDevice;
    final String $hisavanaAppId;
    final boolean $isDebug;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HiSavanaAdManager$initHiAdSdk$2(String str, boolean z10, boolean z11, Continuation<? super HiSavanaAdManager$initHiAdSdk$2> continuation) {
        super(2, continuation);
        this.$hisavanaAppId = str;
        this.$isDebug = z10;
        this.$adTestDevice = z11;
    }

    public static final void d(int i10, String str) {
        k.d(o0.a(y0.c()), null, null, new HiSavanaAdManager$initHiAdSdk$2$1$1$1$1(null), 3, null);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HiSavanaAdManager$initHiAdSdk$2(this.$hisavanaAppId, this.$isDebug, this.$adTestDevice, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Context applicationContext;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        String str = this.$hisavanaAppId;
        boolean z10 = this.$isDebug;
        boolean z11 = this.$adTestDevice;
        try {
            Result.Companion companion = Result.INSTANCE;
            OkHttpClient okHttpClientG = c.f63982e.a().g();
            Unit unit = null;
            CommonOkHttpClient.r(okHttpClientG != null ? okHttpClientG.dispatcher() : null);
            Application applicationA = Utils.a();
            if (applicationA != null && (applicationContext = applicationA.getApplicationContext()) != null) {
                boolean z12 = false;
                TAdManager.AdConfigBuilder debug = new TAdManager.AdConfigBuilder().setAppId(str).setAppIconId(com.blankj.utilcode.util.c.a()).setDebug(z10);
                if (z10 && z11) {
                    z12 = true;
                }
                TAdManager.init(applicationContext, debug.testDevice(z12).setMuteVideo(true).setCloudCompleteListener(new TAdManager.OnCloudCompleteListener() {
                    @Override
                    public final void onCloudComplete(int i10, String str2) {
                        HiSavanaAdManager$initHiAdSdk$2.d(i10, str2);
                    }
                }).build());
                unit = Unit.f64096a;
            }
            objM453constructorimpl = Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        return Result.m452boximpl(objM453constructorimpl);
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Result<Unit>> continuation) {
        return ((HiSavanaAdManager$initHiAdSdk$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
