.class public Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$d;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoClick \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadRecommendFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/sniffer_load/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    const/16 v1, 0x3ec

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->mediaVideoToPlayVideoData(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;I)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$d;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonPhoto()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Laz5;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMediaLibraryClick \uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DownloadRecommendFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p0

    const-string v0, "/clouddrive/medialibraryvideoactivity"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    const-string v0, "mediaLibraryId"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    const-string v0, "mediaLibraryName"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonPhoto()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Laz5;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
