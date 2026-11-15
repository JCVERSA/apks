.class public final Lin/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/e$a;,
        Lin/e$b;
    }
.end annotation


# static fields
.field public static final C:Lin/e$a;


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private B:Lcom/transsion/player/enum/ScaleMode;

.field private final a:Landroid/content/Context;

.field private final b:Lin/j;

.field private c:Z

.field private d:Z

.field private e:Lcom/transsion/player/ui/render/SurfaceRenderView;

.field private f:Lcom/transsion/player/ui/render/TextureRenderView;

.field private g:Lcom/transsion/player/orplayer/c;

.field private h:Lgn/e;

.field private i:Ljava/lang/Float;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:F

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroidx/media3/exoplayer/ExoPlayer;

.field private r:Ljava/lang/Boolean;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Lcom/transsion/player/exo/ORExoDecoderType;

.field private final v:Landroidx/media3/common/a0$d;

.field private w:Landroidx/media3/exoplayer/b4;

.field private x:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private y:Landroidx/media3/exoplayer/u2;

.field private final z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lin/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lin/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lin/e;->C:Lin/e$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lin/j;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lin/e;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lin/e;->b:Lin/j;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lin/e;->m:F

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lin/e;->r:Ljava/lang/Boolean;

    const/16 p1, 0x2d0

    .line 6
    iput p1, p0, Lin/e;->s:I

    .line 7
    sget-object p1, Lcom/transsion/player/exo/ORExoDecoderType;->HARDWARE:Lcom/transsion/player/exo/ORExoDecoderType;

    iput-object p1, p0, Lin/e;->u:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 8
    new-instance p2, Lin/e$d;

    invoke-direct {p2, p0}, Lin/e$d;-><init>(Lin/e;)V

    iput-object p2, p0, Lin/e;->v:Landroidx/media3/common/a0$d;

    if-eqz p3, :cond_0

    .line 9
    invoke-direct {p0}, Lin/e;->G()V

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lin/e;->F(Lcom/transsion/player/exo/ORExoDecoderType;)V

    .line 11
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lin/e;->z:Landroid/os/Handler;

    .line 13
    new-instance p1, Lin/b;

    invoke-direct {p1, p0}, Lin/b;-><init>(Lin/e;)V

    iput-object p1, p0, Lin/e;->A:Ljava/lang/Runnable;

    .line 14
    sget-object p1, Lcom/transsion/player/enum/ScaleMode;->SCALE_TO_FILL:Lcom/transsion/player/enum/ScaleMode;

    iput-object p1, p0, Lin/e;->B:Lcom/transsion/player/enum/ScaleMode;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lin/j;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 15
    invoke-static {}, Lin/k;->a()Lin/j;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lin/e;-><init>(Landroid/content/Context;Lin/j;Z)V

    return-void
.end method

