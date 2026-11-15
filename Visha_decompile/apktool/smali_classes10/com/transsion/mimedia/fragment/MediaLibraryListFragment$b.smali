.class public final Lcom/transsion/mimedia/fragment/MediaLibraryListFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mimedia/fragment/MediaLibraryListFragment$b;->a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;)V
    .locals 12

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/mimedia/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    const/16 v1, 0x3eb

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->mediaVideoToPlayVideoData(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;I)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVideoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Ls21;->b:Ls21$a;

    new-instance v3, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Ls21$a;->b(Ljava/util/List;)V

    :cond_1
    sget-object v1, Ls21;->b:Ls21$a;

    const/16 v10, 0x7f

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v11}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->copy$default(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls21$a;->c(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V

    iget-object p0, p0, Lcom/transsion/mimedia/fragment/MediaLibraryListFragment$b;->a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;

    invoke-static {p0}, Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;->W(Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    sget-object v1, Laz5;->a:Laz5$a;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonPhoto()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Laz5$a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V
    .locals 3

    const-string p0, "data"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p0

    const-string v0, "/clouddrive/medialibraryvideoactivity"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediaLibraryId"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    const-string v0, "mediaLibraryName"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    const-string v0, "is_from_library_collect_list"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withBoolean(Ljava/lang/String;Z)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    const-string v0, "from"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->withInt(Ljava/lang/String;I)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    sget-object p0, Laz5;->a:Laz5$a;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonPhoto()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Laz5$a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
