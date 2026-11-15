.class public final Lcom/transsion/audio/player/AudioPlayer;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/player/AudioPlayer$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/audio/player/AudioPlayer$a;

.field private static final j:Lkotlin/Lazy;


# instance fields
.field private a:J

.field private b:Lcom/transsion/player/orplayer/f;

.field private c:Lcom/transsion/audio/player/a;

.field private d:J

.field private e:Lcom/transsion/baselib/db/audio/AudioBean;

.field private f:Lcom/transsion/baselib/db/audio/AudioBean;

.field private g:Ljava/util/List;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/audio/player/AudioPlayer$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/audio/player/AudioPlayer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/transsion/audio/player/b;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/transsion/audio/player/b;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/transsion/audio/player/AudioPlayer;->j:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/transsion/audio/player/AudioPlayer;->a:J

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->h:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private final A(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/e;->onIsPlayingChanged(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-void
.end method

.method private final B(Lgn/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/e;->onLoadingBegin(Lgn/e;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->c()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method private final C(Lgn/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/e;->onLoadingEnd(Lgn/e;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->d()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method private final D(IFLgn/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/player/orplayer/e;->onLoadingProgress(IFLgn/e;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-void
.end method

.method private final E(Lgn/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x6

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/audio/view/d;->q(I)Lcom/transsion/audio/view/d;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1}, Lcom/transsion/audio/player/AudioPlayer;->n(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/e;->onVideoPause(Lgn/e;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->h()V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method private final F(Lgn/e;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/transsion/audio/view/d;->q(I)Lcom/transsion/audio/view/d;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/transsion/audio/player/AudioPlayer;->n(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/e;->onVideoStart(Lgn/e;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->i()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method private final H(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/audio/player/AudioPlayer;->n(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v1, p1, p2}, Lcom/transsion/player/orplayer/e;->onPlayError(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Lcom/transsion/audio/player/a;->e(Lcom/transsion/player/orplayer/PlayError;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method private final I(Lgn/e;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/audio/player/AudioPlayer;->n(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/transsion/audio/view/d;->q(I)Lcom/transsion/audio/view/d;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/e;->onPlayerRelease(Lgn/e;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->b()V

    .line 41
    .line 42
    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 45
    .line 46
    return-void
.end method

.method private final M(JLgn/e;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-wide v2, p0, Lcom/transsion/audio/player/AudioPlayer;->a:J

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/transsion/audio/view/d;->p(Ljava/lang/Long;Ljava/lang/Long;)Lcom/transsion/audio/view/d;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setReadProcess(Ljava/lang/Long;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iget-wide v2, p0, Lcom/transsion/audio/player/AudioPlayer;->d:J

    .line 34
    .line 35
    sub-long/2addr v0, v2

    .line 36
    const-wide/16 v2, 0x3e8

    .line 37
    .line 38
    cmp-long v0, v0, v2

    .line 39
    .line 40
    if-lez v0, :cond_6

    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/player/orplayer/e;->onProgress(JLgn/e;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p3, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 67
    .line 68
    if-eqz p3, :cond_3

    .line 69
    .line 70
    sget-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p3}, Lcom/transsion/audio/viewmodel/HistoryListManager;->w(Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    iput-wide v0, p0, Lcom/transsion/audio/player/AudioPlayer;->d:J

    .line 84
    .line 85
    iget-object p3, p0, Lcom/transsion/audio/player/AudioPlayer;->h:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    move-object v0, v1

    .line 98
    :goto_1
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    if-nez p3, :cond_6

    .line 103
    .line 104
    iget-object p3, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 105
    .line 106
    if-eqz p3, :cond_5

    .line 107
    .line 108
    invoke-virtual {p3}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :cond_5
    iput-object v1, p0, Lcom/transsion/audio/player/AudioPlayer;->h:Ljava/lang/String;

    .line 113
    .line 114
    :cond_6
    iget-object p3, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 115
    .line 116
    if-eqz p3, :cond_7

    .line 117
    .line 118
    invoke-virtual {p3, p1, p2}, Lcom/transsion/audio/player/a;->f(J)V

    .line 119
    .line 120
    .line 121
    :cond_7
    return-void
.end method

.method public static synthetic a()Lcom/transsion/audio/player/AudioPlayer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/audio/player/AudioPlayer;->x()Lcom/transsion/audio/player/AudioPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/audio/player/AudioPlayer;Lgn/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->o(Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audio/player/AudioPlayer;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/audio/player/AudioPlayer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->A(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lcom/transsion/audio/player/AudioPlayer;Lgn/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->B(Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lcom/transsion/audio/player/AudioPlayer;Lgn/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->C(Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcom/transsion/audio/player/AudioPlayer;IFLgn/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/player/AudioPlayer;->D(IFLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lcom/transsion/audio/player/AudioPlayer;Lgn/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->E(Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/audio/player/AudioPlayer;Lgn/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->F(Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/transsion/audio/player/AudioPlayer;Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/player/AudioPlayer;->H(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/audio/player/AudioPlayer;Lgn/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/player/AudioPlayer;->I(Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcom/transsion/audio/player/AudioPlayer;JLgn/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/player/AudioPlayer;->M(JLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    const/4 v1, 0x4

    .line 12
    const/4 v2, 0x6

    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :pswitch_0
    const/4 v0, 0x7

    .line 18
    goto :goto_1

    .line 19
    :pswitch_1
    move v0, v2

    .line 20
    goto :goto_1

    .line 21
    :pswitch_2
    move v0, v1

    .line 22
    goto :goto_1

    .line 23
    :pswitch_3
    const/4 v0, 0x3

    .line 24
    :goto_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, v2, :cond_1

    .line 33
    .line 34
    if-lt v0, v1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    sget-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->k(Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move-object p1, v0

    .line 74
    :goto_2
    iget-object v2, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 75
    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, "onStateChanged "

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, " ..title.. "

    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const/4 v5, 0x4

    .line 108
    const/4 v6, 0x0

    .line 109
    const-string v2, "audio_log"

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final o(Lgn/e;)V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/audio/player/AudioPlayer;->n(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/transsion/audio/view/d;->q(I)Lcom/transsion/audio/view/d;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/e;->onCompletion(Lgn/e;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/audio/player/a;->b()V

    .line 41
    .line 42
    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 45
    .line 46
    return-void
.end method

.method private final w()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/audio/player/l;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/transsion/audio/player/l;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 11
    .line 12
    new-instance v1, Lcom/transsion/audio/player/AudioPlayer$initPlayer$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/transsion/audio/player/AudioPlayer$initPlayer$1;-><init>(Lcom/transsion/audio/player/AudioPlayer;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->setPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final x()Lcom/transsion/audio/player/AudioPlayer;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/audio/player/AudioPlayer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/audio/player/AudioPlayer;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final L(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 11

    .line 1
    const-string v0, "audio"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsion/audio/player/AudioPlayer;->w()V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "AudioPlayer --> prepare --> "

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v5, 0x4

    .line 33
    const/4 v6, 0x0

    .line 34
    const-string v2, "audio_log"

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->f:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/transsion/audio/player/a;->b()V

    .line 49
    .line 50
    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 53
    .line 54
    :cond_2
    new-instance v0, Lcom/transsion/audio/player/a;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lcom/transsion/audio/player/a;-><init>(Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->stop()V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    new-instance v9, Lgn/e;

    .line 79
    .line 80
    const/16 v7, 0x1c

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    const/4 v4, 0x0

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    move-object v1, v9

    .line 87
    move-object v2, v3

    .line 88
    invoke-direct/range {v1 .. v8}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v9}, Lcom/transsion/player/orplayer/f;->setDataSource(Lgn/e;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 95
    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 102
    .line 103
    check-cast v0, Ljava/lang/Iterable;

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_7

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 120
    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    new-instance v10, Lgn/e;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    const/16 v8, 0x1c

    .line 134
    .line 135
    const/4 v9, 0x0

    .line 136
    const/4 v5, 0x0

    .line 137
    const/4 v6, 0x0

    .line 138
    const/4 v7, 0x0

    .line 139
    move-object v2, v10

    .line 140
    invoke-direct/range {v2 .. v9}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v1, v10}, Lcom/transsion/player/orplayer/e;->onPrepare(Lgn/e;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_7
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/transsion/audio/player/a;->b()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iput-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 21
    .line 22
    return-void
.end method

.method public final O(Lcom/transsion/player/orplayer/e;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final P(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final Q(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/audio/player/AudioPlayer;->a:J

    .line 2
    .line 3
    return-void
.end method

.method public final R(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    return-void
.end method

.method public final S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final T()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final m(Lcom/transsion/player/orplayer/e;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->g:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/player/AudioPlayer;->N()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r()Lcom/transsion/audio/player/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->c:Lcom/transsion/audio/player/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/audio/player/AudioPlayer;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final t()Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->f:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Lcom/transsion/player/orplayer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y(Lcom/transsion/baselib/db/audio/AudioBean;)Z
    .locals 1

    .line 1
    const-string v0, "audio"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final z(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "audioUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/audio/player/AudioPlayer;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method