.method public static final synthetic A(Lin/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lin/e;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method private final B(Lgn/e;)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/media3/datasource/rtmp/RtmpDataSource$Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/datasource/rtmp/RtmpDataSource$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lsn/e;->a:Lsn/e;

    .line 7
    .line 8
    const-string v2, "addRtmpDataSource "

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const-string v4, "ORExoPlayer"

    .line 12
    .line 13
    invoke-virtual {v1, v4, v2, v3}, Lsn/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroidx/media3/exoplayer/source/b0$b;

    .line 17
    .line 18
    check-cast v0, Landroidx/media3/datasource/a$a;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/b0$b;-><init>(Landroidx/media3/datasource/a$a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lgn/e;->j()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroidx/media3/common/t;->b(Ljava/lang/String;)Landroidx/media3/common/t;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/b0$b;->h(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/b0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "createMediaSource(...)"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->U(Landroidx/media3/exoplayer/source/r;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private static final D(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;
    .locals 0

    .line 1
    sget-object p0, Landroidx/media3/exoplayer/drm/t;->a:Landroidx/media3/exoplayer/drm/t;

    .line 2
    .line 3
    return-object p0
.end method

.method private final E()Lgn/e;
    .locals 6

    .line 1
    iget-object v0, p0, Lin/e;->h:Lgn/e;

    .line 2
    .line 3
    iget-object v1, p0, Lin/e;->t:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lin/e;->J()V

    .line 6
    .line 7
    .line 8
    const-string v2, "video/av01"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v2, Lcom/transsion/player/exo/ORExoDecoderType;->AV1:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v2, Lcom/transsion/player/exo/ORExoDecoderType;->FFMPEG:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 20
    .line 21
    :goto_0
    iput-object v2, p0, Lin/e;->u:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 22
    .line 23
    sget-object v3, Lsn/e;->a:Lsn/e;

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v5, "\u91cd\u65b0\u521b\u5efa\u64ad\u653e\u5668\u5207\u6362\u7f16\u7801, DecoderType:"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ",MimeTyp:"

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x1

    .line 51
    const-string v4, "ORExoPlayer"

    .line 52
    .line 53
    invoke-virtual {v3, v4, v1, v2}, Lsn/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lin/e;->u:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 57
    .line 58
    invoke-direct {p0, v1}, Lin/e;->F(Lcom/transsion/player/exo/ORExoDecoderType;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lin/e;->I()V

    .line 62
    .line 63
    .line 64
    return-object v0
.end method

.method private final F(Lcom/transsion/player/exo/ORExoDecoderType;)V
    .locals 6

    .line 1
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "createPlayer, DecoderType:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "ORExoPlayer"

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v0, v2, v1, v3}, Lsn/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroidx/media3/exoplayer/m$b;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/media3/exoplayer/m$b;-><init>()V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x1f4

    .line 32
    .line 33
    const/16 v2, 0x3e8

    .line 34
    .line 35
    const/16 v4, 0x1388

    .line 36
    .line 37
    const/16 v5, 0x4e20

    .line 38
    .line 39
    invoke-virtual {v0, v4, v5, v1, v2}, Landroidx/media3/exoplayer/m$b;->b(IIII)Landroidx/media3/exoplayer/m$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, -0x1

    .line 44
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/m$b;->d(I)Landroidx/media3/exoplayer/m$b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/m$b;->c(Z)Landroidx/media3/exoplayer/m$b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroidx/media3/exoplayer/m$b;->a()Landroidx/media3/exoplayer/m;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lin/e;->y:Landroidx/media3/exoplayer/u2;

    .line 57
    .line 58
    iget-object v0, p0, Lin/e;->a:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v0, p1}, Lin/a;->b(Landroid/content/Context;Lcom/transsion/player/exo/ORExoDecoderType;)Landroidx/media3/exoplayer/b4;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lin/e;->w:Landroidx/media3/exoplayer/b4;

    .line 65
    .line 66
    new-instance p1, Landroidx/media3/exoplayer/ExoPlayer$b;

    .line 67
    .line 68
    iget-object v0, p0, Lin/e;->a:Landroid/content/Context;

    .line 69
    .line 70
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$b;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Landroidx/media3/exoplayer/source/i;

    .line 74
    .line 75
    iget-object v1, p0, Lin/e;->a:Landroid/content/Context;

    .line 76
    .line 77
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/i;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lin/e;->a:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v1}, Lin/a;->d(Landroid/content/Context;)Landroidx/media3/datasource/a$a;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/i;->q(Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/i;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$b;->q(Landroidx/media3/exoplayer/source/r$a;)Landroidx/media3/exoplayer/ExoPlayer$b;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Lin/e;->w:Landroidx/media3/exoplayer/b4;

    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$b;->r(Landroidx/media3/exoplayer/b4;)Landroidx/media3/exoplayer/ExoPlayer$b;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object v0, p0, Lin/e;->y:Landroidx/media3/exoplayer/u2;

    .line 104
    .line 105
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$b;->p(Landroidx/media3/exoplayer/u2;)Landroidx/media3/exoplayer/ExoPlayer$b;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayer$b;->h()Landroidx/media3/exoplayer/ExoPlayer;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const/4 v0, 0x0

    .line 117
    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->setPlayWhenReady(Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lin/e;->v:Landroidx/media3/common/a0$d;

    .line 121
    .line 122
    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->M(Landroidx/media3/common/a0$d;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Lin/e$c;

    .line 126
    .line 127
    invoke-direct {v0, p0}, Lin/e$c;-><init>(Lin/e;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->D(Lx1/c;)V

    .line 131
    .line 132
    .line 133
    iput-object p1, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 134
    .line 135
    return-void
.end method

.method private final G()V
    .locals 3

    .line 1
    new-instance v0, Lin/e$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lin/e$e;-><init>(Lin/e;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsion/player/orplayer/c;

    .line 7
    .line 8
    new-instance v2, Lin/c;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lin/c;-><init>(Lin/e;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0, v2}, Lcom/transsion/player/orplayer/c;-><init>(Lcom/transsion/player/orplayer/d;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lin/e;->g:Lcom/transsion/player/orplayer/c;

    .line 17
    .line 18
    return-void
.end method

.method private static final H(Lin/e;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p0, p0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/transsion/player/orplayer/e;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/e;->onFocusChange(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private final I()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lin/e;->l:Z

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lin/e;->setMute(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lin/e;->i:Ljava/lang/Float;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lin/e;->setVolume(F)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lin/e;->k:Z

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lin/e;->setLooping(Z)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lin/e;->j:Z

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lin/e;->setAutoPlay(Z)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lin/e;->m:F

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lin/e;->setSpeed(F)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lin/e;->e:Lcom/transsion/player/ui/render/SurfaceRenderView;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lin/e;->setSurfaceView(Landroid/view/SurfaceView;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lin/e;->f:Lcom/transsion/player/ui/render/TextureRenderView;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lin/e;->setTextureView(Landroid/view/TextureView;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lin/e;->B:Lcom/transsion/player/enum/ScaleMode;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lin/e;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final J()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lin/e;->c:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lin/e;->p:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lin/e;->d:Z

    .line 7
    .line 8
    const-string v0, "ORExoPlayer"

    .line 9
    .line 10
    const-string v1, "innerRelease"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    sget-object v0, Lon/f0;->a:Lon/f0;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lon/f0;->a(Lcom/transsion/player/orplayer/f;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Landroidx/media3/common/a0;->stop()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Landroidx/media3/common/a0;->C()V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Landroidx/media3/common/a0;->clearVideoSurface()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method private final K(Lgn/e;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lgn/e;->i()Lcom/transsion/player/enum/PlayMimeType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->RTMP:Lcom/transsion/player/enum/PlayMimeType;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {p1}, Lgn/e;->j()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v3, "toLowerCase(...)"

    .line 22
    .line 23
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    const/4 v4, 0x0

    .line 28
    const-string v5, "rtmp://"

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-static {v0, v5, v6, v3, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lgn/e;->q(Lcom/transsion/player/enum/PlayMimeType;)V

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    return v6
.end method

.method private final L(Lgn/e;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lgn/e;->i()Lcom/transsion/player/enum/PlayMimeType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->DASH:Lcom/transsion/player/enum/PlayMimeType;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Lgn/e;->i()Lcom/transsion/player/enum/PlayMimeType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v3, Lcom/transsion/player/enum/PlayMimeType;->HLS:Lcom/transsion/player/enum/PlayMimeType;

    .line 15
    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lgn/e;->j()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v4, ".mpd"

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x0

    .line 28
    invoke-static {v0, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lgn/e;->q(Lcom/transsion/player/enum/PlayMimeType;)V

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    invoke-virtual {p1}, Lgn/e;->j()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, ".m3u8"

    .line 43
    .line 44
    invoke-static {v0, v1, v5, v6, v7}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Lgn/e;->q(Lcom/transsion/player/enum/PlayMimeType;)V

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_2
    return v5

    .line 55
    :cond_3
    :goto_0
    return v2
.end method

.method private final M()V
    .locals 4

    .line 1
    iget-object v0, p0, Lin/e;->z:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lin/e;->A:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lin/e;->z:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lin/e;->A:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 v2, 0x1f4

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final N(Lx1/c$a;Landroidx/media3/common/i0;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    const/4 v4, 0x1

    .line 14
    if-ge v3, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-string v6, "get(...)"

    .line 25
    .line 26
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast v5, Landroidx/media3/common/i0$a;

    .line 30
    .line 31
    iget v6, v5, Landroidx/media3/common/i0$a;->a:I

    .line 32
    .line 33
    move v7, v2

    .line 34
    :goto_1
    if-ge v7, v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {v5, v7}, Landroidx/media3/common/i0$a;->b(I)Landroidx/media3/common/r;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    const-string v9, "getTrackFormat(...)"

    .line 41
    .line 42
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v9, Lsn/e;->a:Lsn/e;

    .line 46
    .line 47
    iget-object v10, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 48
    .line 49
    iget v11, v8, Landroidx/media3/common/r;->j:I

    .line 50
    .line 51
    new-instance v12, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v13, "onGetTracksInfo  MimeType:"

    .line 57
    .line 58
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v10, "\uff0c bitrate\uff1a"

    .line 65
    .line 66
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    const/4 v14, 0x4

    .line 77
    const/4 v15, 0x0

    .line 78
    const-string v11, "ORExoPlayer"

    .line 79
    .line 80
    const/4 v13, 0x0

    .line 81
    move-object v10, v9

    .line 82
    invoke-static/range {v10 .. v15}, Lsn/e;->i(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v10, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v10, :cond_0

    .line 88
    .line 89
    const/4 v11, 0x2

    .line 90
    const/4 v12, 0x0

    .line 91
    const-string v13, "video"

    .line 92
    .line 93
    invoke-static {v10, v13, v2, v11, v12}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    if-ne v10, v4, :cond_0

    .line 98
    .line 99
    iget-object v8, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v8, v0, Lin/e;->t:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v10, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v11, "--------onGetTracksInfo curVideoMimeType:"

    .line 109
    .line 110
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    const/4 v14, 0x4

    .line 121
    const/4 v15, 0x0

    .line 122
    const-string v11, "ORExoPlayer"

    .line 123
    .line 124
    const/4 v13, 0x0

    .line 125
    move-object v10, v9

    .line 126
    invoke-static/range {v10 .. v15}, Lsn/e;->f(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, v0, Lin/e;->u:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 136
    .line 137
    sget-object v2, Lcom/transsion/player/exo/ORExoDecoderType;->AV1:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 138
    .line 139
    if-eq v1, v2, :cond_3

    .line 140
    .line 141
    iget-object v1, v0, Lin/e;->t:Ljava/lang/String;

    .line 142
    .line 143
    const-string v2, "video/av01"

    .line 144
    .line 145
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_3

    .line 150
    .line 151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 152
    .line 153
    const/16 v2, 0x1d

    .line 154
    .line 155
    if-gt v1, v2, :cond_3

    .line 156
    .line 157
    sget-object v1, Lsn/e;->a:Lsn/e;

    .line 158
    .line 159
    iget-object v2, v0, Lin/e;->t:Ljava/lang/String;

    .line 160
    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v5, "exo av1\uff0c\u5f3a\u5236\u5207\u6362\u5230\u8f6f\u89e3\uff0c MimeType:"

    .line 167
    .line 168
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const-string v3, "ORExoPlayer"

    .line 179
    .line 180
    invoke-virtual {v1, v3, v2, v4}, Lsn/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    .line 182
    .line 183
    invoke-direct/range {p0 .. p0}, Lin/e;->E()Lgn/e;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-eqz v1, :cond_3

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lin/e;->setDataSource(Lgn/e;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {p0 .. p0}, Lin/e;->prepare()V

    .line 193
    .line 194
    .line 195
    :cond_3
    return-void
.end method

.method private final O()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    if-ge v4, v2, :cond_3

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v6, "get(...)"

    .line 34
    .line 35
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v5, Landroidx/media3/common/i0$a;

    .line 39
    .line 40
    iget v6, v5, Landroidx/media3/common/i0$a;->a:I

    .line 41
    .line 42
    move v7, v3

    .line 43
    :goto_1
    if-ge v7, v6, :cond_2

    .line 44
    .line 45
    invoke-virtual {v5, v7}, Landroidx/media3/common/i0$a;->b(I)Landroidx/media3/common/r;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    const-string v9, "getTrackFormat(...)"

    .line 50
    .line 51
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v9, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v9}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    const-string v10, "--onPrepare2GetBitrate  MimeType:"

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    iget-object v9, v0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 65
    .line 66
    if-eqz v9, :cond_1

    .line 67
    .line 68
    invoke-interface {v9}, Landroidx/media3/exoplayer/ExoPlayer;->J()Landroidx/media3/common/r;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    if-eqz v9, :cond_1

    .line 73
    .line 74
    iget v9, v9, Landroidx/media3/common/r;->j:I

    .line 75
    .line 76
    iget v11, v8, Landroidx/media3/common/r;->j:I

    .line 77
    .line 78
    if-ne v9, v11, :cond_1

    .line 79
    .line 80
    iput v11, v0, Lin/e;->n:I

    .line 81
    .line 82
    sget-object v12, Lsn/e;->a:Lsn/e;

    .line 83
    .line 84
    iget-object v8, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v9, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v8, "\uff0cvideoBitrate\uff1a"

    .line 98
    .line 99
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    const/16 v16, 0x4

    .line 110
    .line 111
    const/16 v17, 0x0

    .line 112
    .line 113
    const-string v13, "ORExoPlayer"

    .line 114
    .line 115
    const/4 v15, 0x0

    .line 116
    invoke-static/range {v12 .. v17}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget-object v8, v0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    .line 121
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-eqz v9, :cond_1

    .line 130
    .line 131
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    check-cast v9, Lcom/transsion/player/orplayer/e;

    .line 136
    .line 137
    iget v10, v0, Lin/e;->n:I

    .line 138
    .line 139
    invoke-interface {v9, v10}, Lcom/transsion/player/orplayer/e;->onTracksVideoBitrateChange(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_0
    iget-object v9, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v9}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-eqz v9, :cond_1

    .line 150
    .line 151
    iget-object v9, v0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 152
    .line 153
    if-eqz v9, :cond_1

    .line 154
    .line 155
    invoke-interface {v9}, Landroidx/media3/exoplayer/ExoPlayer;->R()Landroidx/media3/common/r;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    if-eqz v9, :cond_1

    .line 160
    .line 161
    iget v9, v9, Landroidx/media3/common/r;->j:I

    .line 162
    .line 163
    iget v11, v8, Landroidx/media3/common/r;->j:I

    .line 164
    .line 165
    if-ne v9, v11, :cond_1

    .line 166
    .line 167
    iput v11, v0, Lin/e;->o:I

    .line 168
    .line 169
    sget-object v12, Lsn/e;->a:Lsn/e;

    .line 170
    .line 171
    iget-object v8, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 172
    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v8, "\uff0caudioBitrate\uff1a"

    .line 185
    .line 186
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    const/16 v16, 0x4

    .line 197
    .line 198
    const/16 v17, 0x0

    .line 199
    .line 200
    const-string v13, "ORExoPlayer"

    .line 201
    .line 202
    const/4 v15, 0x0

    .line 203
    invoke-static/range {v12 .. v17}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    iget-object v8, v0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 207
    .line 208
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-eqz v9, :cond_1

    .line 217
    .line 218
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    check-cast v9, Lcom/transsion/player/orplayer/e;

    .line 223
    .line 224
    iget v10, v0, Lin/e;->o:I

    .line 225
    .line 226
    invoke-interface {v9, v10}, Lcom/transsion/player/orplayer/e;->onTracksAudioBitrateChange(I)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_3
    return-void
.end method

.method private static final P(Lin/e;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/a0;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentPosition()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    :goto_0
    iget-object v2, p0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/transsion/player/orplayer/e;

    .line 40
    .line 41
    iget-object v4, p0, Lin/e;->h:Lgn/e;

    .line 42
    .line 43
    invoke-interface {v3, v0, v1, v4}, Lcom/transsion/player/orplayer/e;->onProgress(JLgn/e;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-direct {p0}, Lin/e;->M()V

    .line 48
    .line 49
    .line 50
    :goto_2
    return-void
.end method

.method public static synthetic c(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lin/e;->D(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lin/e;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lin/e;->P(Lin/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lin/e;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lin/e;->H(Lin/e;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lin/e;)Lgn/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lin/e;->E()Lgn/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lin/e;)Lcom/transsion/player/orplayer/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/e;->g:Lcom/transsion/player/orplayer/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lin/e;)Lcom/transsion/player/exo/ORExoDecoderType;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/e;->u:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lin/e;)Lon/z;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lin/e;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lin/e;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/e;->z:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lin/e;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lin/e;)Lgn/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/e;->h:Lgn/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lin/e;)Lcom/transsion/player/ui/render/SurfaceRenderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/e;->e:Lcom/transsion/player/ui/render/SurfaceRenderView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lin/e;)Lcom/transsion/player/ui/render/TextureRenderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/e;->f:Lcom/transsion/player/ui/render/TextureRenderView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lin/e;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/e;->A:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lin/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/e;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Lin/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lin/e;->s:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic s(Lin/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lin/e;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic t(Lin/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lin/e;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic u(Lin/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lin/e;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic v(Lin/e;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/e;->r:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic w(Lin/e;Lx1/c$a;Landroidx/media3/common/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lin/e;->N(Lx1/c$a;Landroidx/media3/common/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lin/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lin/e;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lin/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lin/e;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic z(Lin/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lin/e;->c:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final C(Lgn/e;)Z
    .locals 7

    .line 1
    const-string v0, "mediaSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lgn/e;->g()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lgn/e;->j()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    new-instance v1, Landroidx/media3/common/t$c;

    .line 17
    .line 18
    invoke-direct {v1}, Landroidx/media3/common/t$c;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/media3/common/t$c;->j(Ljava/lang/String;)Landroidx/media3/common/t$c;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lgn/e;->k()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Landroidx/media3/common/t$c;->d(Ljava/lang/String;)Landroidx/media3/common/t$c;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lgn/e;->f()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Landroidx/media3/common/t$c;->b(Ljava/lang/String;)Landroidx/media3/common/t$c;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lgn/e;->e()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Landroidx/media3/common/t$c;->h(Ljava/lang/Object;)Landroidx/media3/common/t$c;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "build(...)"

    .line 58
    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v2, "http"

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x2

    .line 67
    invoke-static {v0, v2, v4, v5, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    new-instance v0, Landroidx/media3/datasource/c$b;

    .line 74
    .line 75
    invoke-direct {v0}, Landroidx/media3/datasource/c$b;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lgn/e;->d()Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroidx/media3/datasource/c$b;->b(Ljava/util/Map;)Landroidx/media3/datasource/c$b;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Landroidx/media3/datasource/b$a;

    .line 89
    .line 90
    iget-object v2, p0, Lin/e;->a:Landroid/content/Context;

    .line 91
    .line 92
    invoke-direct {v0, v2}, Landroidx/media3/datasource/b$a;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lgn/e;->i()Lcom/transsion/player/enum/PlayMimeType;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v6, "dash addStreamDataSource, mimeType:"

    .line 105
    .line 106
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lgn/e;->i()Lcom/transsion/player/enum/PlayMimeType;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    sget-object v3, Lin/e$b;->a:[I

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    aget v2, v3, v2

    .line 123
    .line 124
    const/4 v3, 0x1

    .line 125
    if-eq v2, v3, :cond_4

    .line 126
    .line 127
    if-eq v2, v5, :cond_3

    .line 128
    .line 129
    return v4

    .line 130
    :cond_3
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 131
    .line 132
    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Landroidx/media3/datasource/a$a;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    new-instance v2, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    .line 137
    .line 138
    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Landroidx/media3/datasource/a$a;)V

    .line 139
    .line 140
    .line 141
    :goto_1
    new-instance v0, Lin/d;

    .line 142
    .line 143
    invoke-direct {v0}, Lin/d;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/source/r$a;->e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/r$a;->d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v1, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 155
    .line 156
    if-eqz v1, :cond_5

    .line 157
    .line 158
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->U(Landroidx/media3/exoplayer/source/r;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    iput-object p1, p0, Lin/e;->h:Lgn/e;

    .line 162
    .line 163
    return v3
.end method

.method public addDataSource(Lgn/e;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$b;->a(Lcom/transsion/player/orplayer/f;Lgn/e;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public addPlayerListener(Lcom/transsion/player/orplayer/e;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$b;->b(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/e;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public changeTrackSelection(Lqn/d;I)V
    .locals 3

    .line 1
    const-string v0, "mediaTrackGroup"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lqn/d;->b()[Lqn/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v0, v0

    .line 11
    if-ltz p2, :cond_2

    .line 12
    .line 13
    if-lt p2, v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 18
    .line 19
    invoke-virtual {p1}, Lqn/d;->b()[Lqn/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    aget-object v0, v0, p2

    .line 24
    .line 25
    invoke-virtual {v0}, Lqn/b;->a()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lin/e;->n:I

    .line 30
    .line 31
    iget-object v0, p0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 48
    .line 49
    iget v2, p0, Lin/e;->n:I

    .line 50
    .line 51
    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/e;->onTracksVideoBitrateChange(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :goto_2
    iget v0, p0, Lin/e;->n:I

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "changeTrackSelection  mediaTrackGroup:"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, "  index:"

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, ", videoBitrate:"

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    invoke-static {v0, p1}, Lqn/a;->a(Landroidx/media3/common/i0;Lqn/d;)Landroidx/media3/common/f0;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_2

    .line 118
    .line 119
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 120
    .line 121
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 125
    .line 126
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v1}, Landroidx/media3/common/a0;->m()Landroidx/media3/common/h0;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroidx/media3/common/h0;->a()Landroidx/media3/common/h0$c;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    new-instance v2, Landroidx/media3/common/g0;

    .line 138
    .line 139
    invoke-direct {v2, p1, p2}, Landroidx/media3/common/g0;-><init>(Landroidx/media3/common/f0;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroidx/media3/common/h0$c;->L(Landroidx/media3/common/g0;)Landroidx/media3/common/h0$c;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroidx/media3/common/h0$c;->F()Landroidx/media3/common/h0;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->V(Landroidx/media3/common/h0;)V

    .line 151
    .line 152
    .line 153
    :cond_2
    :goto_3
    return-void
.end method

.method public clearScreen()V
    .locals 0

    .line 1
    return-void
.end method

.method public clearSurfaceOnly()V
    .locals 2

    .line 1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lin/e;->e:Lcom/transsion/player/ui/render/SurfaceRenderView;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lin/e;->f:Lcom/transsion/player/ui/render/TextureRenderView;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public currentMediaSource()Lgn/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/e;->h:Lgn/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public enableHardwareDecoder(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "ORExoPlayer"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lin/e;->u:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 7
    .line 8
    sget-object v3, Lcom/transsion/player/exo/ORExoDecoderType;->HARDWARE:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 9
    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    sget-object p1, Lsn/e;->a:Lsn/e;

    .line 13
    .line 14
    const-string v2, "1-\u786c\u89e3\u5207\u5230\u8f6f\u89e3\uff0c\u91cd\u65b0\u521b\u5efa\u8bbe\u7f6e"

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2, v0}, Lsn/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lin/e;->E()Lgn/e;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lin/e;->u:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 26
    .line 27
    sget-object v2, Lcom/transsion/player/exo/ORExoDecoderType;->HARDWARE:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 28
    .line 29
    if-eq p1, v2, :cond_1

    .line 30
    .line 31
    iput-object v2, p0, Lin/e;->u:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 32
    .line 33
    sget-object p1, Lsn/e;->a:Lsn/e;

    .line 34
    .line 35
    const-string v2, "2-\u8f6f\u89e3\u5207\u6362\u5230\u786c\u89e3\uff0c\u91cd\u65b0\u521b\u5efa\u8bbe\u7f6e"

    .line 36
    .line 37
    invoke-virtual {p1, v1, v2, v0}, Lsn/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lin/e;->u:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lin/e;->F(Lcom/transsion/player/exo/ORExoDecoderType;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lin/e;->I()V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public getBitrate()Lkotlin/Pair;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/Pair;

    .line 2
    .line 3
    iget v1, p0, Lin/e;->n:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lin/e;->o:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentPosition()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    return-wide v0
.end method

.method public getCurrentTracks()Lqn/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lqn/a;->c(Landroidx/media3/common/i0;)Lqn/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lqn/c;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, v2, v1, v2}, Lqn/c;-><init>(Lcom/google/common/collect/ImmutableList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-object v0
.end method

.method public getCurrentVideoFormat()Lqn/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->J()Landroidx/media3/common/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lqn/a;->b(Landroidx/media3/common/r;)Lqn/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public getDownloadBitrate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/f$b;->j(Lcom/transsion/player/orplayer/f;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/a0;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/f$b;->k(Lcom/transsion/player/orplayer/f;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/f$b;->l(Lcom/transsion/player/orplayer/f;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getVolume()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/e;->i:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public isComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x4

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    return v1
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/f$b;->m(Lcom/transsion/player/orplayer/f;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/a0;->W()Z

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

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/a0;->isPlaying()Z

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

.method public isPrepared()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x3

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    return v1
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lin/e;->g:Lcom/transsion/player/orplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    const-string v0, "ORExoPlayer"

    .line 10
    .line 11
    const-string v1, "pause"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/media3/common/a0;->pause()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlayWhenReady()Z

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lin/e;->g:Lcom/transsion/player/orplayer/c;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    const-string v0, "ORExoPlayer"

    .line 2
    .line 3
    const-string v1, "play"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->c()Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Landroidx/media3/common/a0;->prepare()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Landroidx/media3/common/a0;->play()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lin/e;->g:Lcom/transsion/player/orplayer/c;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lin/e;->g:Lcom/transsion/player/orplayer/c;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->e()V

    .line 47
    .line 48
    .line 49
    :cond_4
    iput-boolean v1, p0, Lin/e;->p:Z

    .line 50
    .line 51
    return-void
.end method

.method public prepare()V
    .locals 2

    .line 1
    const-string v0, "ORExoPlayer"

    .line 2
    .line 3
    const-string v1, "prepare"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/media3/common/a0;->prepare()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lin/e;->p:Z

    .line 17
    .line 18
    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lin/e;->c:Z

    .line 3
    iput-boolean v0, p0, Lin/e;->p:Z

    .line 4
    iput-boolean v0, p0, Lin/e;->d:Z

    .line 5
    const-string v0, "ORExoPlayer"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v0, Lon/f0;->a:Lon/f0;

    invoke-virtual {v0, p0}, Lon/f0;->a(Lcom/transsion/player/orplayer/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/a0;->stop()V

    .line 9
    :cond_1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/a0;->C()V

    .line 10
    :cond_2
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/media3/common/a0;->clearVideoSurface()V

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/e;

    if-eqz v1, :cond_4

    .line 13
    iget-object v2, p0, Lin/e;->h:Lgn/e;

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/e;->onPlayerRelease(Lgn/e;)V

    goto :goto_1

    .line 14
    :cond_5
    iget-object v0, p0, Lin/e;->g:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_6
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lin/e;->t:Ljava/lang/String;

    .line 16
    sget-object v1, Lcom/transsion/player/exo/ORExoDecoderType;->HARDWARE:Lcom/transsion/player/exo/ORExoDecoderType;

    iput-object v1, p0, Lin/e;->u:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 17
    iput-object v0, p0, Lin/e;->h:Lgn/e;

    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$b;->o(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public removeDataSource(Lgn/e;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$b;->p(Lcom/transsion/player/orplayer/f;Lgn/e;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public removePlayerListener(Lcom/transsion/player/orplayer/e;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$b;->q(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/e;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public requestForce()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/f$b;->r(Lcom/transsion/player/orplayer/f;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public reset()V
    .locals 2

    .line 1
    const-string v0, "ORExoPlayer"

    .line 2
    .line 3
    const-string v1, "reset    "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lin/e;->c:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lin/e;->p:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lin/e;->d:Z

    .line 14
    .line 15
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Landroidx/media3/common/a0;->stop()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Landroidx/media3/common/a0;->C()V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget-object v0, Lcom/transsion/player/exo/ORExoDecoderType;->HARDWARE:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 30
    .line 31
    iput-object v0, p0, Lin/e;->u:Lcom/transsion/player/exo/ORExoDecoderType;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lin/e;->h:Lgn/e;

    .line 35
    .line 36
    iget-object v0, p0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-interface {v1}, Lcom/transsion/player/orplayer/e;->onPlayerReset()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo    mills:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lin/e;->p:Z

    .line 3
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->c()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/a0;->prepare()V

    .line 5
    :cond_1
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/a0;->seekTo(J)V

    :cond_2
    return-void
.end method

.method public seekTo(Ljava/lang/String;J)V
    .locals 7

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$b;->s(Lcom/transsion/player/orplayer/f;Ljava/lang/String;J)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lin/e;->p:Z

    .line 8
    iget-object v1, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/media3/common/a0;->G()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, " mills:"

    const-string v3, "seekTo   uuid:"

    const-string v4, "ORExoPlayer"

    if-ge v0, v1, :cond_8

    .line 9
    iget-object v5, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v5, v0}, Landroidx/media3/common/a0;->O(I)Landroidx/media3/common/t;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroidx/media3/common/t$h;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 10
    iget-object v1, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->c()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v6

    :cond_2
    if-eqz v6, :cond_3

    .line 11
    invoke-virtual {p0}, Lin/e;->prepare()V

    .line 12
    :cond_3
    iget-object v1, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroidx/media3/common/a0;->u()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lin/e;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2, p3}, Landroidx/media3/common/a0;->seekTo(J)V

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  \u662f\u5f53\u524d\u89c6\u9891\u76f4\u63a5\u64ad\u653e"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 16
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo  index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_6

    invoke-interface {p1, v0, p2, p3}, Landroidx/media3/common/a0;->seekTo(IJ)V

    .line 18
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lin/e;->play()V

    return-void

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 19
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  \u6ca1\u6709\u627e\u5230"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0}, Lin/e;->pause()V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lin/e;->j:Z

    .line 2
    .line 3
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setPlayWhenReady(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDataSource(Lgn/e;)V
    .locals 4

    .line 1
    const-string v0, "mediaSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 7
    .line 8
    invoke-virtual {p1}, Lgn/e;->j()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "setDataSource url:"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    const-string v3, "ORExoPlayer"

    .line 31
    .line 32
    invoke-virtual {v0, v3, v1, v2}, Lsn/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lin/e;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 52
    .line 53
    invoke-interface {v1}, Lcom/transsion/player/orplayer/e;->onSetDataSource()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0, p1}, Lin/e;->L(Lgn/e;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lin/e;->C(Lgn/e;)Z

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    invoke-direct {p0, p1}, Lin/e;->K(Lgn/e;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-direct {p0, p1}, Lin/e;->B(Lgn/e;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    new-instance v0, Landroidx/media3/common/t$c;

    .line 78
    .line 79
    invoke-direct {v0}, Landroidx/media3/common/t$c;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lgn/e;->j()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroidx/media3/common/t$c;->j(Ljava/lang/String;)Landroidx/media3/common/t$c;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lgn/e;->k()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroidx/media3/common/t$c;->d(Ljava/lang/String;)Landroidx/media3/common/t$c;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lgn/e;->f()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroidx/media3/common/t$c;->b(Ljava/lang/String;)Landroidx/media3/common/t$c;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "build(...)"

    .line 115
    .line 116
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 120
    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    invoke-interface {v1, v0}, Landroidx/media3/common/a0;->I(Landroidx/media3/common/t;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    iput-object p1, p0, Lin/e;->h:Lgn/e;

    .line 127
    .line 128
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lin/e;->k:Z

    .line 2
    .line 3
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lin/e;->l:Z

    .line 2
    .line 3
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, p1, v1}, Landroidx/media3/common/a0;->B(ZI)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setPlayerConfig(Lhn/d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$b;->w(Lcom/transsion/player/orplayer/f;Lhn/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setPlayerListener(Lcom/transsion/player/orplayer/e;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lin/e;->addPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V
    .locals 1

    .line 1
    const-string v0, "scaleMode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$b;->x(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/enum/ScaleMode;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lin/e;->B:Lcom/transsion/player/enum/ScaleMode;

    .line 10
    .line 11
    sget-object v0, Lin/e$b;->b:[I

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    sget-object p1, Lcom/transsion/player/ui/render/RenderScaleMode;->SCREEN_SCALE_CENTER_CROP:Lcom/transsion/player/ui/render/RenderScaleMode;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 32
    .line 33
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    sget-object p1, Lcom/transsion/player/ui/render/RenderScaleMode;->SCREEN_SCALE_DEFAULT:Lcom/transsion/player/ui/render/RenderScaleMode;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object p1, Lcom/transsion/player/ui/render/RenderScaleMode;->SCREEN_SCALE_MATCH_PARENT:Lcom/transsion/player/ui/render/RenderScaleMode;

    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lin/e;->f:Lcom/transsion/player/ui/render/TextureRenderView;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/transsion/player/ui/render/TextureRenderView;->setScaleType(Lcom/transsion/player/ui/render/RenderScaleMode;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lin/e;->e:Lcom/transsion/player/ui/render/SurfaceRenderView;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/transsion/player/ui/render/SurfaceRenderView;->setScaleType(Lcom/transsion/player/ui/render/RenderScaleMode;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iput p1, p0, Lin/e;->m:F

    .line 2
    .line 3
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->a(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/transsion/player/ui/render/SurfaceRenderView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/player/ui/render/SurfaceRenderView;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-object v0, p0, Lin/e;->e:Lcom/transsion/player/ui/render/SurfaceRenderView;

    .line 11
    .line 12
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/transsion/player/ui/render/TextureRenderView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/player/ui/render/TextureRenderView;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-object v0, p0, Lin/e;->f:Lcom/transsion/player/ui/render/TextureRenderView;

    .line 11
    .line 12
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public setVipResolution(ZI)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lin/e;->r:Ljava/lang/Boolean;

    .line 6
    .line 7
    iput p2, p0, Lin/e;->s:I

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "LongVideoView \u975e\u4f1a\u5458\u53ef\u4ee5\u64ad\u653e vipResolution :"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setVolume(F)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x40000000    # 2.0f

    .line 3
    .line 4
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->k(FFF)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lin/e;->w:Landroidx/media3/exoplayer/b4;

    .line 9
    .line 10
    instance-of v2, v1, Lin/g;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast v1, Lin/g;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lin/g;->s(F)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v1, v0}, Landroidx/media3/common/a0;->setVolume(F)V

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lin/e;->i:Ljava/lang/Float;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "setVolume  volume:"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const-string v0, "ORExoPlayer"

    .line 2
    .line 3
    const-string v1, "stop    "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lin/e;->g:Lcom/transsion/player/orplayer/c;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lin/e;->q:Landroidx/media3/exoplayer/ExoPlayer;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/media3/common/a0;->stop()V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lin/e;->c:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lin/e;->p:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lin/e;->d:Z

    .line 29
    .line 30
    iget-object v0, p0, Lin/e;->g:Lcom/transsion/player/orplayer/c;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method
