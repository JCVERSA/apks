package com.transsion.ad.ps.distribute;

import android.text.TextUtils;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.ps.PSReportUtil;
import com.transsion.ad.ps.model.PsLinkDto;
import com.transsion.ad.ps.model.RecommendInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;
import rh.f;

public final class PSDistributionRequestManager {

    public static final PSDistributionRequestManager f41136a = new PSDistributionRequestManager();

    private static final Lazy f41137b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PSDistributionRequestManager.f();
        }
    });

    private PSDistributionRequestManager() {
    }

    private final String b() {
        String simpleName = PSDistributionRequestManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final JSONObject c(int i10, int i11, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("bu", "mb");
        jSONObject.put("pageIndex", i10);
        jSONObject.put("pageSize", i11);
        jSONObject.put("recommendCode", "mb_apps");
        if (!TextUtils.isEmpty(str)) {
            jSONObject.put("pushModel", str);
        }
        for (Map.Entry entry : zh.a.INSTANCE.a(System.currentTimeMillis()).entrySet()) {
            jSONObject.put((String) entry.getKey(), entry.getValue());
        }
        return jSONObject;
    }

    private final zh.a e() {
        return (zh.a) f41137b.getValue();
    }

    public static final zh.a f() {
        return (zh.a) kg.c.f63982e.a().h(zh.a.class);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    public final Object d(int i10, int i11, String str, String str2, oh.a aVar, Continuation continuation) throws JSONException {
        PSDistributionRequestManager$getPsLinkListV2$1 pSDistributionRequestManager$getPsLinkListV2$1;
        oh.a aVar2;
        oh.a aVar3;
        String str3;
        Object objM453constructorimpl;
        Unit unit;
        List<RecommendInfo> data;
        List<RecommendInfo> data2;
        if (continuation instanceof PSDistributionRequestManager$getPsLinkListV2$1) {
            pSDistributionRequestManager$getPsLinkListV2$1 = (PSDistributionRequestManager$getPsLinkListV2$1) continuation;
            int i12 = pSDistributionRequestManager$getPsLinkListV2$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                pSDistributionRequestManager$getPsLinkListV2$1.label = i12 - Integer.MIN_VALUE;
            } else {
                pSDistributionRequestManager$getPsLinkListV2$1 = new PSDistributionRequestManager$getPsLinkListV2$1(this, continuation);
            }
        } else {
            pSDistributionRequestManager$getPsLinkListV2$1 = new PSDistributionRequestManager$getPsLinkListV2$1(this, continuation);
        }
        PSDistributionRequestManager$getPsLinkListV2$1 pSDistributionRequestManager$getPsLinkListV2$2 = pSDistributionRequestManager$getPsLinkListV2$1;
        Object objB = pSDistributionRequestManager$getPsLinkListV2$2.result;
        Object objF = IntrinsicsKt.f();
        int i13 = pSDistributionRequestManager$getPsLinkListV2$2.label;
        if (i13 == 0) {
            ResultKt.b(objB);
            JSONObject jSONObjectC = c(i10, i11, str2);
            f fVar = f.f71235a;
            String str4 = fVar.d() ? "https://feature-api.palmplaystore.com" : "https://test-feature-api.palmplaystore.com";
            if (fVar.a()) {
                xh.a.g(xh.a.f75336a, b() + " --> getPsLinkListBySlot() --> scene = " + str + " --> url = " + str4 + " --> jsonObject = " + jSONObjectC, 0, false, 6, null);
            }
            PSReportUtil.f41121a.d(PSReportUtil.PSRequestState.REQUEST_TRIGGER, null, "", "", str);
            try {
                Result.Companion companion = Result.INSTANCE;
                zh.a aVarE = e();
                mg.b.a aVar4 = mg.b.f66404a;
                String string = jSONObjectC.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar4.a(string);
                pSDistributionRequestManager$getPsLinkListV2$2.L$0 = str;
                aVar2 = aVar;
                try {
                    pSDistributionRequestManager$getPsLinkListV2$2.L$1 = aVar2;
                    pSDistributionRequestManager$getPsLinkListV2$2.label = 1;
                    objB = aVarE.b(requestBodyA, str4, pSDistributionRequestManager$getPsLinkListV2$2);
                    if (objB == objF) {
                        return objF;
                    }
                    aVar3 = aVar2;
                    str3 = str;
                } catch (Throwable th2) {
                    th = th2;
                    aVar3 = aVar2;
                    str3 = str;
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
                }
            } catch (Throwable th3) {
                th = th3;
                aVar2 = aVar;
            }
        } else {
            if (i13 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar3 = (oh.a) pSDistributionRequestManager$getPsLinkListV2$2.L$1;
            str3 = (String) pSDistributionRequestManager$getPsLinkListV2$2.L$0;
            try {
                ResultKt.b(objB);
            } catch (Throwable th4) {
                th = th4;
                Result.Companion companion3 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
            }
        }
        PsLinkDto psLinkDto = (PsLinkDto) objB;
        PSReportUtil.f41121a.d(PSReportUtil.PSRequestState.REQUEST_SUCCESS, (psLinkDto == null || (data2 = psLinkDto.getData()) == null) ? null : Boxing.d(data2.size()), "", "", str3);
        ArrayList arrayList = new ArrayList();
        if (psLinkDto != null && (data = psLinkDto.getData()) != null) {
            for (RecommendInfo recommendInfo : data) {
                if (zh.b.f76790a.n() || !TextUtils.isEmpty(recommendInfo.getGpLink())) {
                    arrayList.add(recommendInfo);
                }
            }
        }
        if (aVar3 != null) {
            aVar3.v(arrayList);
            unit = Unit.f64096a;
        } else {
            unit = null;
        }
        objM453constructorimpl = Result.m453constructorimpl(unit);
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            PSReportUtil.f41121a.d(PSReportUtil.PSRequestState.REQUEST_FAIL, null, thM456exceptionOrNullimpl.getMessage(), "", str3);
            if (aVar3 != null) {
                aVar3.e(new TAdErrorCode(0, String.valueOf(thM456exceptionOrNullimpl.getMessage())), null);
            }
        }
        return Unit.f64096a;
    }
}
