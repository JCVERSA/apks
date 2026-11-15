.class public Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->o1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lk78;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->e(Lk78;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;ILcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->f(ILcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0}, Lao;->Z()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lk78;Ljava/util/List;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lk78;->x0(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lk78;->r0(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addForFavorites(Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p0, :cond_0

    const-string p0, "mv"

    goto :goto_0

    :cond_0
    const-string p0, "audio"

    :goto_0
    const-string v0, "playpage"

    invoke-static {p1, p0, v0}, Lp06;->u0(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addToPlayList()V
    .locals 4

    new-instance v0, Lk78;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->W0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v2, v2, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0, v1, v2}, Lk78;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk78;->s0(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk78;->u0(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lk78;->n0(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;ZZ)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->X0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p0

    new-instance v1, Lwv;

    invoke-direct {v1}, Lwv;-><init>()V

    invoke-virtual {p0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v1, Lxv;

    invoke-direct {v1, v0}, Lxv;-><init>(Lk78;)V

    invoke-virtual {p0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public choiceBackground()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->R0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    return-void
.end method

.method public final synthetic f(ILcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->q:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iget-object p1, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->d(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showAudioInfo()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v1, v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->c0:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->V0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-boolean v2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->S:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    :goto_0
    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->o0(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public showEq()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->S0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    return-void
.end method

.method public showInfo()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Q0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    return-void
.end method

.method public showMore(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->c0:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->N0(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    const-string p0, "vd_audio_more_pop_show"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public showTimer()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->T0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    const-string p0, "vd_audio_timer_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public speedSetting()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Z0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioSpeedSettingActivity;->j0(Landroid/content/Context;)V

    return-void
.end method

.method public switchMusicMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->B0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->B0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->P0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->O0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    :goto_0
    return-void
.end method

.method public updateDisplayUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    new-instance v1, Lyv;

    invoke-direct {v1, p0, v0, p1}, Lyv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;ILcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {v1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iput-object p1, v0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateUI()V

    :cond_3
    return-void
.end method

.method public updatePlayPause(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updatePlayPauseButton(I)V

    :cond_0
    return-void
.end method
