.class Lcom/transsion/audio/widgets/MusicPlayListView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/MusicPlayListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/MusicPlayListView;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$3;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDismiss(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onItemMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$3;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v0, v0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$3;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const/16 p2, 0x441

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    const-string p0, "vd_audio_playqueue_subdrag"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemMove: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MusicPlayListView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
