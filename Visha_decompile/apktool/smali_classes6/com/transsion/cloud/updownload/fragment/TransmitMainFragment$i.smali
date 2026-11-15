.class public Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;
.super Lif7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->d1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-direct {p0}, Lif7;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;Lcom/transsion/cloudcore/db/CloudTaskEntity;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->e(Lcom/transsion/cloudcore/db/CloudTaskEntity;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/cloudcore/db/CloudTaskEntity;Lcom/transsion/cloudcore/db/CloudTaskEntity;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->d(Lcom/transsion/cloudcore/db/CloudTaskEntity;Lcom/transsion/cloudcore/db/CloudTaskEntity;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/cloudcore/db/CloudTaskEntity;Lcom/transsion/cloudcore/db/CloudTaskEntity;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget p1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-static {p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    iget p0, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-virtual {p1, p0}, Lao;->F(I)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lao;->G(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lif7;->OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_cloud_TransmitMainFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-virtual {v0, p1, p2, p3, v3}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->w1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->z0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    goto/16 :goto_1

    :cond_0
    iget-boolean p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    if-eqz p1, :cond_7

    iget p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    sget-object p2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->IMAGE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->mValue:I

    if-ne p1, p2, :cond_1

    :try_start_0
    const-string p1, "dl_manager_downloaded_image_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    iget-object p2, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lraa;->k(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    const-string p1, "openImageFile error: "

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget p0, Lcom/transsion/sniffer_load/R$string;->operation_fail:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto/16 :goto_1

    :cond_1
    sget-object p2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->SUBTITLE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->mValue:I

    if-ne p1, p2, :cond_2

    sget p0, Lcom/transsion/sniffer_load/R$string;->subtitle_file_ext:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto/16 :goto_1

    :cond_2
    sget-object p2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->OTHERS:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->mValue:I

    if-ne p1, p2, :cond_3

    :try_start_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    iget-object p2, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lraa;->j(Landroid/content/Context;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p0

    const-string p1, "openFile error: "

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget p0, Lcom/transsion/sniffer_load/R$string;->operation_fail:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto/16 :goto_1

    :cond_3
    sget-object p2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->mValue:I

    if-ne p1, p2, :cond_4

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->O0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Lj8b;

    invoke-direct {p2, v0}, Lj8b;-><init>(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V

    invoke-virtual {p1, p2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lk8b;

    invoke-direct {p2, p0, v0}, Lk8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;Lcom/transsion/cloudcore/db/CloudTaskEntity;)V

    new-instance p3, Ll8b;

    invoke-direct {p3, p0}, Ll8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;)V

    invoke-virtual {p1, p2, p3}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    goto/16 :goto_1

    :cond_4
    new-instance p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    const/16 p2, 0x31

    iput p2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    iget p2, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    iput p2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iget-object p2, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iget-wide p2, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    iput-wide p2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    iget-object p2, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setData(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object p2, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setNeedRecordVideoStates(Z)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p3

    iget p3, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    if-ne p3, v1, :cond_5

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->d0()I

    move-result p3

    if-eqz p3, :cond_5

    int-to-long v1, p3

    iput-wide v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    :cond_5
    iget-object p3, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p3}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->P0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    iget p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    if-eq p1, p2, :cond_6

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_6
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/transsion/sniffer_load/R$string;->visha_playing_local_file:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_7
    invoke-static {}, Lzz0;->d()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->g(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget p0, Lcom/transsion/sniffer_load/R$string;->visha_cloud_deleted:I

    goto :goto_0

    :cond_9
    sget p0, Lcom/transsion/sniffer_load/R$string;->visha_local_deleted:I

    :goto_0
    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_a
    :goto_1
    return-void
.end method

.method public final synthetic e(Lcom/transsion/cloudcore/db/CloudTaskEntity;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 4

    invoke-static {p2}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    const/16 v1, 0x31

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result p2

    if-eqz p2, :cond_0

    int-to-long v2, p2

    iput-wide v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->S0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->D1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    iget p0, p1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    if-ne p0, v1, :cond_1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/transsion/sniffer_load/R$string;->visha_playing_local_file:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public final synthetic f(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryAudioItem error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_cloud_TransmitMainFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/sniffer_load/R$string;->visha_cloud_deleted:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/sniffer_load/R$string;->visha_local_deleted:I

    :goto_0
    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public final g(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .locals 2

    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Lm21;->a:Lm21;

    invoke-virtual {p0}, Lm21;->d()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->Q0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/cloudcore/utils/CloudTaskUtils;->b(Lcom/transsion/cloudcore/db/CloudTaskEntity;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    sget-object p1, Lsrb;->a:Lsrb;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->R0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/transsion/sniffer_load/R$string;->visha_playing_cloud_file:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lsrb;->b(Ljava/lang/String;)V

    return-void
.end method
