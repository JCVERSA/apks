.class public Lcom/transsion/widgetslib/view/LoadingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public b:Z

.field public c:Z

.field public d:Lcom/airbnb/lottie/LottieAnimationView;

.field public e:Ljava/lang/Runnable;

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->c:Z

    .line 3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/LoadingView;->e()V

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

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->c:Z

    .line 6
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/LoadingView;->e()V

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->c:Z

    .line 9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/LoadingView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->c:Z

    .line 12
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/LoadingView;->e()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/view/LoadingView;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/view/LoadingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->c:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/view/LoadingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->b:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/view/LoadingView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->f:I

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->V(Landroid/content/Context;)Z

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_layout_loading:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v1, Lcom/transsion/widgetslib/R$id;->loadingView:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/transsion/widgetslib/view/LoadingView$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/LoadingView$1;-><init>(Lcom/transsion/widgetslib/view/LoadingView;Z)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->b:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_2
    const-string p1, "LoadingView"

    const-string v1, "open asset file error"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    return-void

    :goto_1
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public setAutoAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->c:Z

    return-void
.end method

.method public setDarkMode()V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "loading_small_night.json"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "loading_large_night.json"

    goto :goto_0

    :cond_1
    const-string v0, "loading_medium_night.json"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/LoadingView;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setNormalMode()V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "loading_small.json"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "loading_large.json"

    goto :goto_0

    :cond_1
    const-string v0, "loading_medium.json"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/LoadingView;->f(Ljava/lang/String;)V

    return-void
.end method

.method public showOnColorFull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->b:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/LoadingView;->release()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/LoadingView;->e()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_1
    :goto_0
    return-void
.end method
