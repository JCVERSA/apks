package com.transsion.cloud.updownload.viewmodel;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloudcore.db.CloudTaskDao;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.tranplayer.MediaPlayer;
import defpackage.d72;
import defpackage.el0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.updownload.viewmodel.TransferDataViewModel$loadFinishedTask$1", f = "TransferDataViewModel.kt", l = {277, MediaPlayer.Event.Unsupported}, m = "invokeSuspend")
public final class TransferDataViewModel$loadFinishedTask$1 extends SuspendLambda implements s74 {
    final List<CloudTaskEntity> $taskList;
    private Object L$0;
    Object L$1;
    int label;
    final TransferDataViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TransferDataViewModel$loadFinishedTask$1(List<? extends CloudTaskEntity> list, TransferDataViewModel transferDataViewModel, wh1<? super TransferDataViewModel$loadFinishedTask$1> wh1Var) {
        super(2, wh1Var);
        this.$taskList = list;
        this.this$0 = transferDataViewModel;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        TransferDataViewModel$loadFinishedTask$1 transferDataViewModel$loadFinishedTask$1 = new TransferDataViewModel$loadFinishedTask$1(this.$taskList, this.this$0, wh1Var);
        transferDataViewModel$loadFinishedTask$1.L$0 = obj;
        return transferDataViewModel$loadFinishedTask$1;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((TransferDataViewModel$loadFinishedTask$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:31:0x00df  */
    /* JADX WARN: Code duplicated, block: B:37:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ef A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00c9 A[SYNTHETIC] */
    @Override
    public final Object invokeSuspend(Object obj) {
        ArrayList<CloudTaskEntity> arrayList;
        nk1 nk1Var;
        Map map;
        CloudTaskDao cloudTaskDao;
        Map map2;
        Boolean bool;
        Boolean bool2;
        Object objF = z45.f();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                arrayList = (ArrayList) this.L$1;
                nk1Var = (nk1) this.L$0;
                c.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                map = (Map) this.L$1;
                arrayList = (ArrayList) this.L$0;
                c.b(obj);
            }
            map2 = (Map) obj;
            for (CloudTaskEntity cloudTaskEntity : arrayList) {
                bool = (Boolean) map.get(cloudTaskEntity.taskId);
                if (bool != null) {
                    cloudTaskEntity.isLocalFileExist = bool.booleanValue();
                }
                bool2 = (Boolean) map2.get(cloudTaskEntity.cloudFileId);
                if (bool2 != null) {
                    cloudTaskEntity.isCloudFileExist = bool2.booleanValue();
                }
            }
            cloudTaskDao = this.this$0.mCloudTaskDao;
            if (cloudTaskDao != null) {
                cloudTaskDao.updateTasks(arrayList);
            }
            LogUtils.j("TransferDataViewModel", "loadFinishedTask:" + arrayList.size());
            return zfb.a;
        }
        c.b(obj);
        nk1 nk1Var2 = (nk1) this.L$0;
        LogUtils.j("TransferDataViewModel", "loadFinishedTask taskList:" + this.$taskList.size());
        arrayList = new ArrayList(this.$taskList);
        d72 d72VarB = el0.b(nk1Var2, null, null, new TransferDataViewModel$loadFinishedTask$1$localFileExistStatus$1(arrayList, null), 3, null);
        this.L$0 = nk1Var2;
        this.L$1 = arrayList;
        this.label = 1;
        Object objO = d72VarB.o(this);
        if (objO == objF) {
            return objF;
        }
        nk1Var = nk1Var2;
        obj = objO;
        Map map3 = (Map) obj;
        if (MainApp.w == 0) {
            for (CloudTaskEntity cloudTaskEntity2 : arrayList) {
                Boolean bool3 = (Boolean) map3.get(cloudTaskEntity2.taskId);
                if (bool3 != null) {
                    cloudTaskEntity2.isLocalFileExist = bool3.booleanValue();
                }
            }
        } else {
            d72 d72VarB2 = el0.b(nk1Var, null, null, new TransferDataViewModel$loadFinishedTask$1$cloudFileExistIds$1(this.this$0, arrayList, null), 3, null);
            this.L$0 = arrayList;
            this.L$1 = map3;
            this.label = 2;
            Object objO2 = d72VarB2.o(this);
            if (objO2 == objF) {
                return objF;
            }
            map = map3;
            obj = objO2;
            map2 = (Map) obj;
            while (r2.hasNext()) {
                bool = (Boolean) map.get(cloudTaskEntity.taskId);
                if (bool != null) {
                    cloudTaskEntity.isLocalFileExist = bool.booleanValue();
                }
                bool2 = (Boolean) map2.get(cloudTaskEntity.cloudFileId);
                if (bool2 != null) {
                    cloudTaskEntity.isCloudFileExist = bool2.booleanValue();
                }
            }
        }
        cloudTaskDao = this.this$0.mCloudTaskDao;
        if (cloudTaskDao != null) {
            cloudTaskDao.updateTasks(arrayList);
        }
        LogUtils.j("TransferDataViewModel", "loadFinishedTask:" + arrayList.size());
        return zfb.a;
    }
}
