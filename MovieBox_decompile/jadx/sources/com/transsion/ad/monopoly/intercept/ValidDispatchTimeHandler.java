package com.transsion.ad.monopoly.intercept;

import ci.p;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.text.StringsKt;

public final class ValidDispatchTimeHandler extends a {
    /* JADX WARN: Code duplicated, block: B:58:0x012d  */
    /* JADX WARN: Code duplicated, block: B:60:0x013d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:78:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Code duplicated, block: B:80:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:? A[RETURN, SYNTHETIC] */
    @Override
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        ValidDispatchTimeHandler$doHandle$1 validDispatchTimeHandler$doHandle$1;
        AdPlansHitResponse adPlansHitResponse;
        a aVarC;
        AdPlansHitResponse adPlansHitResponse2;
        AdPlansHitResponse adPlansHitResponse3;
        String str2 = str;
        MbAdDbPlans mbAdDbPlans2 = mbAdDbPlans;
        Map map2 = map;
        if (continuation instanceof ValidDispatchTimeHandler$doHandle$1) {
            validDispatchTimeHandler$doHandle$1 = (ValidDispatchTimeHandler$doHandle$1) continuation;
            int i10 = validDispatchTimeHandler$doHandle$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                validDispatchTimeHandler$doHandle$1.label = i10 - Integer.MIN_VALUE;
            } else {
                validDispatchTimeHandler$doHandle$1 = new ValidDispatchTimeHandler$doHandle$1(this, continuation);
            }
        } else {
            validDispatchTimeHandler$doHandle$1 = new ValidDispatchTimeHandler$doHandle$1(this, continuation);
        }
        Object objB = validDispatchTimeHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = validDispatchTimeHandler$doHandle$1.label;
        if (i11 == 0) {
            ResultKt.b(objB);
            long jD = p.f16947a.d();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss", Locale.getDefault());
            String dispatchTimeStart = mbAdDbPlans2 != null ? mbAdDbPlans.getDispatchTimeStart() : null;
            String dispatchTimeEnd = mbAdDbPlans2 != null ? mbAdDbPlans.getDispatchTimeEnd() : null;
            if (dispatchTimeStart == null || StringsKt.q0(dispatchTimeStart) || dispatchTimeEnd == null || StringsKt.q0(dispatchTimeEnd)) {
                a aVarC2 = c();
                if (aVarC2 != null) {
                    validDispatchTimeHandler$doHandle$1.label = 1;
                    objB = aVarC2.b(str2, mbAdDbPlans2, map2, validDispatchTimeHandler$doHandle$1);
                    if (objB == objF) {
                        return objF;
                    }
                    adPlansHitResponse = (AdPlansHitResponse) objB;
                    if (adPlansHitResponse != null) {
                        return adPlansHitResponse;
                    }
                }
                return e();
            }
            try {
                Calendar calendar = Calendar.getInstance();
                Date time = calendar.getTime();
                Calendar calendar2 = Calendar.getInstance();
                Date date = simpleDateFormat.parse(dispatchTimeStart);
                if (date == null) {
                    date = time;
                }
                calendar2.setTime(date);
                calendar2.set(1, calendar.get(1));
                calendar2.set(2, calendar.get(2));
                calendar2.set(5, calendar.get(5));
                long timeInMillis = calendar2.getTimeInMillis();
                Calendar calendar3 = Calendar.getInstance();
                Date date2 = simpleDateFormat.parse(dispatchTimeEnd);
                if (date2 == null) {
                    date2 = time;
                }
                calendar3.setTime(date2);
                calendar3.set(1, calendar.get(1));
                calendar3.set(2, calendar.get(2));
                calendar3.set(5, calendar.get(5));
                long timeInMillis2 = calendar3.getTimeInMillis();
                if (timeInMillis > jD || jD > timeInMillis2) {
                    return new AdPlansHitResponse(false, "当前不在展示时间内--时间段");
                }
                a aVarC3 = c();
                if (aVarC3 != null) {
                    validDispatchTimeHandler$doHandle$1.L$0 = str2;
                    validDispatchTimeHandler$doHandle$1.L$1 = mbAdDbPlans2;
                    validDispatchTimeHandler$doHandle$1.L$2 = map2;
                    validDispatchTimeHandler$doHandle$1.label = 2;
                    objB = aVarC3.b(str2, mbAdDbPlans2, map2, validDispatchTimeHandler$doHandle$1);
                    if (objB == objF) {
                        return objF;
                    }
                    adPlansHitResponse2 = (AdPlansHitResponse) objB;
                    if (adPlansHitResponse2 != null) {
                        return adPlansHitResponse2;
                    }
                }
                return e();
            } catch (ParseException unused) {
                aVarC = c();
                if (aVarC != null) {
                    validDispatchTimeHandler$doHandle$1.L$0 = null;
                    validDispatchTimeHandler$doHandle$1.L$1 = null;
                    validDispatchTimeHandler$doHandle$1.L$2 = null;
                    validDispatchTimeHandler$doHandle$1.label = 3;
                    objB = aVarC.b(str2, mbAdDbPlans2, map2, validDispatchTimeHandler$doHandle$1);
                    if (objB == objF) {
                        return objF;
                    }
                    adPlansHitResponse3 = (AdPlansHitResponse) objB;
                    if (adPlansHitResponse3 != null) {
                        return adPlansHitResponse3;
                    }
                }
                return e();
            }
        }
        if (i11 == 1) {
            ResultKt.b(objB);
            adPlansHitResponse = (AdPlansHitResponse) objB;
            if (adPlansHitResponse != null) {
                return adPlansHitResponse;
            }
            return e();
        }
        if (i11 == 2) {
            Map map3 = (Map) validDispatchTimeHandler$doHandle$1.L$2;
            mbAdDbPlans2 = (MbAdDbPlans) validDispatchTimeHandler$doHandle$1.L$1;
            String str3 = (String) validDispatchTimeHandler$doHandle$1.L$0;
            try {
                ResultKt.b(objB);
                adPlansHitResponse2 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse2 != null) {
                    return adPlansHitResponse2;
                }
                return e();
            } catch (ParseException unused2) {
                map2 = map3;
                str2 = str3;
                aVarC = c();
                if (aVarC != null) {
                    validDispatchTimeHandler$doHandle$1.L$0 = null;
                    validDispatchTimeHandler$doHandle$1.L$1 = null;
                    validDispatchTimeHandler$doHandle$1.L$2 = null;
                    validDispatchTimeHandler$doHandle$1.label = 3;
                    objB = aVarC.b(str2, mbAdDbPlans2, map2, validDispatchTimeHandler$doHandle$1);
                    if (objB == objF) {
                        return objF;
                    }
                    adPlansHitResponse3 = (AdPlansHitResponse) objB;
                    if (adPlansHitResponse3 != null) {
                        return adPlansHitResponse3;
                    }
                }
                return e();
            }
        }
        if (i11 != 3) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objB);
        adPlansHitResponse3 = (AdPlansHitResponse) objB;
        if (adPlansHitResponse3 != null) {
            return adPlansHitResponse3;
        }
        return e();
    }
}
