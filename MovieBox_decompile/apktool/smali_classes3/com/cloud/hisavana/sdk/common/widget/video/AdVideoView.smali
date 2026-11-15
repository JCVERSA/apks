.class public Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# static fields
.field private static q:Lcom/google/android/exoplayer2/upstream/k$a;


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

.field private final b:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

.field private c:Lcom/google/android/exoplayer2/t;

.field private d:Lcom/cloud/hisavana/sdk/j4;

.field private e:Z

.field private f:Z

.field private g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/google/android/exoplayer2/p2$d;

.field private final o:Ljava/lang/Runnable;

.field private p:Lcom/cloud/hisavana/sdk/s4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e:Z

    .line 5
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l:Z

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->m:Z

    .line 7
    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->o:Ljava/lang/Runnable;

    .line 8
    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->p:Lcom/cloud/hisavana/sdk/s4;

    .line 9
    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    .line 10
    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    .line 11
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->t()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->u()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/google/android/exoplayer2/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lcom/google/android/exoplayer2/t;)Lcom/google/android/exoplayer2/t;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/j4;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->o:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method private o()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/o4;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->p:Lcom/cloud/hisavana/sdk/s4;

    .line 11
    .line 12
    invoke-direct {v0, v1, p0, v2}, Lcom/cloud/hisavana/sdk/o4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lcom/cloud/hisavana/sdk/s4;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->g(Lcom/cloud/hisavana/sdk/o4;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p2;->setVolume(F)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/j4;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/j4;->onVolumeChanged(F)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->o:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static r()V
    .locals 5

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->q:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Lcom/cloud/hisavana/net/utils/StorageUtils;->d(Landroid/content/Context;Z)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/q;

    .line 17
    .line 18
    const-wide/32 v3, 0x6400000

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/q;-><init>(J)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lh9/b;

    .line 25
    .line 26
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-direct {v3, v4}, Lh9/b;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/b;Lh9/a;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/a$c;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/a$c;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/a$c;->h(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/a$c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/google/android/exoplayer2/upstream/r$a;

    .line 46
    .line 47
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/upstream/r$a;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/a$c;->i(Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/upstream/cache/a$c;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->q:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->n:Lcom/google/android/exoplayer2/p2$d;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p2;->B(Lcom/google/android/exoplayer2/p2$d;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->stop()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->release()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f:Z

    .line 27
    .line 28
    new-instance v0, Lcom/google/android/exoplayer2/t$b;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/t$b;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/google/android/exoplayer2/p;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/p;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p;->j(Z)Lcom/google/android/exoplayer2/p;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/t$b;->l(Lcom/google/android/exoplayer2/c3;)Lcom/google/android/exoplayer2/t$b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/t$b;->f()Lcom/google/android/exoplayer2/t;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p2;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->n:Lcom/google/android/exoplayer2/p2$d;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 74
    .line 75
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/p2;->E(Lcom/google/android/exoplayer2/p2$d;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 79
    .line 80
    const-string v1, "AdVideoView"

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->h:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1;->d(Landroid/net/Uri;)Lcom/google/android/exoplayer2/w1;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->m:Z

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->r()V

    .line 102
    .line 103
    .line 104
    new-instance v2, Lcom/google/android/exoplayer2/source/x$b;

    .line 105
    .line 106
    sget-object v3, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->q:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 107
    .line 108
    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/x$b;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/x$b;->e(Lcom/google/android/exoplayer2/w1;)Lcom/google/android/exoplayer2/source/x;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 116
    .line 117
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/t;->a(Lcom/google/android/exoplayer2/source/o;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 122
    .line 123
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/p2;->C(Lcom/google/android/exoplayer2/w1;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v3, "setMediaData -------------> playWhenReady = "

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-boolean v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e:Z

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 153
    .line 154
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e:Z

    .line 155
    .line 156
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p2;->setPlayWhenReady(Z)V

    .line 157
    .line 158
    .line 159
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i:Z

    .line 160
    .line 161
    if-eqz v0, :cond_4

    .line 162
    .line 163
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 164
    .line 165
    const/4 v1, 0x0

    .line 166
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p2;->setVolume(F)V

    .line 167
    .line 168
    .line 169
    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 170
    .line 171
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->prepare()V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_5
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const-string v2, "setMediaData adPlayer is null"

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method private synthetic u()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p2;->setVolume(F)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/j4;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/j4;->onVolumeChanged(F)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->q()Lcom/google/android/exoplayer2/video/y;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget v2, v0, Lcom/google/android/exoplayer2/video/y;->a:I

    .line 20
    .line 21
    :goto_0
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iget v1, v0, Lcom/google/android/exoplayer2/video/y;->b:I

    .line 25
    .line 26
    :goto_1
    if-lez v2, :cond_3

    .line 27
    .line 28
    if-lez v1, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setMaterialWith(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setMaterialHeight(I)V

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setVideoSize(II)V

    .line 41
    .line 42
    .line 43
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public dispatchPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->pause()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->o:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public dispatchPlay()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlaybackState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->prepare()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x4

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->u()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/p2;->seekTo(IJ)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->play()V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->q()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public dispatchPlayPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlaybackState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    if-eq v0, v2, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlayWhenReady()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/j4;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/j4;->c(Z)V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->dispatchPause()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/j4;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/j4;->c(Z)V

    .line 42
    .line 43
    .line 44
    :cond_4
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->dispatchPlay()V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getCurrentPosition()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getDuration()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public isPlayWhenReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public openOrCloseVolume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getVolume()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->v()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->p()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->play()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "-------------> release && adplayer ="

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "AdVideoView"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->o:Ljava/lang/Runnable;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->isPlaying()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->pause()V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->n:Lcom/google/android/exoplayer2/p2$d;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 68
    .line 69
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/p2;->B(Lcom/google/android/exoplayer2/p2$d;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 73
    .line 74
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->clearVideoSurface()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->stop()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 83
    .line 84
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->release()V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 89
    .line 90
    :cond_2
    return-void
.end method

.method public repeat()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlaybackState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->prepare()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->u()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/p2;->seekTo(IJ)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->play()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/google/android/exoplayer2/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/p2;->seekTo(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/j4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/j4;

    .line 2
    .line 3
    return-void
.end method

.method public setCompanionSize(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0xc

    .line 10
    .line 11
    invoke-static {p1, v2, v3, v0, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setCompanionViewVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMeasureAble(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMediaData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "setMediaData -------------> path = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "; and shouldCache is "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "AdVideoView"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->h:Ljava/lang/String;

    .line 38
    .line 39
    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i:Z

    .line 40
    .line 41
    iput-boolean p4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->m:Z

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j:Z

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialWith()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-lez p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialHeight()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-lez p1, :cond_0

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j:Z

    .line 64
    .line 65
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialWith()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialHeight()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setVideoSize(II)V

    .line 78
    .line 79
    .line 80
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    .line 81
    .line 82
    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/a;

    .line 83
    .line 84
    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUseListMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoSize(II)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onVideoSizeChanged ------> width="

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " height="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "AdVideoView"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    .line 36
    .line 37
    if-lez p1, :cond_0

    .line 38
    .line 39
    move v1, p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_0
    if-lez p2, :cond_1

    .line 46
    .line 47
    move v2, p2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->f()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->adaptVideoSize(II)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/j4;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/j4;->onVideoSizeChanged(II)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method protected t()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/16 v2, 0x11

    .line 8
    .line 9
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    .line 11
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    .line 12
    .line 13
    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    .line 18
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19
    .line 20
    .line 21
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 22
    .line 23
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
