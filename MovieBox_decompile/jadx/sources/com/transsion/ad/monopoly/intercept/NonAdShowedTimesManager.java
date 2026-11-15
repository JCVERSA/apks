package com.transsion.ad.monopoly.intercept;

import android.app.Application;
import android.text.TextUtils;
import ci.p;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlansTransform;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class NonAdShowedTimesManager {

    public static final NonAdShowedTimesManager f41098a = new NonAdShowedTimesManager();

    private static final ConcurrentHashMap f41099b = new ConcurrentHashMap();

    private NonAdShowedTimesManager() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(MbAdDbPlans mbAdDbPlans, Continuation continuation) {
        NonAdShowedTimesManager$getShowedTimes$1 nonAdShowedTimesManager$getShowedTimes$1;
        Integer showedTimes;
        if (continuation instanceof NonAdShowedTimesManager$getShowedTimes$1) {
            nonAdShowedTimesManager$getShowedTimes$1 = (NonAdShowedTimesManager$getShowedTimes$1) continuation;
            int i10 = nonAdShowedTimesManager$getShowedTimes$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                nonAdShowedTimesManager$getShowedTimes$1.label = i10 - Integer.MIN_VALUE;
            } else {
                nonAdShowedTimesManager$getShowedTimes$1 = new NonAdShowedTimesManager$getShowedTimes$1(this, continuation);
            }
        } else {
            nonAdShowedTimesManager$getShowedTimes$1 = new NonAdShowedTimesManager$getShowedTimes$1(this, continuation);
        }
        Object objF = nonAdShowedTimesManager$getShowedTimes$1.result;
        Object objF2 = IntrinsicsKt.f();
        int i11 = nonAdShowedTimesManager$getShowedTimes$1.label;
        if (i11 == 0) {
            ResultKt.b(objF);
            MbAdDatabase.Companion mVar = MbAdDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            uh.a aVarY0 = mVar.b(applicationA).y0();
            String id2 = mbAdDbPlans != null ? mbAdDbPlans.getId() : null;
            nonAdShowedTimesManager$getShowedTimes$1.L$0 = mbAdDbPlans;
            nonAdShowedTimesManager$getShowedTimes$1.label = 1;
            objF = aVarY0.f(id2, nonAdShowedTimesManager$getShowedTimes$1);
            if (objF == objF2) {
                return objF2;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mbAdDbPlans = (MbAdDbPlans) nonAdShowedTimesManager$getShowedTimes$1.L$0;
            ResultKt.b(objF);
        }
        MbAdDbPlans mbAdDbPlans2 = (MbAdDbPlans) objF;
        int iIntValue = 0;
        if (mbAdDbPlans != null) {
            ConcurrentHashMap concurrentHashMap = f41099b;
            ShowedTimesMemoryBean showedTimesMemoryBean = (ShowedTimesMemoryBean) concurrentHashMap.get(mbAdDbPlans.getId());
            if (showedTimesMemoryBean == null) {
                String showDate = mbAdDbPlans2 != null ? mbAdDbPlans2.getShowDate() : null;
                p pVar = p.f16947a;
                if (TextUtils.equals(showDate, pVar.c())) {
                    String id3 = mbAdDbPlans.getId();
                    Integer showedTimes2 = mbAdDbPlans.getShowedTimes();
                    concurrentHashMap.put(id3, new ShowedTimesMemoryBean(showedTimes2 != null ? showedTimes2.intValue() : 0, pVar.c()));
                    if (mbAdDbPlans2 != null && (showedTimes = mbAdDbPlans2.getShowedTimes()) != null) {
                        iIntValue = showedTimes.intValue();
                    }
                } else {
                    concurrentHashMap.put(mbAdDbPlans.getId(), new ShowedTimesMemoryBean(0, pVar.c()));
                }
            } else if (TextUtils.equals(showedTimesMemoryBean.getDate(), p.f16947a.c())) {
                iIntValue = showedTimesMemoryBean.getShowedTimes();
            }
        }
        return Boxing.d(iIntValue);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0051  */
    /* JADX WARN: Code duplicated, block: B:13:0x0061  */
    /* JADX WARN: Code duplicated, block: B:15:0x0067  */
    /* JADX WARN: Code duplicated, block: B:16:0x0071  */
    /* JADX WARN: Code duplicated, block: B:19:0x0081  */
    /* JADX WARN: Code duplicated, block: B:21:0x0093  */
    public final void c(AdPlans adPlans) {
        String showDate;
        p pVar;
        Integer showedTimes;
        Integer numValueOf;
        ShowedTimesMemoryBean showedTimesMemoryBean;
        if (adPlans == null) {
            return;
        }
        MbAdDbPlans mbAdDbPlansA = AdPlansTransform.f41118a.a(adPlans);
        ConcurrentHashMap concurrentHashMap = f41099b;
        ShowedTimesMemoryBean showedTimesMemoryBean2 = (ShowedTimesMemoryBean) concurrentHashMap.get(mbAdDbPlansA.getId());
        if (showedTimesMemoryBean2 != null) {
            String date = showedTimesMemoryBean2.getDate();
            p pVar2 = p.f16947a;
            if (TextUtils.equals(date, pVar2.c())) {
                showedTimesMemoryBean2.setShowedTimes(showedTimesMemoryBean2.getShowedTimes() + 1);
                showedTimesMemoryBean = (ShowedTimesMemoryBean) concurrentHashMap.put(mbAdDbPlansA.getId(), showedTimesMemoryBean2);
            } else {
                showedTimesMemoryBean = (ShowedTimesMemoryBean) concurrentHashMap.put(mbAdDbPlansA.getId(), new ShowedTimesMemoryBean(1, pVar2.c()));
            }
            if (showedTimesMemoryBean == null) {
                showDate = mbAdDbPlansA.getShowDate();
                pVar = p.f16947a;
                if (TextUtils.equals(showDate, pVar.c())) {
                    showedTimes = mbAdDbPlansA.getShowedTimes();
                    if (showedTimes != null) {
                        numValueOf = Integer.valueOf(showedTimes.intValue() + 1);
                    } else {
                        numValueOf = null;
                    }
                    mbAdDbPlansA.setShowedTimes(numValueOf);
                    String id2 = mbAdDbPlansA.getId();
                    Integer showedTimes2 = mbAdDbPlansA.getShowedTimes();
                }
            }
        } else {
            showDate = mbAdDbPlansA.getShowDate();
            pVar = p.f16947a;
            if (TextUtils.equals(showDate, pVar.c())) {
                showedTimes = mbAdDbPlansA.getShowedTimes();
                if (showedTimes != null) {
                    numValueOf = Integer.valueOf(showedTimes.intValue() + 1);
                } else {
                    numValueOf = null;
                }
                mbAdDbPlansA.setShowedTimes(numValueOf);
                String id3 = mbAdDbPlansA.getId();
                Integer showedTimes3 = mbAdDbPlansA.getShowedTimes();
            }
        }
        k.d(o0.a(y0.b()), null, null, new NonAdShowedTimesManager$saveShowedTimes$3(mbAdDbPlansA, adPlans, null), 3, null);
    }
}
