package com.transsion.cloud.updownload.viewmodel;

import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.cloudcore.utils.CloudTaskUtils;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lnk1;", "", "", "", "<anonymous>", "(Lnk1;)Ljava/util/Map;"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.updownload.viewmodel.TransferDataViewModel$loadFinishedTask$1$localFileExistStatus$1", f = "TransferDataViewModel.kt", l = {276}, m = "invokeSuspend")
public final class TransferDataViewModel$loadFinishedTask$1$localFileExistStatus$1 extends SuspendLambda implements s74 {
    final ArrayList<CloudTaskEntity> $requestList;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferDataViewModel$loadFinishedTask$1$localFileExistStatus$1(ArrayList<CloudTaskEntity> arrayList, wh1<? super TransferDataViewModel$loadFinishedTask$1$localFileExistStatus$1> wh1Var) {
        super(2, wh1Var);
        this.$requestList = arrayList;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new TransferDataViewModel$loadFinishedTask$1$localFileExistStatus$1(this.$requestList, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Map<String, Boolean>> wh1Var) {
        return ((TransferDataViewModel$loadFinishedTask$1$localFileExistStatus$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            ArrayList<CloudTaskEntity> arrayList = this.$requestList;
            this.label = 1;
            obj = CloudTaskUtils.a(arrayList, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return obj;
    }
}
