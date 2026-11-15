package com.transsion.cloud.viewmodel;

import com.transsion.cloud_drive.base.api.model.FileInfo;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.dbdata.beans.FileHandlerCloudSearchData;
import com.transsion.dbdata.beans.cloud.SearchResponseData;
import defpackage.apb;
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
@nt1(c = "com.transsion.cloud.viewmodel.CloudSearchViewModel$renameFile$1", f = "CloudSearchViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudSearchViewModel$renameFile$1 extends SuspendLambda implements s74 {
    final String $nameFileName;
    final SearchResponseData $videoCloudData;
    int label;
    final CloudSearchViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudSearchViewModel$renameFile$1(CloudSearchViewModel cloudSearchViewModel, SearchResponseData searchResponseData, String str, wh1<? super CloudSearchViewModel$renameFile$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudSearchViewModel;
        this.$videoCloudData = searchResponseData;
        this.$nameFileName = str;
    }

    public static final zfb h(SearchResponseData searchResponseData, CloudSearchViewModel cloudSearchViewModel, boolean z, FileInfo fileInfo) {
        if (z) {
            if (fileInfo != null && searchResponseData != null) {
                searchResponseData.setTitle(fileInfo.getName());
            }
            if (searchResponseData != null) {
                apb apbVar = cloudSearchViewModel.mVideoCloudData;
                if (apbVar != null) {
                    apbVar.updateFileNameByFileId(searchResponseData.getSourceId(), searchResponseData.getTitle());
                }
                CloudVideoPlayInfoManager cloudVideoPlayInfoManager = CloudVideoPlayInfoManager.a;
                String sourceId = searchResponseData.getSourceId();
                if (sourceId == null) {
                    sourceId = "";
                }
                cloudVideoPlayInfoManager.K(sourceId, searchResponseData.getTitle());
            }
            h27.c().e(1133, new FileHandlerCloudSearchData(z, 2, searchResponseData, new ArrayList()));
        }
        return zfb.a;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudSearchViewModel$renameFile$1(this.this$0, this.$videoCloudData, this.$nameFileName, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudSearchViewModel$renameFile$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        xy0 xy0Var = this.this$0.mCloudManager;
        if (xy0Var != null) {
            SearchResponseData searchResponseData = this.$videoCloudData;
            String sourceId = searchResponseData != null ? searchResponseData.getSourceId() : null;
            String str = this.$nameFileName;
            final SearchResponseData searchResponseData2 = this.$videoCloudData;
            final CloudSearchViewModel cloudSearchViewModel = this.this$0;
            xy0Var.i(sourceId, str, new s74() {
                @Override
                public final Object invoke(Object obj2, Object obj3) {
                    return CloudSearchViewModel$renameFile$1.h(searchResponseData2, cloudSearchViewModel, ((Boolean) obj2).booleanValue(), (FileInfo) obj3);
                }
            });
        }
        return zfb.a;
    }
}
