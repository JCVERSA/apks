.class Lcom/transsion/magicvideo/fragments/VideosFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideosFragment;->C3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

.field final synthetic val$arrayList:Ljava/util/ArrayList;

.field final synthetic val$isFavoriteList:Z

.field final synthetic val$listFlag:I


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/util/ArrayList;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->val$arrayList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->val$listFlag:I

    iput-boolean p4, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->val$isFavoriteList:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "num_1"

    const-string v1, "num_0"

    const-string v2, "video_amount"

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v4}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v6, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v9, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    iget-object v8, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v2, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    sub-int/2addr v5, v7

    invoke-virtual {v3, v1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v0, v7}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v3, v0, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v1, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->A2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Z

    move-result v0

    const-wide/16 v1, 0x246c

    if-eqz v0, :cond_3

    const-string v0, "vd_playback_history_page_show_p"

    invoke-static {v4, v3, v0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->val$listFlag:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->H2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    const-string v0, "vd_all_video_show_p"

    invoke-static {v4, v3, v0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->val$isFavoriteList:Z

    if-eqz v0, :cond_6

    const-string v0, "vd_nplaylist_favorite_show_p"

    invoke-static {v4, v3, v0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$5;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method
