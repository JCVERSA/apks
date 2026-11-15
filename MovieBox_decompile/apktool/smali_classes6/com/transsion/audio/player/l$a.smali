.class public final Lcom/transsion/audio/player/l$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/player/l;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/player/l;


# direct methods
.method constructor <init>(Lcom/transsion/audio/player/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/player/l$a;->a:Lcom/transsion/audio/player/l;

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
    iget-object v0, p0, Lcom/transsion/audio/player/l$a;->a:Lcom/transsion/audio/player/l;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/audio/player/l;->l(Lcom/transsion/audio/player/l;)Lcom/aliyun/player/AliPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->isMute()Z

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
    iget-object v0, p0, Lcom/transsion/audio/player/l$a;->a:Lcom/transsion/audio/player/l;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/audio/player/l;->l(Lcom/transsion/audio/player/l;)Lcom/aliyun/player/AliPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->pause()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/l$a;->a:Lcom/transsion/audio/player/l;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/audio/player/l;->l(Lcom/transsion/audio/player/l;)Lcom/aliyun/player/AliPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->start()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/l$a;->a:Lcom/transsion/audio/player/l;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/audio/player/l;->l(Lcom/transsion/audio/player/l;)Lcom/aliyun/player/AliPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setVolume(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
