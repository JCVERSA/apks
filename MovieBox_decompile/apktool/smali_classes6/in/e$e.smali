.class public final Lin/e$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/e;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/e;


# direct methods
.method constructor <init>(Lin/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/e$e;->a:Lin/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isMute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lin/e$e;->a:Lin/e;

    .line 2
    .line 3
    invoke-static {v0}, Lin/e;->j(Lin/e;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/common/a0;->W()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lin/e$e;->a:Lin/e;

    .line 2
    .line 3
    invoke-static {v0}, Lin/e;->j(Lin/e;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/common/a0;->pause()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    iget-object v0, p0, Lin/e$e;->a:Lin/e;

    .line 2
    .line 3
    invoke-static {v0}, Lin/e;->j(Lin/e;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/common/a0;->play()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lin/e$e;->a:Lin/e;

    .line 2
    .line 3
    invoke-static {v0}, Lin/e;->j(Lin/e;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setVolume(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
