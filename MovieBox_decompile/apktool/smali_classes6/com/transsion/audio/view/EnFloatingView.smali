.class public Lcom/transsion/audio/view/EnFloatingView;
.super Lcom/transsion/audio/view/FloatingMagnetView;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/view/EnFloatingView$f;
    }
.end annotation


# instance fields
.field private final h:Lki/d;

.field private i:Ljava/util/List;

.field private j:I

.field private k:Lcom/transsion/audio/view/EnFloatingView$f;

.field l:Ljava/lang/String;

.field private m:Ljava/lang/Boolean;

.field n:Lcom/transsnet/downloader/bean/DownloadListBean;

.field private final o:Lui/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/transsion/audio/R$layout;->new_en_floating_view:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/audio/view/EnFloatingView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/transsion/audio/view/FloatingMagnetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->i:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->m:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 7
    new-instance v0, Lcom/transsion/audio/view/EnFloatingView$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/view/EnFloatingView$a;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    iput-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->o:Lui/a;

    .line 8
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    sget p1, Lcom/transsion/audio/R$id;->clRoot:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    invoke-static {p1}, Lki/d;->a(Landroid/view/View;)Lki/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 11
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->r()V

    .line 12
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->s()V

    const/4 p1, 0x1

    .line 13
    invoke-direct {p0, p1}, Lcom/transsion/audio/view/EnFloatingView;->q(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget v2, Lcom/transsion/audio/R$mipmap;->libui_audio_playing_2:I

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 38
    .line 39
    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    .line 42
    .line 43
    .line 44
    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 53
    .line 54
    iget-object v1, v1, Lki/d;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 60
    .line 61
    iget-object v0, v0, Lki/d;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 62
    .line 63
    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_ctl_play:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static synthetic j(Lcom/transsion/audio/view/EnFloatingView;Lcom/transsnet/downloader/bean/DownloadListBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/view/EnFloatingView;->u(Lcom/transsnet/downloader/bean/DownloadListBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/transsion/audio/view/EnFloatingView;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/view/EnFloatingView;->t(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic l(Lcom/transsion/audio/view/EnFloatingView;)Lki/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic m(Lcom/transsion/audio/view/EnFloatingView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView;->m:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic n(Lcom/transsion/audio/view/EnFloatingView;Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audio/view/EnFloatingView;->q(Z)Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/transsion/audio/player/AudioPlayer;->J()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer;->T()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 26
    .line 27
    iget-object v0, v0, Lki/d;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 28
    .line 29
    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_ctl_pause:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->isChangeToLocalPath()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/audio/AudioBean;->setChangeToLocalPath(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/AudioPlayer;->L(Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer;->K()V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 69
    .line 70
    iget-object v0, v0, Lki/d;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 71
    .line 72
    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_ctl_play:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void
.end method

.method private p()I
    .locals 3

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/high16 v2, 0x42a00000    # 80.0f

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method private q(Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    :goto_0
    const v0, 0x800053

    .line 17
    .line 18
    .line 19
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    .line 21
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 22
    .line 23
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->p()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method private r()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager;->r()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lki/d;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 11
    .line 12
    iget-object v0, v0, Lki/d;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 18
    .line 19
    iget-object v0, v0, Lki/d;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 25
    .line 26
    iget-object v0, v0, Lki/d;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 32
    .line 33
    iget-object v0, v0, Lki/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 39
    .line 40
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->o:Lui/a;

    .line 49
    .line 50
    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->g(Lui/m0;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private synthetic t(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView;->i:Ljava/util/List;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 13
    .line 14
    iget-object v0, v0, Lki/d;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    iget v1, p0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    .line 23
    .line 24
    if-le p1, v1, :cond_0

    .line 25
    .line 26
    sget p1, Lcom/transsion/audio/R$mipmap;->ic_audio_next_enable:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget p1, Lcom/transsion/audio/R$mipmap;->ic_audio_next_disable:I

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private synthetic u(Lcom/transsnet/downloader/bean/DownloadListBean;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lki/d;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    .line 8
    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_ctl_pause:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 14
    .line 15
    iget-object v0, v0, Lki/d;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_right:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private w()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/transsion/audio/player/AudioPlayer;->T()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-class v2, Lep/a;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_3

    .line 35
    .line 36
    iget-object v5, v0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 37
    .line 38
    if-eqz v5, :cond_3

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_3

    .line 49
    .line 50
    iget-object v5, v0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    move v6, v3

    .line 57
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    const/4 v8, -0x1

    .line 62
    if-ge v6, v7, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    check-cast v9, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 73
    .line 74
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_0

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    move v6, v8

    .line 89
    :goto_1
    if-eq v6, v8, :cond_4

    .line 90
    .line 91
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    add-int/lit8 v1, v1, -0x2

    .line 96
    .line 97
    if-ge v6, v1, :cond_4

    .line 98
    .line 99
    add-int/2addr v6, v4

    .line 100
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    iget-object v6, v0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/transsnet/downloader/bean/DownloadListBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    new-instance v6, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 121
    .line 122
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_2

    .line 127
    .line 128
    const-string v5, ""

    .line 129
    .line 130
    :cond_2
    move-object v8, v5

    .line 131
    const-wide/16 v17, 0x0

    .line 132
    .line 133
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v15

    .line 153
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object v16

    .line 157
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v17

    .line 161
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v20

    .line 165
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v21

    .line 169
    iget-object v5, v0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 170
    .line 171
    invoke-virtual {v5}, Lcom/transsnet/downloader/bean/DownloadListBean;->getSubjectId()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v22

    .line 175
    iget-object v5, v0, Lcom/transsion/audio/view/EnFloatingView;->n:Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 176
    .line 177
    invoke-virtual {v5}, Lcom/transsnet/downloader/bean/DownloadListBean;->getGroupId()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v23

    .line 181
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getSe()I

    .line 182
    .line 183
    .line 184
    move-result v26

    .line 185
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getEp()I

    .line 186
    .line 187
    .line 188
    move-result v27

    .line 189
    const-string v14, ""

    .line 190
    .line 191
    const-string v18, ""

    .line 192
    .line 193
    const-string v19, ""

    .line 194
    .line 195
    const/16 v24, 0x0

    .line 196
    .line 197
    const-string v25, ""

    .line 198
    .line 199
    move-object v7, v6

    .line 200
    invoke-direct/range {v7 .. v27}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 201
    .line 202
    .line 203
    new-array v1, v3, [Ljava/lang/Object;

    .line 204
    .line 205
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Lep/a;

    .line 210
    .line 211
    invoke-interface {v1, v6, v4}, Lep/a;->d(Lcom/transsion/baselib/db/audio/AudioBean;Z)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_3
    iget-object v1, v0, Lcom/transsion/audio/view/EnFloatingView;->i:Ljava/util/List;

    .line 216
    .line 217
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    sub-int/2addr v1, v4

    .line 222
    iget v5, v0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    .line 223
    .line 224
    if-le v1, v5, :cond_4

    .line 225
    .line 226
    iget-object v1, v0, Lcom/transsion/audio/view/EnFloatingView;->i:Ljava/util/List;

    .line 227
    .line 228
    add-int/2addr v5, v4

    .line 229
    iput v5, v0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    .line 230
    .line 231
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 236
    .line 237
    if-eqz v1, :cond_4

    .line 238
    .line 239
    new-array v3, v3, [Ljava/lang/Object;

    .line 240
    .line 241
    invoke-static {v2, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    check-cast v2, Lep/a;

    .line 246
    .line 247
    invoke-interface {v2, v1, v4}, Lep/a;->d(Lcom/transsion/baselib/db/audio/AudioBean;Z)V

    .line 248
    .line 249
    .line 250
    :cond_4
    :goto_2
    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->k:Lcom/transsion/audio/view/EnFloatingView$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/transsion/audio/view/EnFloatingView$f;->a(Landroid/view/ViewGroup;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer;->q()V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 18
    .line 19
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->o:Lui/a;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->k(Lui/m0;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private y(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getDesc()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 31
    .line 32
    iget-object v2, v2, Lki/d;->k:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    if-eqz p1, :cond_3

    .line 51
    .line 52
    const-string p1, "00:00/00:00"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-static {v1, v2}, Lmi/a;->a(J)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, "/"

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-static {v0, v1}, Lmi/a;->a(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 92
    .line 93
    iget-object v0, v0, Lki/d;->l:Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    nop

    .line 99
    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method private z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->k:Lcom/transsion/audio/view/EnFloatingView$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/transsion/audio/view/EnFloatingView$f;->b(Landroid/view/ViewGroup;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->p()Landroidx/lifecycle/b0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast p1, Landroidx/lifecycle/u;

    .line 17
    .line 18
    new-instance v2, Lcom/transsion/audio/view/a;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/transsion/audio/view/a;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->v()Landroidx/lifecycle/b0;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/lifecycle/u;

    .line 39
    .line 40
    new-instance v2, Lcom/transsion/audio/view/b;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/transsion/audio/view/b;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;->b()Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/transsion/audio/viewmodel/HistoryListManager;->r()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public expanded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lki/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 14
    .line 15
    iget-object v0, v0, Lki/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Lcom/transsion/audio/view/EnFloatingView;->q(Z)Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public expandedAnimation()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->m:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 15
    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v3, 0x12c

    .line 23
    .line 24
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/transsion/audio/view/EnFloatingView$b;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/transsion/audio/view/EnFloatingView$b;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 36
    .line 37
    iget-object v1, v1, Lki/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 43
    .line 44
    sget-object v5, Lzg/h;->a:Lzg/h;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v5, v6}, Lzg/h;->e(Landroid/content/Context;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    neg-int v5, v5

    .line 55
    int-to-float v5, v5

    .line 56
    invoke-direct {v1, v5, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lcom/transsion/audio/view/EnFloatingView$c;

    .line 60
    .line 61
    invoke-direct {v2, p0}, Lcom/transsion/audio/view/EnFloatingView$c;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 71
    .line 72
    iget-object v2, v2, Lki/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Landroid/view/animation/AnimationSet;

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/view/animation/Animation;->startNow()V

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    return-void
.end method

.method public isPackUp()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, v0, Lki/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_1
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/transsion/audio/R$id;->iv_play:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->o()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget v1, Lcom/transsion/audio/R$id;->iv_next:I

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->w()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sget v1, Lcom/transsion/audio/R$id;->iv_history:I

    .line 30
    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->z()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sget v1, Lcom/transsion/audio/R$id;->iv_remove:I

    .line 42
    .line 43
    if-ne v0, v1, :cond_3

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->x()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    sget v0, Lcom/transsion/audio/R$id;->clPackUp:I

    .line 54
    .line 55
    if-ne p1, v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/transsion/audio/view/EnFloatingView;->expandedAnimation()V

    .line 58
    .line 59
    .line 60
    :cond_4
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lki/d;->j:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/audio/view/EnFloatingView;->y(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onSlideTheLeft()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audio/view/EnFloatingView;->packUpAnimation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->v()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->w()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->v()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-direct {p0}, Lcom/transsion/audio/view/EnFloatingView;->A()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public onViewClick()V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/k;->o()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PostDetailActivity"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 49
    .line 50
    const-string v1, "This page is unavailable"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    const-string v1, "/post/detail"

    .line 57
    .line 58
    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "page_from"

    .line 63
    .line 64
    const-string v3, "audio_list"

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "id"

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->AUDIO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "media_type"

    .line 87
    .line 88
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "from_comment"

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/therouter/router/Navigator;->r(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public packUp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lki/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 13
    .line 14
    iget-object v0, v0, Lki/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1}, Lcom/transsion/audio/view/EnFloatingView;->q(Z)Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public packUpAnimation()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lki/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->m:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/transsion/audio/view/d;->o()Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 40
    .line 41
    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v3, 0x12c

    .line 48
    .line 49
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/transsion/audio/view/EnFloatingView$d;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/transsion/audio/view/EnFloatingView$d;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 61
    .line 62
    iget-object v1, v1, Lki/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 68
    .line 69
    sget-object v5, Lzg/h;->a:Lzg/h;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v5, v6}, Lzg/h;->e(Landroid/content/Context;)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    neg-int v5, v5

    .line 80
    int-to-float v5, v5

    .line 81
    invoke-direct {v1, v2, v5, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Lcom/transsion/audio/view/EnFloatingView$e;

    .line 85
    .line 86
    invoke-direct {v2, p0}, Lcom/transsion/audio/view/EnFloatingView$e;-><init>(Lcom/transsion/audio/view/EnFloatingView;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 96
    .line 97
    iget-object v2, v2, Lki/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 98
    .line 99
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Landroid/view/animation/AnimationSet;

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Landroid/view/animation/Animation;->startNow()V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_0
    return-void
.end method

.method public prepare()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getCover()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->l:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    cmp-long v2, v2, v4

    .line 42
    .line 43
    if-gtz v2, :cond_2

    .line 44
    .line 45
    const-wide/16 v2, 0x1

    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    div-long/2addr v1, v3

    .line 60
    const-wide/16 v3, 0x64

    .line 61
    .line 62
    mul-long/2addr v1, v3

    .line 63
    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/common/util/l;->a(J)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 68
    .line 69
    iget-object v1, v1, Lki/d;->j:Landroid/widget/ProgressBar;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/transsion/audio/view/EnFloatingView;->h:Lki/d;

    .line 75
    .line 76
    iget-object v0, v0, Lki/d;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/transsion/audio/view/EnFloatingView;->i:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/4 v2, 0x1

    .line 85
    sub-int/2addr v1, v2

    .line 86
    iget v3, p0, Lcom/transsion/audio/view/EnFloatingView;->j:I

    .line 87
    .line 88
    if-le v1, v3, :cond_3

    .line 89
    .line 90
    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_next_enable:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    sget v1, Lcom/transsion/audio/R$mipmap;->ic_audio_next_disable:I

    .line 94
    .line 95
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v2}, Lcom/transsion/audio/view/EnFloatingView;->y(Z)V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_1
    return-void
.end method

.method public setOnOptionListener(Lcom/transsion/audio/view/EnFloatingView$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/view/EnFloatingView;->k:Lcom/transsion/audio/view/EnFloatingView$f;

    .line 2
    .line 3
    return-void
.end method
