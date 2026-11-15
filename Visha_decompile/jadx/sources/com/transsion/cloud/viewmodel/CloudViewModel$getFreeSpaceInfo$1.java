package com.transsion.cloud.viewmodel;

import com.transsion.cloud_drive.base.api.model.FreeSpaceResponse;
import com.transsion.cloud_drive.base.api.request.MccMap;
import com.transsion.playercommon.utils.CountryInfoUtil;
import defpackage.e74;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.xy0;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$getFreeSpaceInfo$1", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudViewModel$getFreeSpaceInfo$1 extends SuspendLambda implements s74 {
    int label;
    final CloudViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel$getFreeSpaceInfo$1(CloudViewModel cloudViewModel, wh1<? super CloudViewModel$getFreeSpaceInfo$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudViewModel;
    }

    public static final zfb h(CloudViewModel cloudViewModel, FreeSpaceResponse freeSpaceResponse) {
        cloudViewModel.getMFreeSpaceInfo().postValue(freeSpaceResponse);
        return zfb.a;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$getFreeSpaceInfo$1(this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$getFreeSpaceInfo$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        String strI = CountryInfoUtil.i();
        y45.i(strI, "getCountryCode(...)");
        MccMap mccMap = new MccMap(strI, null, null, null, 14, null);
        xy0 xy0Var = this.this$0.mCloudManager;
        if (xy0Var != null) {
            final CloudViewModel cloudViewModel = this.this$0;
            xy0Var.h(mccMap, new e74() {
                @Override
                public final Object invoke(Object obj2) {
                    return CloudViewModel$getFreeSpaceInfo$1.h(cloudViewModel, (FreeSpaceResponse) obj2);
                }
            });
        }
        return zfb.a;
    }
}
