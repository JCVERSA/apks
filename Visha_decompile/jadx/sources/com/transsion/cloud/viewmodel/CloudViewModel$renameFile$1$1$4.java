package com.transsion.cloud.viewmodel;

import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.player.VideoPlayManager;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$renameFile$1$1$4", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudViewModel$renameFile$1$1$4 extends SuspendLambda implements s74 {
    final String $fileId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel$renameFile$1$1$4(String str, wh1<? super CloudViewModel$renameFile$1$1$4> wh1Var) {
        super(2, wh1Var);
        this.$fileId = str;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudViewModel$renameFile$1$1$4(this.$fileId, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$renameFile$1$1$4) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        MediaItem mediaItemPlayMediaItem = PlayListData.getInstance().playMediaItem();
        if (mediaItemPlayMediaItem != null && mediaItemPlayMediaItem.isKtFile && y45.e(mediaItemPlayMediaItem.data, this.$fileId)) {
            VideoPlayManager.X().z2(mediaItemPlayMediaItem);
        }
        LiveEventBus.b().d("video_play_list_change").postValue(mk0.b(0));
        return zfb.a;
    }
}
