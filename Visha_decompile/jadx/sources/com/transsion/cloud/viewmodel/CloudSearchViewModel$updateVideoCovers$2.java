package com.transsion.cloud.viewmodel;

import com.transsion.cloud_drive.base.api.model.FileInfo;
import com.transsion.cloud_drive.base.api.model.FileThumbnail;
import com.transsion.dbdata.beans.cloud.SearchResponseData;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.xy0;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudSearchViewModel$updateVideoCovers$2", f = "CloudSearchViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudSearchViewModel$updateVideoCovers$2 extends SuspendLambda implements s74 {
    final List<SearchResponseData> $videoList;
    int label;
    final CloudSearchViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudSearchViewModel$updateVideoCovers$2(List<SearchResponseData> list, CloudSearchViewModel cloudSearchViewModel, wh1<? super CloudSearchViewModel$updateVideoCovers$2> wh1Var) {
        super(2, wh1Var);
        this.$videoList = list;
        this.this$0 = cloudSearchViewModel;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudSearchViewModel$updateVideoCovers$2(this.$videoList, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudSearchViewModel$updateVideoCovers$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00ac  */
    @Override
    public final Object invokeSuspend(Object obj) {
        FileThumbnail thumbnailUrls;
        Object next;
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        List<SearchResponseData> list = this.$videoList;
        ArrayList<SearchResponseData> arrayList = new ArrayList();
        for (Object obj2 : list) {
            Integer dataType = ((SearchResponseData) obj2).getDataType();
            if (dataType != null && dataType.intValue() == 1) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (true) {
            String str = null;
            if (!it.hasNext()) {
                break;
            }
            String sourceId = ((SearchResponseData) it.next()).getSourceId();
            if (sourceId != null && sourceId.length() > 0) {
                str = sourceId;
            }
            if (str != null) {
                arrayList2.add(str);
            }
        }
        xy0 xy0Var = this.this$0.mCloudManager;
        List listJ = xy0Var != null ? xy0Var.j(arrayList2) : null;
        for (SearchResponseData searchResponseData : arrayList) {
            if (listJ != null) {
                Iterator it2 = listJ.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!y45.e(((FileInfo) next).getFileId(), searchResponseData.getSourceId()));
                FileInfo fileInfo = (FileInfo) next;
                if (fileInfo != null) {
                    thumbnailUrls = fileInfo.getThumbnailUrls();
                } else {
                    thumbnailUrls = null;
                }
            } else {
                thumbnailUrls = null;
            }
            if (thumbnailUrls != null) {
                if (thumbnailUrls.getThumbnailUrl().length() > 0) {
                    searchResponseData.setCover(thumbnailUrls.getPreviewUrl());
                }
                if (thumbnailUrls.getPreviewUrl().length() > 0) {
                    searchResponseData.setPreviewUrl(thumbnailUrls.getPreviewUrl());
                }
            }
        }
        return zfb.a;
    }
}
