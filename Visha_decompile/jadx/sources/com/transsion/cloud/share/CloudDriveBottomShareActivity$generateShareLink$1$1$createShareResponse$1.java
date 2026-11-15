package com.transsion.cloud.share;

import com.transsion.cloud_drive.base.api.model.FileShareLink;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import defpackage.mq3;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.x71;
import defpackage.z45;
import defpackage.zfb;
import java.time.LocalDateTime;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lnk1;", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/api/model/FileShareLink;", "<anonymous>", "(Lnk1;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.share.CloudDriveBottomShareActivity$generateShareLink$1$1$createShareResponse$1", f = "CloudDriveBottomShareActivity.kt", l = {}, m = "invokeSuspend")
public final class CloudDriveBottomShareActivity$generateShareLink$1$1$createShareResponse$1 extends SuspendLambda implements s74 {
    final mq3 $fileManager;
    final String $id;
    int label;
    final CloudDriveBottomShareActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudDriveBottomShareActivity$generateShareLink$1$1$createShareResponse$1(CloudDriveBottomShareActivity cloudDriveBottomShareActivity, mq3 mq3Var, String str, wh1<? super CloudDriveBottomShareActivity$generateShareLink$1$1$createShareResponse$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudDriveBottomShareActivity;
        this.$fileManager = mq3Var;
        this.$id = str;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudDriveBottomShareActivity$generateShareLink$1$1$createShareResponse$1(this.this$0, this.$fileManager, this.$id, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super ApiResponse<FileShareLink>> wh1Var) {
        return ((CloudDriveBottomShareActivity$generateShareLink$1$1$createShareResponse$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        LocalDateTime localDateTimePlusDays = this.this$0.validityPeriodDays == 0 ? null : LocalDateTime.now().plusDays(this.this$0.validityPeriodDays);
        mq3 mq3Var = this.$fileManager;
        List listE = x71.e(this.$id);
        String str = this.this$0.fileName;
        if (str == null) {
            str = "";
        }
        return mq3.a.a(mq3Var, listE, null, str, null, localDateTimePlusDays, 10, null);
    }
}
