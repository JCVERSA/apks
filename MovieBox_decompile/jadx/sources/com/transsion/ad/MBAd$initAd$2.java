package com.transsion.ad;

import android.app.Application;
import ci.h;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.c;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.transsion.ad.scene.b;
import com.transsion.ad.strategy.AdObserveNetworkState;
import com.transsion.ad.strategy.AppManager;
import com.transsion.ad.strategy.NationalInformationManager;
import com.transsion.ad.strategy.u;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.y0;
import rh.d;
import rh.e;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.MBAd$initAd$2", f = "MBAd.kt", l = {177, PsExtractor.PRIVATE_STREAM_1, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE}, m = "invokeSuspend")
final class MBAd$initAd$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final MBAd.a $params;
    private Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MBAd$initAd$2(MBAd.a aVar, Continuation<? super MBAd$initAd$2> continuation) {
        super(2, continuation);
        this.$params = aVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MBAd$initAd$2 mBAd$initAd$2 = new MBAd$initAd$2(this.$params, continuation);
        mBAd$initAd$2.L$0 = obj;
        return mBAd$initAd$2;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x01bc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:41:0x01cd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:49:0x0214  */
    /* JADX WARN: Instruction removed from duplicated block: B:49:0x0214, please report this as an issue */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Throwable thM456exceptionOrNullimpl;
        n0 n0Var;
        MBAd.a aVar;
        r0 r0VarB;
        xh.a aVar2;
        String strC;
        Object objF;
        r0 r0Var;
        Object objF2;
        Object obj2;
        String str = " ================= ";
        Object objF3 = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    aVar = (MBAd.a) this.L$1;
                    n0 n0Var2 = (n0) this.L$0;
                    ResultKt.b(obj);
                    n0Var = n0Var2;
                } else if (i10 == 2) {
                    aVar = (MBAd.a) this.L$1;
                    n0Var = (n0) this.L$0;
                    ResultKt.b(obj);
                    str = " ================= ";
                    n0 n0Var3 = n0Var;
                    new AdObserveNetworkState().f(aVar.a());
                    r0VarB = k.b(n0Var3, null, null, new MBAd$initAd$2$1$sdkHi$1(aVar, null), 3, null);
                    r0 r0VarB2 = k.b(n0Var3, null, null, new MBAd$initAd$2$1$sdkMb$1(aVar, null), 3, null);
                    aVar2 = xh.a.f75336a;
                    strC = MBAd.f40749a.c();
                    this.L$0 = r0VarB;
                    this.L$1 = strC;
                    this.L$2 = aVar2;
                    this.label = 3;
                    objF = r0VarB2.f(this);
                    if (objF == objF3) {
                        return objF3;
                    }
                    r0Var = r0VarB;
                    this.L$0 = strC;
                    this.L$1 = aVar2;
                    this.L$2 = objF;
                    this.label = 4;
                    objF2 = r0Var.f(this);
                    if (objF2 == objF3) {
                        return objF3;
                    }
                    obj2 = objF;
                } else if (i10 == 3) {
                    aVar2 = (xh.a) this.L$2;
                    String str2 = (String) this.L$1;
                    r0Var = (r0) this.L$0;
                    ResultKt.b(obj);
                    str = " ================= ";
                    strC = str2;
                    objF = obj;
                    this.L$0 = strC;
                    this.L$1 = aVar2;
                    this.L$2 = objF;
                    this.label = 4;
                    objF2 = r0Var.f(this);
                    if (objF2 == objF3) {
                        return objF3;
                    }
                    obj2 = objF;
                } else {
                    if (i10 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    obj2 = this.L$2;
                    aVar2 = (xh.a) this.L$1;
                    strC = (String) this.L$0;
                    ResultKt.b(obj);
                    objF2 = obj;
                    str = " ================= ";
                }
                xh.a aVar3 = aVar2;
                StringBuilder sb2 = new StringBuilder();
                String str3 = str;
                sb2.append(str3);
                sb2.append(strC);
                sb2.append(" --> initAd() --> ");
                sb2.append(obj2);
                sb2.append(" -- ");
                sb2.append(objF2);
                sb2.append(str3);
                xh.a.c(aVar3, sb2.toString(), 6, false, 4, null);
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    thM456exceptionOrNullimpl.printStackTrace();
                    xh.a.c(xh.a.f75336a, MBAd.f40749a.c() + " --> initAd() --> 初始化异常 --> it = " + thM456exceptionOrNullimpl, 6, false, 4, null);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            n0 n0Var4 = (n0) this.L$0;
            MBAd.a aVar4 = this.$params;
            Result.Companion companion = Result.INSTANCE;
            xh.a aVar5 = xh.a.f75336a;
            String strC2 = MBAd.f40749a.c();
            String strE = c.e();
            int iF = c.f();
            String strH = c.h();
            boolean zA = e.f71234a.a();
            boolean zC = u.f41195a.c();
            String strL = CacheIpPool.f39857a.l();
            b bVar = b.f41153a;
            boolean zK = bVar.k();
            boolean zH = bVar.h();
            NationalInformationManager nationalInformationManager = NationalInformationManager.f41173a;
            xh.a.c(aVar5, strC2 + " --> initAd() --> monopoly广告SDK 开始初始化 \n--> SDK_VERSION = 4.0.3 \n--> 当前包名 = " + strE + " \n--> 当前宿主版本号 = " + iF + " \n--> 当前宿主版本名 = " + strH + " \n--> 当前是否是会员 = " + zA + " \n --> 当前是否是新用户 = " + zC + "\n--> host = " + strL + "\n--> isOpenAd = " + zK + "\n--> adLinkOff = " + zH + "\n--> currentMcc = " + nationalInformationManager.d() + "\n --> AdInitParams = " + aVar4.l(), 0, false, 6, null);
            AppManager.f41166a.b(aVar4.c());
            d.f71232a.b(aVar4.f());
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            this.L$0 = n0Var4;
            this.L$1 = aVar4;
            this.label = 1;
            objF3 = objF3;
            if (nationalInformationManager.f(applicationA, this) == objF3) {
                return objF3;
            }
            n0Var = n0Var4;
            aVar = aVar4;
            h hVar = h.f16940a;
            a aVar6 = a.f40775a;
            hVar.a(aVar6.b());
            hVar.a(aVar6.a());
            if (!aVar.g()) {
                a2 a2VarC = y0.c();
                MBAd$initAd$2$1$1 mBAd$initAd$2$1$1 = new MBAd$initAd$2$1$1(null);
                this.L$0 = n0Var;
                this.L$1 = aVar;
                this.label = 2;
                if (i.g(a2VarC, mBAd$initAd$2$1$1, this) == objF3) {
                    return objF3;
                }
            }
            n0 n0Var5 = n0Var;
            new AdObserveNetworkState().f(aVar.a());
            r0VarB = k.b(n0Var5, null, null, new MBAd$initAd$2$1$sdkHi$1(aVar, null), 3, null);
            r0 r0VarB3 = k.b(n0Var5, null, null, new MBAd$initAd$2$1$sdkMb$1(aVar, null), 3, null);
            aVar2 = xh.a.f75336a;
            strC = MBAd.f40749a.c();
            this.L$0 = r0VarB;
            this.L$1 = strC;
            this.L$2 = aVar2;
            this.label = 3;
            objF = r0VarB3.f(this);
            if (objF == objF3) {
                return objF3;
            }
            r0Var = r0VarB;
            this.L$0 = strC;
            this.L$1 = aVar2;
            this.L$2 = objF;
            this.label = 4;
            objF2 = r0Var.f(this);
            if (objF2 == objF3) {
                return objF3;
            }
            obj2 = objF;
            xh.a aVar7 = aVar2;
            StringBuilder sb3 = new StringBuilder();
            String str4 = str;
            sb3.append(str4);
            sb3.append(strC);
            sb3.append(" --> initAd() --> ");
            sb3.append(obj2);
            sb3.append(" -- ");
            sb3.append(objF2);
            sb3.append(str4);
            xh.a.c(aVar7, sb3.toString(), 6, false, 4, null);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl != null) {
                thM456exceptionOrNullimpl.printStackTrace();
                xh.a.c(xh.a.f75336a, MBAd.f40749a.c() + " --> initAd() --> 初始化异常 --> it = " + thM456exceptionOrNullimpl, 6, false, 4, null);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MBAd$initAd$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
