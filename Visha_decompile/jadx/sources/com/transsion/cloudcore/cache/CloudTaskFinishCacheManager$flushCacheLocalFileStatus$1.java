package com.transsion.cloudcore.cache;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloudcore.db.CloudTaskDatabase;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import defpackage.d72;
import defpackage.el0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloudcore.cache.CloudTaskFinishCacheManager$flushCacheLocalFileStatus$1", f = "CloudTaskCacheManager.kt", l = {TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT}, m = "invokeSuspend")
public final class CloudTaskFinishCacheManager$flushCacheLocalFileStatus$1 extends SuspendLambda implements s74 {
    private Object L$0;
    int label;

    public CloudTaskFinishCacheManager$flushCacheLocalFileStatus$1(wh1<? super CloudTaskFinishCacheManager$flushCacheLocalFileStatus$1> wh1Var) {
        super(2, wh1Var);
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        CloudTaskFinishCacheManager$flushCacheLocalFileStatus$1 cloudTaskFinishCacheManager$flushCacheLocalFileStatus$1 = new CloudTaskFinishCacheManager$flushCacheLocalFileStatus$1(wh1Var);
        cloudTaskFinishCacheManager$flushCacheLocalFileStatus$1.L$0 = obj;
        return cloudTaskFinishCacheManager$flushCacheLocalFileStatus$1;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudTaskFinishCacheManager$flushCacheLocalFileStatus$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        ArrayList<CloudTaskEntity> arrayList;
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            nk1 nk1Var = (nk1) this.L$0;
            Collection collectionValues = CloudTaskFinishCacheManager.b.values();
            y45.i(collectionValues, "<get-values>(...)");
            LogUtils.j("loadFinishedTask taskList:" + collectionValues.size(), new Object[0]);
            ArrayList arrayList2 = new ArrayList(CloudTaskFinishCacheManager.b.values());
            d72 d72VarB = el0.b(nk1Var, null, null, new CloudTaskFinishCacheManager$flushCacheLocalFileStatus$1$localFileExistStatus$1(arrayList2, null), 3, null);
            this.L$0 = arrayList2;
            this.label = 1;
            Object objO = d72VarB.o(this);
            if (objO == objF) {
                return objF;
            }
            obj = objO;
            arrayList = arrayList2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            arrayList = (ArrayList) this.L$0;
            c.b(obj);
        }
        Map map = (Map) obj;
        for (CloudTaskEntity cloudTaskEntity : arrayList) {
            Boolean bool = (Boolean) map.get(cloudTaskEntity.taskId);
            if (bool != null) {
                cloudTaskEntity.isLocalFileExist = bool.booleanValue();
            }
        }
        CloudTaskDatabase.getInstance().cloudTaskDao().updateTasks(arrayList);
        LogUtils.j("loadFinishedTask:" + arrayList.size(), new Object[0]);
        return zfb.a;
    }
}
