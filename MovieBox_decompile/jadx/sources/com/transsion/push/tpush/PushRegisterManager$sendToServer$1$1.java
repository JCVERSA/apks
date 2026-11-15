package com.transsion.push.tpush;

import com.tn.lib.net.bean.BaseDto;
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
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.tpush.PushRegisterManager$sendToServer$1$1", f = "PushRegisterManager.kt", l = {174}, m = "invokeSuspend")
final class PushRegisterManager$sendToServer$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final JSONObject $json;
    final String $regHash;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PushRegisterManager$sendToServer$1$1(JSONObject jSONObject, String str, Continuation<? super PushRegisterManager$sendToServer$1$1> continuation) {
        super(2, continuation);
        this.$json = jSONObject;
        this.$regHash = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PushRegisterManager$sendToServer$1$1 pushRegisterManager$sendToServer$1$1 = new PushRegisterManager$sendToServer$1$1(this.$json, this.$regHash, continuation);
        pushRegisterManager$sendToServer$1$1.L$0 = obj;
        return pushRegisterManager$sendToServer$1$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) throws JSONException {
        Object objM453constructorimpl;
        String str;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                JSONObject jSONObject = this.$json;
                String str2 = this.$regHash;
                Result.Companion companion = Result.INSTANCE;
                PushRegisterManager pushRegisterManager = PushRegisterManager.f48859a;
                h hVarY = pushRegisterManager.y();
                String strA = gg.a.f61067a.a();
                String string = jSONObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = pushRegisterManager.A(string);
                this.L$0 = str2;
                this.label = 1;
                obj = hVarY.a(strA, requestBodyA, this);
                if (obj == objF) {
                    return objF;
                }
                str = str2;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) this.L$0;
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                com.transsion.baselib.report.launch.b.f42221a.b().putString("push_ru", str);
                wf.a.C0922a.f(wf.a.f74274a, "PushRegisterManager", "onSuccess, retry:" + PushRegisterManager.f48865g, false, 4, null);
            } else {
                wf.a.C0922a.f(wf.a.f74274a, "PushRegisterManager", "onFailure code " + baseDto.getCode() + " retry:" + PushRegisterManager.f48865g, false, 4, null);
                PushRegisterManager.f48859a.M();
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        String str3 = this.$regHash;
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.f(wf.a.f74274a, "PushRegisterManager", "send error: " + thM456exceptionOrNullimpl.getMessage() + " retry:" + PushRegisterManager.f48865g + ",refresh:" + str3, false, 4, null);
            PushRegisterManager.f48859a.M();
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PushRegisterManager$sendToServer$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
