package com.transsion.cloud.updownload.livedata;

import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.cloudcore.db.CloudTaskEntity;
import defpackage.e74;
import defpackage.i81;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)Ljava/lang/Object;"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.updownload.livedata.SmartTaskLiveData$updateLastValues$2", f = "SmartTaskLiveData.kt", l = {IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY}, m = "invokeSuspend")
public final class SmartTaskLiveData$updateLastValues$2 extends SuspendLambda implements s74 {
    final List<CloudTaskEntity> $newList;
    int label;
    final SmartTaskLiveData this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SmartTaskLiveData$updateLastValues$2(SmartTaskLiveData smartTaskLiveData, List<? extends CloudTaskEntity> list, wh1<? super SmartTaskLiveData$updateLastValues$2> wh1Var) {
        super(2, wh1Var);
        this.this$0 = smartTaskLiveData;
        this.$newList = list;
    }

    public static final CharSequence h(Map.Entry entry) {
        String str = (String) entry.getKey();
        Pair pair = (Pair) entry.getValue();
        return str + StringUtils.PROCESS_POSTFIX_DELIMITER + (((Boolean) pair.getFirst()).booleanValue() ? "1" : "0") + StringUtils.PROCESS_POSTFIX_DELIMITER + (((Boolean) pair.getSecond()).booleanValue() ? "1" : "0");
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new SmartTaskLiveData$updateLastValues$2(this.this$0, this.$newList, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<Object> wh1Var) {
        return ((SmartTaskLiveData$updateLastValues$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        try {
            if (i == 0) {
                c.b(obj);
                this.this$0.lastValue = this.$newList;
                SmartTaskLiveData smartTaskLiveData = this.this$0;
                List<CloudTaskEntity> list = this.$newList;
                smartTaskLiveData.lastCount = list != null ? list.size() : 0;
                List<CloudTaskEntity> list2 = this.$newList;
                if (list2 == null || list2.isEmpty()) {
                    this.this$0.lastSignature = null;
                    this.this$0.lastTaskIds = "";
                    this.this$0.lastFileExistStatus = "";
                    this.this$0.lastUpdateTime = -1L;
                } else {
                    SmartTaskLiveData smartTaskLiveData2 = this.this$0;
                    List<CloudTaskEntity> list3 = this.$newList;
                    this.label = 1;
                    obj = smartTaskLiveData2.o(list3, this);
                    if (obj == objF) {
                        return objF;
                    }
                }
                LogUtils.j("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " Last values updated successfully");
                return zfb.a;
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            SmartTaskLiveData.b bVar = (SmartTaskLiveData.b) obj;
            this.this$0.lastSignature = bVar;
            this.this$0.lastTaskIds = i81.y0(bVar.c(), StringUtils.COMMA, null, null, 0, null, null, 62, null);
            this.this$0.lastFileExistStatus = i81.y0(bVar.a().entrySet(), StringUtils.COMMA, null, null, 0, null, new e74() {
                @Override
                public final Object invoke(Object obj2) {
                    return SmartTaskLiveData$updateLastValues$2.h((Map.Entry) obj2);
                }
            }, 30, null);
            this.this$0.lastUpdateTime = bVar.b();
            LogUtils.j("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " Last values updated successfully");
            return zfb.a;
        } catch (CancellationException unused) {
            return mk0.b(Log.d("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " Update last values cancelled"));
        } catch (Exception e) {
            return mk0.b(Log.e("visha_cloud_SmartTaskLiveData", this.this$0.taskType.name() + " Error updating last values: " + e.getMessage()));
        }
    }
}
