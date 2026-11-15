.class Lcom/transsion/audio/widgets/MusicPlayListView$5;
.super Lif7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/MusicPlayListView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/MusicPlayListView;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/MusicPlayListView;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$5;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-direct {p0, p2, p3}, Lif7;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$5;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p1, p1, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView$5;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p2, p2, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnNoDoubleItemClickListener: select = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , cur = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MusicPlayListView"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView$5;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p3, p2, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    if-eqz p3, :cond_1

    iget-object p2, p2, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$5;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const-string p0, "vd_audio_playlist_audio_cl"

    const-wide/16 p1, 0x246c

    const/4 p3, 0x0

    invoke-static {p3, p0, p1, p2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
