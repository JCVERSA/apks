.class public final Lcom/transsion/cloud/fragment/CloudFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$d;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V
    .locals 12

    const-string v0, "vo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CloudFragment"

    const-string v1, "image click: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    const/16 v1, 0x3eb

    invoke-virtual {v0, p2, p1, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->mediaVideoToPlayVideoData(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;I)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVideoList()Ljava/util/List;

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

    move-object v2, p2

    invoke-static/range {v2 .. v11}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->copy$default(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls21$a;->c(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$d;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    sget-object v1, Laz5;->a:Laz5$a;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonPhoto()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Laz5$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;

    check-cast p2, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudFragment$d;->a(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
