package com.transsion.rewardscenter.utils;

import com.cloud.tmc.integration.net.UrlKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.rewardscenterapi.ClaimReceiverRequest;
import com.transsion.rewardscenterapi.PhoneInfo;
import java.util.List;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class RewardsCenterApiHelper {

    public static final RewardsCenterApiHelper f49285a = new RewardsCenterApiHelper();

    private static final Lazy f49286b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RewardsCenterApiHelper.h();
        }
    });

    public static final int f49287c = 8;

    private RewardsCenterApiHelper() {
    }

    public static final xo.a h() {
        return (xo.a) kg.c.f63982e.a().h(xo.a.class);
    }

    private final RequestBody i(Function1 function1) {
        RequestBody.Companion companion = RequestBody.INSTANCE;
        JSONObject jSONObject = new JSONObject();
        function1.invoke(jSONObject);
        String string = jSONObject.toString();
        Intrinsics.g(string, "toString(...)");
        return companion.create(string, MediaType.INSTANCE.parse("application/json"));
    }

    public static final Unit k(JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        buildBody.put(UrlKt.KEY_MINI_GAID, tg.b.f72740a.i());
        return Unit.f64096a;
    }

    public static final Unit m(String str, JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        buildBody.put("drawResultId", str);
        return Unit.f64096a;
    }

    public static Object o(RewardsCenterApiHelper rewardsCenterApiHelper, Function2 function2, Function1 function1, Continuation continuation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function2 = null;
        }
        return rewardsCenterApiHelper.n(function2, function1, continuation);
    }

    private final xo.a p() {
        return (xo.a) f49286b.getValue();
    }

    public static final Unit r(String str, JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        buildBody.put("activityId", str);
        buildBody.put("num", 1);
        return Unit.f64096a;
    }

    public static final Unit t(String str, JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        buildBody.put("skuId", str);
        buildBody.put("clientOrderId", UUID.randomUUID().toString());
        return Unit.f64096a;
    }

    public static final Unit v(String str, JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        if (str == null) {
            str = "";
        }
        buildBody.put("taskId", str);
        buildBody.put(UrlKt.KEY_MINI_GAID, tg.b.f72740a.i());
        return Unit.f64096a;
    }

    public static final Unit x(ClaimReceiverRequest claimReceiverRequest, JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        Object drawResultId = claimReceiverRequest.getDrawResultId();
        if (drawResultId == null) {
            drawResultId = "";
        }
        buildBody.put("drawResultId", drawResultId);
        Object receiverName = claimReceiverRequest.getReceiverName();
        if (receiverName == null) {
            receiverName = "";
        }
        buildBody.put("receiverName", receiverName);
        JSONArray jSONArray = new JSONArray();
        List<PhoneInfo> phone = claimReceiverRequest.getPhone();
        if (phone != null) {
            for (PhoneInfo phoneInfo : phone) {
                JSONObject jSONObject = new JSONObject();
                String countryNo = phoneInfo.getCountryNo();
                if (countryNo == null) {
                    countryNo = "";
                }
                jSONObject.put("countryNo", countryNo);
                String number = phoneInfo.getNumber();
                if (number == null) {
                    number = "";
                }
                jSONObject.put("number", number);
                String countryCode = phoneInfo.getCountryCode();
                if (countryCode == null) {
                    countryCode = "";
                }
                jSONObject.put("countryCode", countryCode);
                jSONArray.put(jSONObject);
            }
        }
        Unit unit = Unit.f64096a;
        buildBody.put("phone", jSONArray);
        Object address = claimReceiverRequest.getAddress();
        buildBody.put(PlaceTypes.ADDRESS, address != null ? address : "");
        String email = claimReceiverRequest.getEmail();
        if (email != null && !StringsKt.q0(email)) {
            buildBody.put("email", claimReceiverRequest.getEmail());
        }
        String postCode = claimReceiverRequest.getPostCode();
        if (postCode != null && !StringsKt.q0(postCode)) {
            buildBody.put("postCode", claimReceiverRequest.getPostCode());
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object j(Function2 function2, Function1 function1, Continuation continuation) {
        RewardsCenterApiHelper$checkDadaSetDefault$1 rewardsCenterApiHelper$checkDadaSetDefault$1;
        Object objM453constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$checkDadaSetDefault$1) {
            rewardsCenterApiHelper$checkDadaSetDefault$1 = (RewardsCenterApiHelper$checkDadaSetDefault$1) continuation;
            int i10 = rewardsCenterApiHelper$checkDadaSetDefault$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$checkDadaSetDefault$1.label = i10 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$checkDadaSetDefault$1 = new RewardsCenterApiHelper$checkDadaSetDefault$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$checkDadaSetDefault$1 = new RewardsCenterApiHelper$checkDadaSetDefault$1(this, continuation);
        }
        RewardsCenterApiHelper$checkDadaSetDefault$1 rewardsCenterApiHelper$checkDadaSetDefault$2 = rewardsCenterApiHelper$checkDadaSetDefault$1;
        Object objA = rewardsCenterApiHelper$checkDadaSetDefault$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = rewardsCenterApiHelper$checkDadaSetDefault$2.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objA);
                RequestBody requestBodyI = i(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.k((JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                xo.a aVarP = p();
                rewardsCenterApiHelper$checkDadaSetDefault$2.L$0 = function2;
                rewardsCenterApiHelper$checkDadaSetDefault$2.L$1 = function1;
                rewardsCenterApiHelper$checkDadaSetDefault$2.label = 1;
                objA = xo.a.C0943a.a(aVarP, null, requestBodyI, rewardsCenterApiHelper$checkDadaSetDefault$2, 1, null);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$checkDadaSetDefault$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$checkDadaSetDefault$2.L$0;
                ResultKt.b(objA);
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) objA);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM453constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM456exceptionOrNullimpl.getMessage());
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object l(final String str, Function2 function2, Function1 function1, Continuation continuation) {
        RewardsCenterApiHelper$claimReward$1 rewardsCenterApiHelper$claimReward$1;
        Object objM453constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$claimReward$1) {
            rewardsCenterApiHelper$claimReward$1 = (RewardsCenterApiHelper$claimReward$1) continuation;
            int i10 = rewardsCenterApiHelper$claimReward$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$claimReward$1.label = i10 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$claimReward$1 = new RewardsCenterApiHelper$claimReward$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$claimReward$1 = new RewardsCenterApiHelper$claimReward$1(this, continuation);
        }
        RewardsCenterApiHelper$claimReward$1 rewardsCenterApiHelper$claimReward$2 = rewardsCenterApiHelper$claimReward$1;
        Object objB = rewardsCenterApiHelper$claimReward$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = rewardsCenterApiHelper$claimReward$2.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objB);
                RequestBody requestBodyI = i(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.m(str, (JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                xo.a aVarP = p();
                rewardsCenterApiHelper$claimReward$2.L$0 = function2;
                rewardsCenterApiHelper$claimReward$2.L$1 = function1;
                rewardsCenterApiHelper$claimReward$2.label = 1;
                objB = xo.a.C0943a.b(aVarP, null, requestBodyI, rewardsCenterApiHelper$claimReward$2, 1, null);
                if (objB == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$claimReward$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$claimReward$2.L$0;
                ResultKt.b(objB);
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) objB);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM453constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM456exceptionOrNullimpl.getMessage());
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object n(Function2 function2, Function1 function1, Continuation continuation) {
        RewardsCenterApiHelper$fetchAdTaskInfo$1 rewardsCenterApiHelper$fetchAdTaskInfo$1;
        Object objM453constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$fetchAdTaskInfo$1) {
            rewardsCenterApiHelper$fetchAdTaskInfo$1 = (RewardsCenterApiHelper$fetchAdTaskInfo$1) continuation;
            int i10 = rewardsCenterApiHelper$fetchAdTaskInfo$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$fetchAdTaskInfo$1.label = i10 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$fetchAdTaskInfo$1 = new RewardsCenterApiHelper$fetchAdTaskInfo$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$fetchAdTaskInfo$1 = new RewardsCenterApiHelper$fetchAdTaskInfo$1(this, continuation);
        }
        Object objC = rewardsCenterApiHelper$fetchAdTaskInfo$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = rewardsCenterApiHelper$fetchAdTaskInfo$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objC);
                Result.Companion companion = Result.INSTANCE;
                xo.a aVarP = p();
                rewardsCenterApiHelper$fetchAdTaskInfo$1.L$0 = function2;
                rewardsCenterApiHelper$fetchAdTaskInfo$1.L$1 = function1;
                rewardsCenterApiHelper$fetchAdTaskInfo$1.label = 1;
                objC = xo.a.C0943a.c(aVarP, null, rewardsCenterApiHelper$fetchAdTaskInfo$1, 1, null);
                if (objC == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$fetchAdTaskInfo$1.L$1;
                function2 = (Function2) rewardsCenterApiHelper$fetchAdTaskInfo$1.L$0;
                ResultKt.b(objC);
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) objC);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM453constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM456exceptionOrNullimpl.getMessage());
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object q(final String str, Function2 function2, Function1 function1, Continuation continuation) {
        RewardsCenterApiHelper$redeemLottery$1 rewardsCenterApiHelper$redeemLottery$1;
        Object objM453constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$redeemLottery$1) {
            rewardsCenterApiHelper$redeemLottery$1 = (RewardsCenterApiHelper$redeemLottery$1) continuation;
            int i10 = rewardsCenterApiHelper$redeemLottery$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$redeemLottery$1.label = i10 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$redeemLottery$1 = new RewardsCenterApiHelper$redeemLottery$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$redeemLottery$1 = new RewardsCenterApiHelper$redeemLottery$1(this, continuation);
        }
        RewardsCenterApiHelper$redeemLottery$1 rewardsCenterApiHelper$redeemLottery$2 = rewardsCenterApiHelper$redeemLottery$1;
        Object objG = rewardsCenterApiHelper$redeemLottery$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = rewardsCenterApiHelper$redeemLottery$2.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objG);
                RequestBody requestBodyI = i(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.r(str, (JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                xo.a aVarP = p();
                rewardsCenterApiHelper$redeemLottery$2.L$0 = function2;
                rewardsCenterApiHelper$redeemLottery$2.L$1 = function1;
                rewardsCenterApiHelper$redeemLottery$2.label = 1;
                objG = xo.a.C0943a.g(aVarP, null, requestBodyI, rewardsCenterApiHelper$redeemLottery$2, 1, null);
                if (objG == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$redeemLottery$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$redeemLottery$2.L$0;
                ResultKt.b(objG);
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) objG);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM453constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM456exceptionOrNullimpl.getMessage());
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object s(final String str, Function2 function2, Function1 function1, Continuation continuation) {
        RewardsCenterApiHelper$redeemProduct$1 rewardsCenterApiHelper$redeemProduct$1;
        Object objM453constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$redeemProduct$1) {
            rewardsCenterApiHelper$redeemProduct$1 = (RewardsCenterApiHelper$redeemProduct$1) continuation;
            int i10 = rewardsCenterApiHelper$redeemProduct$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$redeemProduct$1.label = i10 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$redeemProduct$1 = new RewardsCenterApiHelper$redeemProduct$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$redeemProduct$1 = new RewardsCenterApiHelper$redeemProduct$1(this, continuation);
        }
        RewardsCenterApiHelper$redeemProduct$1 rewardsCenterApiHelper$redeemProduct$2 = rewardsCenterApiHelper$redeemProduct$1;
        Object objH = rewardsCenterApiHelper$redeemProduct$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = rewardsCenterApiHelper$redeemProduct$2.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objH);
                RequestBody requestBodyI = i(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.t(str, (JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                xo.a aVarP = p();
                rewardsCenterApiHelper$redeemProduct$2.L$0 = function2;
                rewardsCenterApiHelper$redeemProduct$2.L$1 = function1;
                rewardsCenterApiHelper$redeemProduct$2.label = 1;
                objH = xo.a.C0943a.h(aVarP, null, requestBodyI, rewardsCenterApiHelper$redeemProduct$2, 1, null);
                if (objH == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$redeemProduct$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$redeemProduct$2.L$0;
                ResultKt.b(objH);
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) objH);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM453constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM456exceptionOrNullimpl.getMessage());
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object u(final String str, Function2 function2, Function1 function1, Continuation continuation) {
        RewardsCenterApiHelper$startClaim$1 rewardsCenterApiHelper$startClaim$1;
        Object objM453constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$startClaim$1) {
            rewardsCenterApiHelper$startClaim$1 = (RewardsCenterApiHelper$startClaim$1) continuation;
            int i10 = rewardsCenterApiHelper$startClaim$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$startClaim$1.label = i10 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$startClaim$1 = new RewardsCenterApiHelper$startClaim$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$startClaim$1 = new RewardsCenterApiHelper$startClaim$1(this, continuation);
        }
        RewardsCenterApiHelper$startClaim$1 rewardsCenterApiHelper$startClaim$2 = rewardsCenterApiHelper$startClaim$1;
        Object objF = rewardsCenterApiHelper$startClaim$2.result;
        Object objF2 = IntrinsicsKt.f();
        int i11 = rewardsCenterApiHelper$startClaim$2.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objF);
                RequestBody requestBodyI = i(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.v(str, (JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                xo.a aVarP = p();
                rewardsCenterApiHelper$startClaim$2.L$0 = function2;
                rewardsCenterApiHelper$startClaim$2.L$1 = function1;
                rewardsCenterApiHelper$startClaim$2.label = 1;
                objF = xo.a.C0943a.f(aVarP, null, requestBodyI, rewardsCenterApiHelper$startClaim$2, 1, null);
                if (objF == objF2) {
                    return objF2;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$startClaim$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$startClaim$2.L$0;
                ResultKt.b(objF);
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) objF);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM453constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            function2.invoke(null, thM456exceptionOrNullimpl.getMessage());
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object w(final ClaimReceiverRequest claimReceiverRequest, Function2 function2, Function1 function1, Continuation continuation) {
        RewardsCenterApiHelper$submitClaimReceiverInfo$1 rewardsCenterApiHelper$submitClaimReceiverInfo$1;
        Object objM453constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$submitClaimReceiverInfo$1) {
            rewardsCenterApiHelper$submitClaimReceiverInfo$1 = (RewardsCenterApiHelper$submitClaimReceiverInfo$1) continuation;
            int i10 = rewardsCenterApiHelper$submitClaimReceiverInfo$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$submitClaimReceiverInfo$1.label = i10 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$submitClaimReceiverInfo$1 = new RewardsCenterApiHelper$submitClaimReceiverInfo$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$submitClaimReceiverInfo$1 = new RewardsCenterApiHelper$submitClaimReceiverInfo$1(this, continuation);
        }
        RewardsCenterApiHelper$submitClaimReceiverInfo$1 rewardsCenterApiHelper$submitClaimReceiverInfo$2 = rewardsCenterApiHelper$submitClaimReceiverInfo$1;
        Object objI = rewardsCenterApiHelper$submitClaimReceiverInfo$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = rewardsCenterApiHelper$submitClaimReceiverInfo$2.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objI);
                RequestBody requestBodyI = i(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.x(claimReceiverRequest, (JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                xo.a aVarP = p();
                rewardsCenterApiHelper$submitClaimReceiverInfo$2.L$0 = function2;
                rewardsCenterApiHelper$submitClaimReceiverInfo$2.L$1 = function1;
                rewardsCenterApiHelper$submitClaimReceiverInfo$2.label = 1;
                objI = xo.a.C0943a.i(aVarP, null, requestBodyI, rewardsCenterApiHelper$submitClaimReceiverInfo$2, 1, null);
                if (objI == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$submitClaimReceiverInfo$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$submitClaimReceiverInfo$2.L$0;
                ResultKt.b(objI);
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) objI);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM453constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM456exceptionOrNullimpl.getMessage());
        }
        return Unit.f64096a;
    }
}
