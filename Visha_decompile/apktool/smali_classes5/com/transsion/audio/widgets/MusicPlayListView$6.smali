.class Lcom/transsion/audio/widgets/MusicPlayListView$6;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iput-object p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lif7;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/MusicPlayListView$6;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView$6;->lambda$OnNoDoubleItemClickListener$0(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$OnNoDoubleItemClickListener$0(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v0, v0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v2, v2, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getLastPlayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v0, v0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v2, v2, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v0, v0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPager:Lcom/transsion/widgets/RtlViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setCurrentItem(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->updateUI(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string p1, "vd_audio_playqueue_lastplay_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p1, p1, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->switchData()V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p1, p1, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playIndex()I

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p1, p1, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p2, p2, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p2, p1, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object p1, p1, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView$6;->val$context:Landroid/content/Context;

    new-instance p3, Lcom/transsion/audio/widgets/e;

    invoke-direct {p3, p0, p2}, Lcom/transsion/audio/widgets/e;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView$6;Landroid/content/Context;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
