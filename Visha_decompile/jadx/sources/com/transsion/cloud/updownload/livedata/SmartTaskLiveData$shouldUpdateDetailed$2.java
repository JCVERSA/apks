package com.transsion.cloud.updownload.livedata;

import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloudcore.db.CloudTaskEntity;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)Z"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.updownload.livedata.SmartTaskLiveData$shouldUpdateDetailed$2", f = "SmartTaskLiveData.kt", l = {148}, m = "invokeSuspend")
public final class SmartTaskLiveData$shouldUpdateDetailed$2 extends SuspendLambda implements s74 {
    final List<CloudTaskEntity> $newList;
    int label;
    final SmartTaskLiveData this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SmartTaskLiveData$shouldUpdateDetailed$2(List<? extends CloudTaskEntity> list, SmartTaskLiveData smartTaskLiveData, wh1<? super SmartTaskLiveData$shouldUpdateDetailed$2> wh1Var) {
        super(2, wh1Var);
        this.$newList = list;
        this.this$0 = smartTaskLiveData;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new SmartTaskLiveData$shouldUpdateDetailed$2(this.$newList, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Boolean> wh1Var) {
        return ((SmartTaskLiveData$shouldUpdateDetailed$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        boolean z = false;
        boolean z2 = true;
        try {
            if (i == 0) {
                c.b(obj);
                List<CloudTaskEntity> list = this.$newList;
                if (list != null && !list.isEmpty()) {
                    SmartTaskLiveData smartTaskLiveData = this.this$0;
                    List<CloudTaskEntity> list2 = this.$newList;
                    this.label = 1;
                    obj = smartTaskLiveData.o(list2, this);
                    if (obj == objF) {
                        return objF;
                    }
                } else if (this.this$0.lastCount > 0) {
                    Log.d("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " Task list became empty");
                    z = true;
                }
                z2 = z;
                return mk0.a(z2);
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            SmartTaskLiveData.b bVar = (SmartTaskLiveData.b) obj;
            SmartTaskLiveData.b bVar2 = this.this$0.lastSignature;
            if (bVar2 == null) {
                LogUtils.j("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " No previous signature, should update");
            } else if (!y45.e(bVar.c(), bVar2.c())) {
                LogUtils.j("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " Task IDs combination changed");
            } else {
                if (y45.e(bVar.a(), bVar2.a())) {
                    if (bVar.b() != bVar2.b()) {
                        LogUtils.j("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " Latest update time changed from " + bVar2.b() + " to " + bVar.b());
                    }
                    z2 = z;
                    return mk0.a(z2);
                }
                LogUtils.j("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " File exist status changed");
            }
            z = true;
            z2 = z;
        } catch (CancellationException unused) {
            Log.e("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " Detailed update check cancelled");
        } catch (Exception e) {
            Log.e("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " Error in detailed update check: " + e.getMessage());
        }
        return mk0.a(z2);
    }
}
