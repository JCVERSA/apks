package com.transsion.ad.monopoly.intercept;

import android.text.TextUtils;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.mvel2.d;

public abstract class BaseAdSceneCtxExprHandler extends a {
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Code duplicated, block: B:86:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    static Object g(BaseAdSceneCtxExprHandler baseAdSceneCtxExprHandler, String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        BaseAdSceneCtxExprHandler$doHandle$1 baseAdSceneCtxExprHandler$doHandle$1;
        boolean zL;
        AdPlansHitResponse adPlansHitResponse;
        AdPlansHitResponse adPlansHitResponse2;
        AdPlansHitResponse adPlansHitResponse3;
        BaseAdSceneCtxExprHandler baseAdSceneCtxExprHandler2 = baseAdSceneCtxExprHandler;
        if (continuation instanceof BaseAdSceneCtxExprHandler$doHandle$1) {
            baseAdSceneCtxExprHandler$doHandle$1 = (BaseAdSceneCtxExprHandler$doHandle$1) continuation;
            int i10 = baseAdSceneCtxExprHandler$doHandle$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                baseAdSceneCtxExprHandler$doHandle$1.label = i10 - Integer.MIN_VALUE;
            } else {
                baseAdSceneCtxExprHandler$doHandle$1 = new BaseAdSceneCtxExprHandler$doHandle$1(baseAdSceneCtxExprHandler2, continuation);
            }
        } else {
            baseAdSceneCtxExprHandler$doHandle$1 = new BaseAdSceneCtxExprHandler$doHandle$1(baseAdSceneCtxExprHandler2, continuation);
        }
        Object objB = baseAdSceneCtxExprHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = baseAdSceneCtxExprHandler$doHandle$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                baseAdSceneCtxExprHandler2 = (BaseAdSceneCtxExprHandler) baseAdSceneCtxExprHandler$doHandle$1.L$0;
                ResultKt.b(objB);
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
                return baseAdSceneCtxExprHandler2.e();
            }
            if (i11 == 2) {
                baseAdSceneCtxExprHandler2 = (BaseAdSceneCtxExprHandler) baseAdSceneCtxExprHandler$doHandle$1.L$0;
                ResultKt.b(objB);
                adPlansHitResponse2 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse2 != null) {
                    return adPlansHitResponse2;
                }
                return baseAdSceneCtxExprHandler2.e();
            }
            if (i11 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            baseAdSceneCtxExprHandler2 = (BaseAdSceneCtxExprHandler) baseAdSceneCtxExprHandler$doHandle$1.L$0;
            ResultKt.b(objB);
            adPlansHitResponse3 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse3 != null) {
                return adPlansHitResponse3;
            }
            return baseAdSceneCtxExprHandler2.e();
        }
        ResultKt.b(objB);
        if (map.isEmpty()) {
            a aVarC = baseAdSceneCtxExprHandler.c();
            if (aVarC != null) {
                baseAdSceneCtxExprHandler$doHandle$1.L$0 = baseAdSceneCtxExprHandler2;
                baseAdSceneCtxExprHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, baseAdSceneCtxExprHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
            }
            return baseAdSceneCtxExprHandler2.e();
        }
        String strH = baseAdSceneCtxExprHandler.h(str, mbAdDbPlans, map);
        if (strH == null) {
            strH = "";
        }
        if (TextUtils.isEmpty(strH)) {
            a aVarC2 = baseAdSceneCtxExprHandler.c();
            if (aVarC2 != null) {
                baseAdSceneCtxExprHandler$doHandle$1.L$0 = baseAdSceneCtxExprHandler2;
                baseAdSceneCtxExprHandler$doHandle$1.label = 2;
                objB = aVarC2.b(str, mbAdDbPlans, map, baseAdSceneCtxExprHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse2 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse2 != null) {
                    return adPlansHitResponse2;
                }
            }
            return baseAdSceneCtxExprHandler2.e();
        }
        Object obj = map.get("genre");
        String str2 = obj instanceof String ? (String) obj : null;
        if (TextUtils.isEmpty(str2) || ((str2 == null || !StringsKt.c0(str2, ", ", false, 2, null)) && (str2 == null || !StringsKt.c0(str2, ",", false, 2, null)))) {
            zL = baseAdSceneCtxExprHandler2.l(strH, map);
        } else {
            List<String> listS0 = StringsKt.S0(StringsKt.Q(str2, " ", "", false, 4, null), new String[]{","}, false, 0, 6, null);
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str3 : listS0) {
                linkedHashMap.putAll(map);
                linkedHashMap.put("genre", str3);
                if (baseAdSceneCtxExprHandler2.l(strH, linkedHashMap)) {
                    booleanRef.element = true;
                }
            }
            zL = booleanRef.element;
        }
        if (!baseAdSceneCtxExprHandler2.k(zL)) {
            return new AdPlansHitResponse(false, zL ? baseAdSceneCtxExprHandler.i() : baseAdSceneCtxExprHandler.j());
        }
        a aVarC3 = baseAdSceneCtxExprHandler.c();
        if (aVarC3 != null) {
            baseAdSceneCtxExprHandler$doHandle$1.L$0 = baseAdSceneCtxExprHandler2;
            baseAdSceneCtxExprHandler$doHandle$1.label = 3;
            objB = aVarC3.b(str, mbAdDbPlans, map, baseAdSceneCtxExprHandler$doHandle$1);
            if (objB == objF) {
                return objF;
            }
            adPlansHitResponse3 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse3 != null) {
                return adPlansHitResponse3;
            }
        }
        return baseAdSceneCtxExprHandler2.e();
    }

    private final boolean l(String str, Map map) {
        Object objM453constructorimpl;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Map mapW = MapsKt.w(map);
            Iterator f64466a = Regex.findAll$default(new Regex("\\b([a-zA-Z_][a-zA-Z0-9_]*)\\b"), str, 0, 2, null).getF64466a();
            while (f64466a.hasNext()) {
                String str2 = (String) ((MatchResult) f64466a.next()).a().get(1);
                if (!mapW.containsKey(str2)) {
                    mapW.put(str2, null);
                }
            }
            Object objN = d.n(str, mapW);
            Intrinsics.f(objN, "null cannot be cast to non-null type kotlin.Boolean");
            Boolean bool = (Boolean) objN;
            bool.booleanValue();
            objM453constructorimpl = Result.m453constructorimpl(bool);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.f74274a.i("sampler", "Eval --> safeEval() --> it = " + thM456exceptionOrNullimpl + " --> rule = " + str + " --> safeVars = " + map, true);
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    @Override
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        return g(this, str, mbAdDbPlans, map, continuation);
    }

    public abstract String h(String str, MbAdDbPlans mbAdDbPlans, Map map);

    public abstract String i();

    public abstract String j();

    public abstract boolean k(boolean z10);
}
