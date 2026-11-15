.class public final Lcom/transsion/ninegridview/preview/r;
.super Lng/a;
.source "source.java"


# instance fields
.field private final a:Lcom/transsion/player/orplayer/f;

.field private final b:Lcom/transsion/player/ui/ORPlayerView;

.field private c:I

.field private d:Landroid/view/View;

.field private e:Lcom/transsion/moviedetailapi/bean/Image;


# direct methods
.method public constructor <init>(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 1

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "playerView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lng/a;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/ninegridview/preview/r;->a:Lcom/transsion/player/orplayer/f;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/transsion/ninegridview/preview/r;->c:I

    .line 20
    .line 21
    return-void
.end method

.method private final e(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget v0, Lcom/transsion/ninegridview/R$id;->video_cover:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/transsion/photoview/PhotoView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private final h(Lcom/transsion/moviedetailapi/bean/GifBean;Landroid/view/View;Z)V
    .locals 9

    .line 1
    invoke-direct {p0, p2}, Lcom/transsion/ninegridview/preview/r;->i(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/transsion/ninegridview/preview/r;->a:Lcom/transsion/player/orplayer/f;

    .line 5
    .line 6
    new-instance v8, Lgn/e;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, ""

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move-object v2, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v2, v0

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    move-object p1, v1

    .line 26
    :cond_1
    const/16 v6, 0x1c

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v0, v8

    .line 33
    move-object v1, v2

    .line 34
    move-object v2, p1

    .line 35
    invoke-direct/range {v0 .. v7}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, v8}, Lcom/transsion/player/orplayer/f;->setDataSource(Lgn/e;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/ninegridview/preview/r;->a:Lcom/transsion/player/orplayer/f;

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/ninegridview/preview/r;->a:Lcom/transsion/player/orplayer/f;

    .line 47
    .line 48
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/transsion/ninegridview/preview/r;->a:Lcom/transsion/player/orplayer/f;

    .line 52
    .line 53
    invoke-interface {p1, p3}, Lcom/transsion/player/orplayer/f;->setLooping(Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private final i(Landroid/view/View;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget v0, Lcom/transsion/ninegridview/R$id;->video_container:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    instance-of v1, v0, Landroid/widget/FrameLayout;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    check-cast v0, Landroid/widget/FrameLayout;

    .line 39
    .line 40
    sget v1, Lcom/transsion/ninegridview/R$id;->video_cover:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/transsion/photoview/PhotoView;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    .line 54
    .line 55
    sget v1, Lcom/transsion/ninegridview/R$id;->player_view:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/r;->e:Lcom/transsion/moviedetailapi/bean/Image;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getWidth()Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    :goto_1
    int-to-float v0, v0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    goto :goto_1

    .line 81
    :goto_2
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/r;->e:Lcom/transsion/moviedetailapi/bean/Image;

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getHeight()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    :goto_3
    int-to-float v1, v1

    .line 96
    goto :goto_4

    .line 97
    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    goto :goto_3

    .line 102
    :goto_4
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    int-to-float v2, v2

    .line 107
    div-float/2addr v1, v0

    .line 108
    mul-float/2addr v1, v2

    .line 109
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .line 111
    float-to-int v2, v2

    .line 112
    float-to-int v1, v1

    .line 113
    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    .line 115
    .line 116
    const/16 v1, 0x11

    .line 117
    .line 118
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    .line 120
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/r;->b:Lcom/transsion/player/ui/ORPlayerView;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    return-void
.end method


# virtual methods
.method public c(ZILandroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(ILcom/transsion/moviedetailapi/bean/Image;Landroid/view/View;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ninegridview/preview/r;->c:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/transsion/ninegridview/preview/r;->d:Landroid/view/View;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/transsion/ninegridview/preview/r;->e:Lcom/transsion/moviedetailapi/bean/Image;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Image;->getGifBean()Lcom/transsion/moviedetailapi/bean/GifBean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/GifBean;->getVideoUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-lez p2, :cond_1

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-direct {p0, p1, p3, p2}, Lcom/transsion/ninegridview/preview/r;->h(Lcom/transsion/moviedetailapi/bean/GifBean;Landroid/view/View;Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/r;->d:Landroid/view/View;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/ninegridview/preview/r;->e(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
