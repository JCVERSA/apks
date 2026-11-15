package com.transsion.cloud.updownload.viewmodel;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloud_drive.base.api.model.FileInfo;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.cloudcore.db.CloudTaskEntity;
import defpackage.abb;
import defpackage.i81;
import defpackage.mk0;
import defpackage.mq3;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y71;
import defpackage.z45;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.c;
import kotlin.collections.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lnk1;", "", "", "", "<anonymous>", "(Lnk1;)Ljava/util/Map;"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.updownload.viewmodel.TransferDataViewModel$handleCloudFileStatus$2", f = "TransferDataViewModel.kt", l = {}, m = "invokeSuspend")
public final class TransferDataViewModel$handleCloudFileStatus$2 extends SuspendLambda implements s74 {
    final List<CloudTaskEntity> $taskList;
    int label;
    final TransferDataViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TransferDataViewModel$handleCloudFileStatus$2(List<? extends CloudTaskEntity> list, TransferDataViewModel transferDataViewModel, wh1<? super TransferDataViewModel$handleCloudFileStatus$2> wh1Var) {
        super(2, wh1Var);
        this.$taskList = list;
        this.this$0 = transferDataViewModel;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new TransferDataViewModel$handleCloudFileStatus$2(this.$taskList, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Map<String, Boolean>> wh1Var) {
        return ((TransferDataViewModel$handleCloudFileStatus$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        ApiResponse apiResponseI;
        Collection collectionK;
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<CloudTaskEntity> list = this.$taskList;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (((CloudTaskEntity) obj2).isCloudFileExist) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((CloudTaskEntity) it.next()).cloudFileId);
        }
        if (!arrayList2.isEmpty()) {
            try {
                mq3 mq3Var = this.this$0.mCloudFileManager;
                if (mq3Var != null && (apiResponseI = mq3Var.i(arrayList2, null, null)) != null) {
                    if (apiResponseI instanceof ApiResponse.Success) {
                        List list2 = (List) ((ApiResponse.Success) apiResponseI).getData();
                        if (list2 != null) {
                            List list3 = list2;
                            collectionK = new ArrayList(z71.v(list3, 10));
                            Iterator it2 = list3.iterator();
                            while (it2.hasNext()) {
                                collectionK.add(((FileInfo) it2.next()).getFileId());
                            }
                        } else {
                            collectionK = y71.k();
                        }
                        List listF0 = i81.F0(arrayList2, collectionK);
                        ArrayList arrayList3 = new ArrayList(z71.v(listF0, 10));
                        Iterator it3 = listF0.iterator();
                        while (it3.hasNext()) {
                            arrayList3.add(abb.a((String) it3.next(), mk0.a(false)));
                        }
                        a.u(linkedHashMap, arrayList3);
                        Collection collection = collectionK;
                        ArrayList arrayList4 = new ArrayList(z71.v(collection, 10));
                        Iterator it4 = collection.iterator();
                        while (it4.hasNext()) {
                            arrayList4.add(abb.a((String) it4.next(), mk0.a(true)));
                        }
                        a.u(linkedHashMap, arrayList4);
                    }
                    if (apiResponseI instanceof ApiResponse.Failure.Error) {
                        ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseI;
                        LogUtils.m("TransferDataViewModel", "handleCloudFileStatus onError errorCode:" + error.getErrorCode() + " message: " + error.getMessage());
                    }
                    if (apiResponseI instanceof ApiResponse.Failure.Exception) {
                        LogUtils.m("TransferDataViewModel", "handleCloudFileStatus onException: message: " + ((ApiResponse.Failure.Exception) apiResponseI).getMessage());
                    }
                }
            } catch (Exception e) {
                LogUtils.m("TransferDataViewModel", "handleCloudFileStatus Update tasks failed: " + e.getMessage());
            }
        }
        LogUtils.j("TransferDataViewModel", "handleCloudFileStatus:" + linkedHashMap.size());
        return linkedHashMap;
    }
}
