.class public final Lcom/yandex/div/core/DivPreloader$DownloadCallback;
.super Lrk2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/DivPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadCallback"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/core/DivPreloader$a;

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/DivPreloader$a;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lrk2;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->a:Lcom/yandex/div/core/DivPreloader$a;

    return-void
.end method

.method public static final synthetic d(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->l()V

    return-void
.end method

.method public static final synthetic e(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)Lcom/yandex/div/core/DivPreloader$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->a:Lcom/yandex/div/core/DivPreloader$a;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->b:I

    return p0
.end method

.method public static final synthetic g(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->c:I

    return p0
.end method

.method public static final synthetic h(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->d:Z

    return p0
.end method

.method public static final synthetic i(Lcom/yandex/div/core/DivPreloader$DownloadCallback;I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->b:I

    return-void
.end method

.method public static final synthetic j(Lcom/yandex/div/core/DivPreloader$DownloadCallback;I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->c:I

    return-void
.end method

.method public static final synthetic k(Lcom/yandex/div/core/DivPreloader$DownloadCallback;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lpfb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->g(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->j(Lcom/yandex/div/core/DivPreloader$DownloadCallback;I)V

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->d(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lpfb;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/core/DivPreloader$DownloadCallback$onError$$inlined$runOnUiThread$1;

    invoke-direct {v1, p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback$onError$$inlined$runOnUiThread$1;-><init>(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public b(Ldq0;)V
    .locals 1

    const-string v0, "cachedBitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->l()V

    return-void
.end method

.method public c(Landroid/graphics/drawable/PictureDrawable;)V
    .locals 1

    const-string v0, "pictureDrawable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->l()V

    return-void
.end method

.method public final l()V
    .locals 2

    invoke-static {}, Lpfb;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->f(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->i(Lcom/yandex/div/core/DivPreloader$DownloadCallback;I)V

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->f(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->h(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->e(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)Lcom/yandex/div/core/DivPreloader$a;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->g(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/yandex/div/core/DivPreloader$a;->a(Z)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lpfb;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/core/DivPreloader$DownloadCallback$done$$inlined$runOnUiThread$1;

    invoke-direct {v1, p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback$done$$inlined$runOnUiThread$1;-><init>(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final m()V
    .locals 2

    invoke-static {}, Lpfb;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->k(Lcom/yandex/div/core/DivPreloader$DownloadCallback;Z)V

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->f(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->e(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)Lcom/yandex/div/core/DivPreloader$a;

    move-result-object v1

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->g(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/yandex/div/core/DivPreloader$a;->a(Z)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lpfb;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/core/DivPreloader$DownloadCallback$onFullPreloadStarted$$inlined$runOnUiThread$1;

    invoke-direct {v1, p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback$onFullPreloadStarted$$inlined$runOnUiThread$1;-><init>(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 2

    invoke-static {}, Lpfb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->f(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->i(Lcom/yandex/div/core/DivPreloader$DownloadCallback;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lpfb;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/core/DivPreloader$DownloadCallback$onSingleLoadingStarted$$inlined$runOnUiThread$1;

    invoke-direct {v1, p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback$onSingleLoadingStarted$$inlined$runOnUiThread$1;-><init>(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
