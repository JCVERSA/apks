package com.transsion.cloud.share;

import com.transsion.cloud_drive.base.network.response.ApiResponse;
import defpackage.a41;
import defpackage.cl0;
import defpackage.mc2;
import defpackage.mq3;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.share.CloudDriveBottomShareActivity$updateShareLink$1$1", f = "CloudDriveBottomShareActivity.kt", l = {224}, m = "invokeSuspend")
public final class CloudDriveBottomShareActivity$updateShareLink$1$1 extends SuspendLambda implements s74 {
    final String $id;
    int label;
    final CloudDriveBottomShareActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudDriveBottomShareActivity$updateShareLink$1$1(CloudDriveBottomShareActivity cloudDriveBottomShareActivity, String str, wh1<? super CloudDriveBottomShareActivity$updateShareLink$1$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudDriveBottomShareActivity;
        this.$id = str;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudDriveBottomShareActivity$updateShareLink$1$1(this.this$0, this.$id, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudDriveBottomShareActivity$updateShareLink$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            this.this$0.A0(true);
            mq3 mq3VarB = a41.a.b(this.this$0);
            kotlinx.coroutines.c cVarB = mc2.b();
            CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1 cloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1 = new CloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1(this.this$0, mq3VarB, this.$id, null);
            this.label = 1;
            obj = cl0.g(cVarB, cloudDriveBottomShareActivity$updateShareLink$1$1$updateShareResponse$1, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        this.this$0.r0((ApiResponse) obj);
        return zfb.a;
    }
}
