package com.transsion.cloudcore.cloudapi.impl;

import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.dbdata.beans.VideoCloudData;
import defpackage.apb;
import defpackage.cl0;
import defpackage.e74;
import defpackage.el0;
import defpackage.mc2;
import defpackage.mk0;
import defpackage.mq3;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloudcore.cloudapi.impl.CloudManagerImpl$deleteFileAsync$1", f = "CloudManagerImpl.kt", l = {183, 200}, m = "invokeSuspend")
public final class CloudManagerImpl$deleteFileAsync$1 extends SuspendLambda implements s74 {
    final e74 $callback;
    final List<VideoCloudData> $videoList;
    private Object L$0;
    int label;
    final CloudManagerImpl this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloudcore.cloudapi.impl.CloudManagerImpl$deleteFileAsync$1$4", f = "CloudManagerImpl.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass4 extends SuspendLambda implements s74 {
        final e74 $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(e74 e74Var, wh1<? super AnonymousClass4> wh1Var) {
            super(2, wh1Var);
            this.$callback = e74Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass4(this.$callback, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass4) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            this.$callback.invoke(mk0.a(false));
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CloudManagerImpl$deleteFileAsync$1(List<? extends VideoCloudData> list, CloudManagerImpl cloudManagerImpl, e74 e74Var, wh1<? super CloudManagerImpl$deleteFileAsync$1> wh1Var) {
        super(2, wh1Var);
        this.$videoList = list;
        this.this$0 = cloudManagerImpl;
        this.$callback = e74Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        CloudManagerImpl$deleteFileAsync$1 cloudManagerImpl$deleteFileAsync$1 = new CloudManagerImpl$deleteFileAsync$1(this.$videoList, this.this$0, this.$callback, wh1Var);
        cloudManagerImpl$deleteFileAsync$1.L$0 = obj;
        return cloudManagerImpl$deleteFileAsync$1;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudManagerImpl$deleteFileAsync$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        ApiResponse apiResponseP;
        Object objF = z45.f();
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    c.b(obj);
                    return zfb.a;
                }
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                return zfb.a;
            }
            c.b(obj);
            List<VideoCloudData> list = this.$videoList;
            if (list == null) {
                e74 e74Var = this.$callback;
                rx5 rx5VarC = mc2.c();
                CloudManagerImpl$deleteFileAsync$1$fileIds$2$1 cloudManagerImpl$deleteFileAsync$1$fileIds$2$1 = new CloudManagerImpl$deleteFileAsync$1$fileIds$2$1(e74Var, null);
                this.label = 1;
                if (cl0.g(rx5VarC, cloudManagerImpl$deleteFileAsync$1$fileIds$2$1, this) == objF) {
                    return objF;
                }
                return zfb.a;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                String fileId = ((VideoCloudData) it.next()).getFileId();
                if (fileId == null || fileId.length() <= 0) {
                    fileId = null;
                }
                if (fileId != null) {
                    arrayList.add(fileId);
                }
            }
            mq3 mq3Var = this.this$0.b;
            if (mq3Var != null && (apiResponseP = mq3Var.p(arrayList)) != null) {
                CloudManagerImpl cloudManagerImpl = this.this$0;
                e74 e74Var2 = this.$callback;
                if (apiResponseP instanceof ApiResponse.Success) {
                    apb apbVar = cloudManagerImpl.d;
                    if (apbVar != null) {
                        mk0.b(apbVar.deleteByFileIds(arrayList));
                    }
                    el0.d(cloudManagerImpl.B(), mc2.c(), null, new CloudManagerImpl$deleteFileAsync$1$1$1(e74Var2, null), 2, null);
                }
                CloudManagerImpl cloudManagerImpl2 = this.this$0;
                e74 e74Var3 = this.$callback;
                if (apiResponseP instanceof ApiResponse.Failure.Error) {
                    el0.d(cloudManagerImpl2.B(), mc2.c(), null, new CloudManagerImpl$deleteFileAsync$1$2$1(e74Var3, null), 2, null);
                    cloudManagerImpl2.x(((ApiResponse.Failure.Error) apiResponseP).getErrorCode());
                }
                CloudManagerImpl cloudManagerImpl3 = this.this$0;
                e74 e74Var4 = this.$callback;
                if (apiResponseP instanceof ApiResponse.Failure.Exception) {
                    el0.d(cloudManagerImpl3.B(), mc2.c(), null, new CloudManagerImpl$deleteFileAsync$1$3$1(e74Var4, null), 2, null);
                }
            }
            return zfb.a;
        } catch (Exception unused) {
            rx5 rx5VarC2 = mc2.c();
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$callback, null);
            this.label = 2;
            if (cl0.g(rx5VarC2, anonymousClass4, this) == objF) {
                return objF;
            }
        }
    }
}
