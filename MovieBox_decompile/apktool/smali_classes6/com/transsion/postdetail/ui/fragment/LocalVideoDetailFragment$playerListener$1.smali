.class public final Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->c(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->d(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final d(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->PLAYER_FOREGROUND:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/layer/a;->h(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/player/orplayer/f;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method


# virtual methods
.method public canNonSubscriberPlay(ZIILqn/d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/e$a;->a(Lcom/transsion/player/orplayer/e;ZIILqn/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initPlayer()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->b(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lgn/e;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/local/c0;->y(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onBufferedPosition(JLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->d(Lcom/transsion/player/orplayer/e;JLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCompletion(Lgn/e;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->h()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v2, "onCompletion"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->o1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->T0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->u2()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->g(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "onIsPlayingChanged\uff1a"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v4, 0x4

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->a1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->b0(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public onLoadingBegin(Lgn/e;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->i()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v2, "onLoadingBegin"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v0, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOADING_BEGIN:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    aput-object v2, v1, v3

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->j1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->K0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->j()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v2, "onLoadingEnd"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->R0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Landroid/os/Handler;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v0, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOADING_END:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    aput-object v2, v1, v3

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onLoadingProgress(IFLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->m(Lcom/transsion/player/orplayer/e;IFLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoopingStart()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v2, "onLoopingStart"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOOPING_START:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->p(Lcom/transsion/player/orplayer/e;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, "errorInfo"

    .line 8
    .line 9
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 13
    .line 14
    invoke-static {v4}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->r1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 15
    .line 16
    .line 17
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 18
    .line 19
    invoke-static {v4, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->A1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/player/orplayer/PlayError;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 23
    .line 24
    invoke-static {v4}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Lcom/transsion/postdetail/layer/local/c0;->l(Lcom/transsion/player/orplayer/PlayError;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v7, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 44
    .line 45
    invoke-static {v7}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->X0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    const/4 v9, 0x0

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    invoke-virtual/range {p2 .. p2}, Lgn/e;->j()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v10, v9

    .line 58
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v12, "onPlayError()  errorCode:"

    .line 64
    .line 65
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v4, " errorMessage:"

    .line 72
    .line 73
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v4, "  playProgress = "

    .line 80
    .line 81
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v4, " url:"

    .line 88
    .line 89
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v4, " --> \u957f\u64ad\u653e\u5931\u8d25\u4e86"

    .line 96
    .line 97
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const-string v6, "long_video_play"

    .line 105
    .line 106
    invoke-virtual {v5, v6, v4, v3}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 110
    .line 111
    invoke-static {v4}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    sget-object v7, Lcom/transsion/postdetail/layer/listener/LayerFlag;->PLAY_ERROR:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 116
    .line 117
    new-array v8, v3, [Ljava/lang/Object;

    .line 118
    .line 119
    aput-object v1, v8, v2

    .line 120
    .line 121
    invoke-virtual {v4, v7, v8}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 125
    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-nez v1, :cond_2

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    const v7, 0x20030004

    .line 138
    .line 139
    .line 140
    if-ne v1, v7, :cond_3

    .line 141
    .line 142
    move v1, v3

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    :goto_1
    move v1, v2

    .line 145
    :goto_2
    invoke-static {v4, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->G1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 149
    .line 150
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->X0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    .line 151
    .line 152
    .line 153
    move-result-wide v7

    .line 154
    const-wide/16 v11, 0x0

    .line 155
    .line 156
    cmp-long v1, v7, v11

    .line 157
    .line 158
    if-lez v1, :cond_4

    .line 159
    .line 160
    iget-object v13, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 161
    .line 162
    invoke-static {v13}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->O0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 167
    .line 168
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->X0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v15

    .line 172
    const/16 v18, 0x4

    .line 173
    .line 174
    const/16 v19, 0x0

    .line 175
    .line 176
    const/16 v17, 0x0

    .line 177
    .line 178
    invoke-static/range {v13 .. v19}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->s3(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;JZILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 182
    .line 183
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_6

    .line 188
    .line 189
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 190
    .line 191
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    const/4 v9, 0x4

    .line 196
    const/4 v10, 0x0

    .line 197
    const-string v7, "onPlayError\uff0c not net----"

    .line 198
    .line 199
    const/4 v8, 0x0

    .line 200
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 204
    .line 205
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->O0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v1, :cond_5

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 212
    .line 213
    .line 214
    move-result-wide v11

    .line 215
    :cond_5
    const-wide/32 v4, 0x100000

    .line 216
    .line 217
    .line 218
    cmp-long v1, v11, v4

    .line 219
    .line 220
    if-lez v1, :cond_7

    .line 221
    .line 222
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 223
    .line 224
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    sget-object v4, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOADING_END:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 229
    .line 230
    new-array v5, v2, [Ljava/lang/Object;

    .line 231
    .line 232
    invoke-virtual {v1, v4, v5}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 236
    .line 237
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    sget-object v4, Lcom/transsion/postdetail/layer/listener/LayerFlag;->NETWORK_CHANGE:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 242
    .line 243
    new-array v3, v3, [Ljava/lang/Object;

    .line 244
    .line 245
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 246
    .line 247
    aput-object v5, v3, v2

    .line 248
    .line 249
    invoke-virtual {v1, v4, v3}, Lcom/transsion/postdetail/layer/a;->h(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_6
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 254
    .line 255
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->l1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-nez v1, :cond_7

    .line 260
    .line 261
    const-string v1, "video error\uff0creload~~ from onPlayError"

    .line 262
    .line 263
    invoke-virtual {v5, v6, v1, v3}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    .line 265
    .line 266
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 267
    .line 268
    invoke-static {v1, v2, v3, v9}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->o3(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;ZILjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_7
    :goto_3
    return-void
.end method

.method public onPlayerRelease(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->t(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayerReset()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v2, "onPlayerReset"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->PLAYER_RESET:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->T0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->w2()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onPrepare(Lgn/e;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->r1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->G1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->I1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->O0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object p1, v0

    .line 45
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "onPrepare, epse = "

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const/4 v5, 0x4

    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->O0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 77
    .line 78
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1$onPrepare$1;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 89
    .line 90
    invoke-direct {v4, p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1$onPrepare$1;-><init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lkotlin/coroutines/Continuation;)V

    .line 91
    .line 92
    .line 93
    const/4 v5, 0x2

    .line 94
    const/4 v6, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 101
    .line 102
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v4, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1$onPrepare$2;

    .line 111
    .line 112
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 113
    .line 114
    invoke-direct {v4, p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1$onPrepare$2;-><init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lkotlin/coroutines/Continuation;)V

    .line 115
    .line 116
    .line 117
    const/4 v5, 0x2

    .line 118
    const/4 v6, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 121
    .line 122
    .line 123
    :goto_1
    return-void
.end method

.method public onProgress(JLgn/e;)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3, p1, p2}, Lcom/transsion/postdetail/layer/local/c0;->m(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 13
    .line 14
    invoke-static {p3, p1, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->F1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;J)V

    .line 15
    .line 16
    .line 17
    iget-object p3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 18
    .line 19
    invoke-static {p3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    sget-object v0, Lcom/transsion/postdetail/layer/listener/LayerFlag;->PROGRESS:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 24
    .line 25
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object v1, v2, v3

    .line 34
    .line 35
    invoke-virtual {p3, v0, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 39
    .line 40
    invoke-static {p3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->T0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 45
    .line 46
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/q0;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lcom/transsion/postdetail/ui/fragment/q0;-><init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, p1, p2, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N(JLkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/c0;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v3, "onRenderFirstFrame"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->RENDER_FIRST_FRAME:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/player/orplayer/f;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->T0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 60
    .line 61
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/r0;

    .line 62
    .line 63
    invoke-direct {v2, v1}, Lcom/transsion/postdetail/ui/fragment/r0;-><init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Y1(Lkotlin/jvm/functions/Function0;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->B(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->C(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/local/c0;->t(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onTracksChange(Lqn/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->D(Lcom/transsion/player/orplayer/e;Lqn/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->E(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/local/c0;->u(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onVideoPause(Lgn/e;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->z3(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->v()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v4, 0x4

    .line 27
    const/4 v5, 0x0

    .line 28
    const-string v2, "onVideoPause"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object v1, Lcom/transsion/postdetail/util/s;->a:Lcom/transsion/postdetail/util/s;

    .line 44
    .line 45
    invoke-virtual {v1, p1, v0}, Lcom/transsion/postdetail/util/s;->b(Landroid/app/Activity;Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->VIDEO_PAUSE:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 55
    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->R1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;I)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v3, "onVideoSizeChanged"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, v0

    .line 25
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "onVideoSizeChanged width:"

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ",height:"

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    move-object v1, v0

    .line 60
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->VIDEO_SIZE_CHANGED:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const/4 v2, 0x2

    .line 80
    new-array v2, v2, [Ljava/lang/Object;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    aput-object p1, v2, v3

    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    aput-object p2, v2, p1

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public onVideoStart(Lgn/e;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->r1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->z3(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->w()V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x0

    .line 33
    const-string v3, "onVideoStart"

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->V0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/Runnable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->VIDEO_START:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 61
    .line 62
    new-array v2, v0, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {p1, v1, v2}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/a;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object v1, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOADING_END:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    .line 74
    .line 75
    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Lcom/transsion/postdetail/layer/a;->g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->M0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lep/a;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    invoke-interface {p1}, Lep/a;->pause()V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->T1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->T0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->y2()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->K(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
