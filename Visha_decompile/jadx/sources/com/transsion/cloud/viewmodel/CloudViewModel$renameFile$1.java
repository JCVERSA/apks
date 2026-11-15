package com.transsion.cloud.viewmodel;

import com.transsion.cloud_drive.base.api.model.FileInfo;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.dbdata.beans.FileHandlerData;
import com.transsion.dbdata.beans.VideoCloudCache;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayListData;
import defpackage.apb;
import defpackage.el0;
import defpackage.h27;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.xy0;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$renameFile$1", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudViewModel$renameFile$1 extends SuspendLambda implements s74 {
    final String $nameFileName;
    final VideoCloudData $videoCloudData;
    int label;
    final CloudViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel$renameFile$1(CloudViewModel cloudViewModel, VideoCloudData videoCloudData, String str, wh1<? super CloudViewModel$renameFile$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudViewModel;
        this.$videoCloudData = videoCloudData;
        this.$nameFileName = str;
    }

    public static final zfb h(VideoCloudData videoCloudData, String str, CloudViewModel cloudViewModel, boolean z, FileInfo fileInfo) {
        String fileName;
        if (z) {
            if (fileInfo != null && videoCloudData != null) {
                videoCloudData.setFileName(fileInfo.getName());
            }
            if (videoCloudData != null) {
                apb apbVar = cloudViewModel.mVideoCloudData;
                if (apbVar != null) {
                    apbVar.updateCache(VideoCloudCache.fromVideoCloudData(videoCloudData));
                }
                CloudVideoPlayInfoManager.a.K(videoCloudData.getFileId(), videoCloudData.getFileName());
            }
            h27.c().e(1133, new FileHandlerData(z, 2, videoCloudData, new ArrayList()));
            if (videoCloudData != null && (fileName = videoCloudData.getFileName()) != null) {
                str = fileName;
            }
            String fileId = videoCloudData != null ? videoCloudData.getFileId() : null;
            if (fileId != null && fileId.length() != 0 && str != null && str.length() != 0) {
                ArrayList<MediaItem> playList = PlayListData.getInstance().getPlayList();
                y45.i(playList, "getPlayList(...)");
                boolean z2 = false;
                for (MediaItem mediaItem : playList) {
                    if (mediaItem.isKtFile && y45.e(mediaItem.data, fileId)) {
                        mediaItem.displayName = str;
                        mediaItem.title = str;
                        z2 = true;
                    }
                }
                MediaItem mediaItemPlayMediaItem = PlayListData.getInstance().playMediaItem();
                if (mediaItemPlayMediaItem != null && mediaItemPlayMediaItem.isKtFile && y45.e(mediaItemPlayMediaItem.data, fileId)) {
                    mediaItemPlayMediaItem.displayName = str;
                    mediaItemPlayMediaItem.title = str;
                }
                if (z2) {
                    el0.d(cloudViewModel.getMCoroutineScope(), mc2.c(), null, new CloudViewModel$renameFile$1$1$4(fileId, null), 2, null);
                }
            }
        }
        return zfb.a;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$renameFile$1(this.this$0, this.$videoCloudData, this.$nameFileName, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$renameFile$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
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
            final VideoCloudData videoCloudData = this.$videoCloudData;
            final String str = this.$nameFileName;
            final CloudViewModel cloudViewModel = this.this$0;
            xy0Var.e(videoCloudData, str, new s74() {
                @Override
                public final Object invoke(Object obj2, Object obj3) {
                    return CloudViewModel$renameFile$1.h(videoCloudData, str, cloudViewModel, ((Boolean) obj2).booleanValue(), (FileInfo) obj3);
                }
            });
        }
        return zfb.a;
    }
}
