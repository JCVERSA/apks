package com.transsion.cloud.viewmodel;

import com.transsion.dbdata.beans.FileHandlerCloudSearchData;
import com.transsion.dbdata.beans.cloud.SearchResponseData;
import defpackage.apb;
import defpackage.e74;
import defpackage.h27;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.xy0;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudSearchViewModel$deleteFile$1", f = "CloudSearchViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudSearchViewModel$deleteFile$1 extends SuspendLambda implements s74 {
    final SearchResponseData $videoCloudData;
    int label;
    final CloudSearchViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudSearchViewModel$deleteFile$1(SearchResponseData searchResponseData, CloudSearchViewModel cloudSearchViewModel, wh1<? super CloudSearchViewModel$deleteFile$1> wh1Var) {
        super(2, wh1Var);
        this.$videoCloudData = searchResponseData;
        this.this$0 = cloudSearchViewModel;
    }

    public static final zfb h(CloudSearchViewModel cloudSearchViewModel, String str, SearchResponseData searchResponseData, boolean z) {
        if (z) {
            apb apbVar = cloudSearchViewModel.mVideoCloudData;
            if (apbVar != null) {
                apbVar.deleteByFileId(str);
            }
            h27.c().e(1133, new FileHandlerCloudSearchData(z, 1, searchResponseData, new ArrayList()));
        }
        return zfb.a;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudSearchViewModel$deleteFile$1(this.$videoCloudData, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudSearchViewModel$deleteFile$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        final String sourceId;
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        SearchResponseData searchResponseData = this.$videoCloudData;
        if (searchResponseData != null && (sourceId = searchResponseData.getSourceId()) != null) {
            final CloudSearchViewModel cloudSearchViewModel = this.this$0;
            final SearchResponseData searchResponseData2 = this.$videoCloudData;
            xy0 xy0Var = cloudSearchViewModel.mCloudManager;
            if (xy0Var != null) {
                xy0Var.d(sourceId, new e74() {
                    @Override
                    public final Object invoke(Object obj2) {
                        return CloudSearchViewModel$deleteFile$1.h(cloudSearchViewModel, sourceId, searchResponseData2, ((Boolean) obj2).booleanValue());
                    }
                });
            }
        }
        return zfb.a;
    }
}
