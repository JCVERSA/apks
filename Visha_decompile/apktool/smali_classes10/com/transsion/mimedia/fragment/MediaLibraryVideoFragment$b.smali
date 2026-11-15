.class public final Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$b;
.super Lif7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$b;->b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-direct {p0}, Lif7;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    iget-object v2, v0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$b;->b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-static {v2}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->i0(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    move-result-object v2

    const-string v3, "mMIMediaLibraryData"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMediaLibraryHadRemoved(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$b;->b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-static {v0}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->l0(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)V

    return-void

    :cond_1
    iget-object v2, v0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$b;->b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-static {v2}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->f0(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)Lcom/transsion/mimedia/adapter/MediaLibraryVideoAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "mAdapter"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v4

    :cond_2
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    const-string v5, "getData(...)"

    invoke-static {v2, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls21;->b:Ls21$a;

    iget-object v6, v0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$b;->b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-static {v6}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->i0(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v7, v4

    goto :goto_0

    :cond_3
    move-object v7, v6

    :goto_0
    const/16 v15, 0x7f

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v7 .. v16}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->copy$default(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    move-result-object v6

    invoke-virtual {v5, v6}, Ls21$a;->c(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V

    invoke-virtual {v5, v2}, Ls21$a;->d(Ljava/util/List;)V

    move/from16 v5, p3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video item click: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaLibraryVideoFragment"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$b;->b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-static {v5}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->i0(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v4, v5

    :goto_1
    const/16 v3, 0x3ed

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->mediaVideoToPlayVideoData(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;I)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v1

    iget-object v3, v0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$b;->b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-static {v3}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->h0(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    sget-object v4, Laz5;->a:Laz5$a;

    iget-object v1, v0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$b;->b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-static {v1}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->j0(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$b;->b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    invoke-static {v0}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->k0(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getSourceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getSourceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Laz5$a;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
