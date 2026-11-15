package com.transsion.usercenter.me;

import com.tencent.mmkv.MMKV;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.usercenter.profile.bean.ZeroBody;
import com.transsion.usercenter.profile.bean.ZeroConfig;
import com.transsion.usercenter.profile.bean.ZeroInfo;
import com.transsion.usercenter.profile.bean.ZeroResponse;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.me.MeViewmodel$fetchPurchase$1", f = "MeViewmodel.kt", l = {211}, m = "invokeSuspend")
final class MeViewmodel$fetchPurchase$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private Object L$0;
    int label;
    final MeViewmodel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MeViewmodel$fetchPurchase$1(MeViewmodel meViewmodel, Continuation<? super MeViewmodel$fetchPurchase$1> continuation) {
        super(2, continuation);
        this.this$0 = meViewmodel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MeViewmodel$fetchPurchase$1 meViewmodel$fetchPurchase$1 = new MeViewmodel$fetchPurchase$1(this.this$0, continuation);
        meViewmodel$fetchPurchase$1.L$0 = obj;
        return meViewmodel$fetchPurchase$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        String upperCase;
        Object objA;
        MeViewmodel meViewmodel;
        String string;
        UserInfo userInfoI;
        UserInfo userInfoI2;
        List<ZeroInfo> listL;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                MeViewmodel meViewmodel2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                String string2 = TimeZone.getDefault().getID().toString();
                qx.a aVarB = meViewmodel2.B();
                String phone = (aVarB == null || (userInfoI2 = aVarB.i()) == null) ? null : userInfoI2.getPhone();
                qx.a aVarB2 = meViewmodel2.B();
                String userId = (aVarB2 == null || (userInfoI = aVarB2.i()) == null) ? null : userInfoI.getUserId();
                String strI = tg.b.f72740a.i();
                MMKV mmkvC = mg.a.f66402a.c();
                if (mmkvC == null || (string = mmkvC.getString("custom_local_iso", "")) == null) {
                    upperCase = null;
                } else {
                    upperCase = string.toUpperCase(Locale.ROOT);
                    Intrinsics.g(upperCase, "toUpperCase(...)");
                }
                mg.b.a aVar = mg.b.f66404a;
                String strJ = com.blankj.utilcode.util.o.j(new ZeroBody(upperCase == null ? "" : upperCase, phone, userId, strI, string2, 0, null, 96, null));
                Intrinsics.g(strJ, "toJson(...)");
                RequestBody requestBodyA = aVar.a(strJ);
                if (requestBodyA == null) {
                    return Unit.f64096a;
                }
                ZeroConfig zeroConfig = meViewmodel2.f54797e;
                String urlPath = zeroConfig != null ? zeroConfig.getUrlPath() : null;
                if (urlPath == null || urlPath.length() == 0) {
                    urlPath = "campaign/v1/freebuy/campaign/recent";
                }
                com.transsion.usercenter.profile.d dVarD = meViewmodel2.D();
                this.L$0 = meViewmodel2;
                this.label = 1;
                objA = dVarD.a(requestBodyA, urlPath, this);
                if (objA == objF) {
                    return objF;
                }
                meViewmodel = meViewmodel2;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                meViewmodel = (MeViewmodel) this.L$0;
                ResultKt.b(obj);
                objA = obj;
            }
            BaseDto baseDto = (BaseDto) objA;
            wf.a.C0922a.f(wf.a.f74274a, "MeViewmodel", "zero entrance:" + baseDto, false, 4, null);
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                meViewmodel.f54796d.clear();
                List list = meViewmodel.f54796d;
                ZeroResponse zeroResponse = (ZeroResponse) baseDto.getData();
                if (zeroResponse == null || (listL = zeroResponse.getItems()) == null) {
                    listL = CollectionsKt.l();
                }
                list.addAll(listL);
                meViewmodel.N();
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("error:");
            sb2.append(thM456exceptionOrNullimpl);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MeViewmodel$fetchPurchase$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
