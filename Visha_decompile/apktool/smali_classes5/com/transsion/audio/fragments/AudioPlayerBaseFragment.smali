.class public Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public l:Lcom/transsion/dbdata/beans/media/PlayAudioData;

.field public m:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public n:Lcom/transsion/dbdata/database/AudioAlbum;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

.field public r:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field public s:Lcom/transsion/WindowInfoViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->l:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    return-void
.end method

.method private initViewModel()V
    .locals 1

    const-class v0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->q:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    const-class v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->r:Lcom/transsion/playercommon/videomodel/PlayListModel;

    const-class v0, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/WindowInfoViewModel;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->s:Lcom/transsion/WindowInfoViewModel;

    return-void
.end method


# virtual methods
.method public P()V
    .locals 0

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->p:Z

    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->initViewModel()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->P()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "video_play_fragment_bean"

    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iput-object p3, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->l:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->l:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    const-string v0, "action"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->o:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->getLayoutId()I

    move-result p3

    if-gtz p3, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->getLayoutId()I

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->n:Lcom/transsion/dbdata/database/AudioAlbum;

    iget-boolean p2, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->p:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-string p2, "AudioPlayerBaseFragment"

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->r0()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "isAutoRecover player is not Alive"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string p0, "isAutoRecover,not need reset data"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->l:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioItem(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/player/MusicPlayManager;->u1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->o:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->l:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iput-object p1, p2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->l:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-virtual {p1, p0}, Lcom/transsion/audio/player/MusicPlayManager;->N0(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    :goto_0
    return-void
.end method
