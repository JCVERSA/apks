.class public Lcom/transsion/vishaads/views/AdItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public b:Lcom/transsion/widgets/VideoPlayerSurfaceView;

.field public c:Landroid/widget/ImageView;

.field public d:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

.field public e:Landroid/media/MediaPlayer;

.field public f:Landroid/view/SurfaceHolder;

.field public g:Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;

.field public h:Landroid/net/Uri;

.field public final i:Ljava/lang/String;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v0, "content://media/external/video/media/1000021800"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->h:Landroid/net/Uri;

    .line 3
    const-string v0, "AdItemView"

    iput-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/vishaads/views/AdItemView;->j:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/vishaads/views/AdItemView;->g(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    const-string p2, "content://media/external/video/media/1000021800"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/vishaads/views/AdItemView;->h:Landroid/net/Uri;

    .line 8
    const-string p2, "AdItemView"

    iput-object p2, p0, Lcom/transsion/vishaads/views/AdItemView;->i:Ljava/lang/String;

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/transsion/vishaads/views/AdItemView;->j:Z

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/vishaads/views/AdItemView;->g(Landroid/content/Context;)V

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

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const-string p2, "content://media/external/video/media/1000021800"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/vishaads/views/AdItemView;->h:Landroid/net/Uri;

    .line 13
    const-string p2, "AdItemView"

    iput-object p2, p0, Lcom/transsion/vishaads/views/AdItemView;->i:Ljava/lang/String;

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/transsion/vishaads/views/AdItemView;->j:Z

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/vishaads/views/AdItemView;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishaads/views/AdItemView;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaads/views/AdItemView;->j(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/vishaads/views/AdItemView;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaads/views/AdItemView;->i(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/vishaads/views/AdItemView;Landroid/media/MediaPlayer;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/vishaads/views/AdItemView;->m(Landroid/media/MediaPlayer;II)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/vishaads/views/AdItemView;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/vishaads/views/AdItemView;->h(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/vishaads/views/AdItemView;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaads/views/AdItemView;->f:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public autoPauseOrResume(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "autoPauseOrResume "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdItemView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 1

    new-instance v0, Lcom/transsion/vishaads/views/AdItemView$a;

    invoke-direct {v0, p0}, Lcom/transsion/vishaads/views/AdItemView$a;-><init>(Lcom/transsion/vishaads/views/AdItemView;)V

    iput-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->g:Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdItemView;->b:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/VideoPlayerSurfaceView;->setSurfaceListener(Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/vishaads/R$layout;->layout_ad_item:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/transsion/vishaads/R$id;->vw_video:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/VideoPlayerSurfaceView;

    iput-object p1, p0, Lcom/transsion/vishaads/views/AdItemView;->b:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    sget p1, Lcom/transsion/vishaads/R$id;->iv_ad:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/vishaads/views/AdItemView;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public final h(Landroid/media/MediaPlayer;II)Z
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInfo("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "), what = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", extra = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdItemView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final i(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public final j(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const-string p0, "AdItemView"

    const-string p1, "onPlayerPrepared"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->b:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalAd:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p1, p1, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->localAdResourceId:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getAdSourceType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/vishaads/views/AdItemView;->j:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/vishaads/R$color;->black:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/transsion/vishaads/R$drawable;->ic_banner_default:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getAdLocalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->c:Landroid/widget/ImageView;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getAdLocalPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/vishaads/views/AdItemView;->c:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final l(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaads/views/AdItemView;->f()V

    iget-object p1, p0, Lcom/transsion/vishaads/views/AdItemView;->b:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdItemView;->c:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final m(Landroid/media/MediaPlayer;II)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoSizeChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdItemView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdItemView;->b:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/transsion/widgets/VideoPlayerSurfaceView;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->b:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/VideoPlayerSurfaceView;->setSurfaceListener(Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaads/views/AdItemView;->releasePlayer()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "), what = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", extra = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdItemView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public openVideo()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->d:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    const-string v1, "AdItemView"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getAdLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->f:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openVideo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaads/views/AdItemView;->d:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    new-instance v2, Li6;

    invoke-direct {v2, p0}, Li6;-><init>(Lcom/transsion/vishaads/views/AdItemView;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    new-instance v2, Lj6;

    invoke-direct {v2, p0}, Lj6;-><init>(Lcom/transsion/vishaads/views/AdItemView;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    new-instance v2, Lk6;

    invoke-direct {v2, p0}, Lk6;-><init>(Lcom/transsion/vishaads/views/AdItemView;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    new-instance v2, Ll6;

    invoke-direct {v2, p0}, Ll6;-><init>(Lcom/transsion/vishaads/views/AdItemView;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    new-instance v2, Lm6;

    invoke-direct {v2, p0}, Lm6;-><init>(Lcom/transsion/vishaads/views/AdItemView;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/transsion/vishaads/views/AdItemView;->d:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getAdLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/transsion/vishaads/views/AdItemView;->f:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdItemView;->h:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openVideo, not ready for playback just yet,, mUri = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaads/views/AdItemView;->h:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSurfaceHolder = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/vishaads/views/AdItemView;->f:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public releasePlayer()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const-string v0, "AdItemView"

    const-string v1, "releasePlayer "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaads/views/AdItemView;->e:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public showAd(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Z)V
    .locals 2

    const-string v0, "AdItemView"

    if-nez p1, :cond_0

    const-string v1, "No ad data"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-boolean p2, p0, Lcom/transsion/vishaads/views/AdItemView;->j:Z

    iput-object p1, p0, Lcom/transsion/vishaads/views/AdItemView;->d:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getAdSourceType()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const-string p0, "invalid ad data type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/vishaads/views/AdItemView;->k(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/vishaads/views/AdItemView;->l(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    :goto_0
    return-void
.end method
