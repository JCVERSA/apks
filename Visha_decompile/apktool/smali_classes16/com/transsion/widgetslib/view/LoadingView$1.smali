.class Lcom/transsion/widgetslib/view/LoadingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/LoadingView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/LoadingView;

.field final synthetic val$darkMode:Z


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/LoadingView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->d(Lcom/transsion/widgetslib/view/LoadingView;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "loading_medium.json"

    if-eqz v2, :cond_8

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_loading_small_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-gt v0, v4, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/LoadingView;->c(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loading_small_colorfull.json"

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    if-eqz v0, :cond_1

    const-string v0, "loading_small_night.json"

    goto :goto_0

    :cond_1
    const-string v0, "loading_small.json"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->d(Lcom/transsion/widgetslib/view/LoadingView;I)V

    goto :goto_5

    :cond_2
    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_loading_medium_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-gt v0, v2, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/LoadingView;->c(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "loading_medium_colorfull.json"

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    if-eqz v0, :cond_4

    const-string v3, "loading_medium_night.json"

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->d(Lcom/transsion/widgetslib/view/LoadingView;I)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/LoadingView;->c(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "loading_large_colorfull.json"

    :goto_3
    move-object v3, v0

    goto :goto_4

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    if-eqz v0, :cond_7

    const-string v0, "loading_large_night.json"

    goto :goto_3

    :cond_7
    const-string v0, "loading_large.json"

    goto :goto_3

    :goto_4
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->d(Lcom/transsion/widgetslib/view/LoadingView;I)V

    :cond_8
    :goto_5
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/LoadingView;->a(Lcom/transsion/widgetslib/view/LoadingView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/LoadingView;->b(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/LoadingView;->a(Lcom/transsion/widgetslib/view/LoadingView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_9

    :catch_0
    move-exception p0

    goto :goto_7

    :cond_9
    :goto_6
    if-eqz v0, :cond_a

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :goto_7
    :try_start_2
    const-string v1, "LoadingView"

    const-string v2, "open asset file error"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_a

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_a
    :goto_8
    return-void

    :goto_9
    if-eqz v0, :cond_b

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_a
    throw p0
.end method
