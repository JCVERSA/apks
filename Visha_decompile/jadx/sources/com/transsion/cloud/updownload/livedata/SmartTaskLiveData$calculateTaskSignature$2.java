package com.transsion.cloud.updownload.livedata;

import android.util.Log;
import com.transsion.cloudcore.db.CloudTaskEntity;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.ye9;
import defpackage.z45;
import defpackage.zfb;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;", "<anonymous>", "(Lnk1;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.updownload.livedata.SmartTaskLiveData$calculateTaskSignature$2", f = "SmartTaskLiveData.kt", l = {}, m = "invokeSuspend")
public final class SmartTaskLiveData$calculateTaskSignature$2 extends SuspendLambda implements s74 {
    final List<CloudTaskEntity> $taskList;
    private Object L$0;
    int label;
    final SmartTaskLiveData this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SmartTaskLiveData$calculateTaskSignature$2(List<? extends CloudTaskEntity> list, SmartTaskLiveData smartTaskLiveData, wh1<? super SmartTaskLiveData$calculateTaskSignature$2> wh1Var) {
        super(2, wh1Var);
        this.$taskList = list;
        this.this$0 = smartTaskLiveData;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        SmartTaskLiveData$calculateTaskSignature$2 smartTaskLiveData$calculateTaskSignature$2 = new SmartTaskLiveData$calculateTaskSignature$2(this.$taskList, this.this$0, wh1Var);
        smartTaskLiveData$calculateTaskSignature$2.L$0 = obj;
        return smartTaskLiveData$calculateTaskSignature$2;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super SmartTaskLiveData.b> wh1Var) {
        return ((SmartTaskLiveData$calculateTaskSignature$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        nk1 nk1Var = (nk1) this.L$0;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Ref$LongRef ref$LongRef = new Ref$LongRef();
        try {
            List<CloudTaskEntity> list = this.$taskList;
            SmartTaskLiveData smartTaskLiveData = this.this$0;
            for (CloudTaskEntity cloudTaskEntity : list) {
                d.h(nk1Var);
                String str = cloudTaskEntity.taskId;
                y45.i(str, "taskId");
                if (str.length() > 0) {
                    linkedHashSet.add(str);
                    linkedHashMap.put(str, new Pair(mk0.a(cloudTaskEntity.isCloudFileExist), mk0.a(cloudTaskEntity.isLocalFileExist)));
                    long j = cloudTaskEntity.updateTime;
                    if (j > ref$LongRef.element) {
                        ref$LongRef.element = j;
                    }
                } else {
                    mk0.b(Log.w("visha_cloud_SmartTaskLiveData", smartTaskLiveData.taskType.name() + " Found task with empty taskId, skipping"));
                }
            }
            return new SmartTaskLiveData.b(linkedHashSet, linkedHashMap, ref$LongRef.element);
        } catch (CancellationException unused) {
            Log.d("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " Task signature calculation cancelled");
            return new SmartTaskLiveData.b(ye9.f(), kotlin.collections.a.l(), 0L);
        } catch (Exception e) {
            Log.e("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " Error calculating task signature: " + e.getMessage());
            return new SmartTaskLiveData.b(ye9.f(), kotlin.collections.a.l(), 0L);
        }
    }
}
