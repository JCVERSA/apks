.class public Lcom/transsion/audio/activities/LockScreenActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/activities/LockScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/LockScreenActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/LockScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {v0}, Lcom/transsion/audio/activities/LockScreenActivity;->G0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {v0}, Lcom/transsion/audio/activities/LockScreenActivity;->G0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {v0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->L0(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-virtual {v0}, Lcom/transsion/audio/activities/LockScreenActivity;->C1()V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->B1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->F1()V

    return-void
.end method

.method public onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->F1()V

    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {v1}, Lcom/transsion/audio/activities/LockScreenActivity;->J0(Lcom/transsion/audio/activities/LockScreenActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->E1(I)V

    return-void
.end method

.method public onShowError(II)V
    .locals 0

    return-void
.end method

.method public onUpdateAll(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/LockScreenActivity;->K0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity$b;->onPlayerStateUpdate(I)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/LockScreenActivity;->K0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity$b;->onPlayListLoadFinished(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity$b;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/LockScreenActivity;->K0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity$b;->onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
