.class public Lcom/yandex/div/core/view2/DivPlaceholderLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lfd2;

.field public final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lfd2;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    const-string v0, "imageStubProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorService"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader;->a:Lfd2;

    iput-object p2, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/DivPlaceholderLoader;)Lfd2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader;->a:Lfd2;

    return-object p0
.end method


# virtual methods
.method public b(Lkn5;Lwc3;Ljava/lang/String;IZLe74;Le74;)V
    .locals 7

    const-string v0, "imageView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollector"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSetPlaceholder"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSetPreview"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-instance v0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p6

    move-object v4, p0

    move v5, p4

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/DivPlaceholderLoader$applyPlaceholder$1$1;-><init>(Lwc3;Le74;Lcom/yandex/div/core/view2/DivPlaceholderLoader;ILe74;)V

    invoke-virtual {p0, p3, p1, p5, v0}, Lcom/yandex/div/core/view2/DivPlaceholderLoader;->d(Ljava/lang/String;Lkn5;ZLe74;)V

    sget-object p1, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader;->a:Lfd2;

    invoke-interface {p0, p4}, Lfd2;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p6, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;ZLe74;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/yandex/div/core/DecodeBase64ImageTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/yandex/div/core/DecodeBase64ImageTask;-><init>(Ljava/lang/String;ZLe74;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/yandex/div/core/DecodeBase64ImageTask;->run()V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/DivPlaceholderLoader;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final d(Ljava/lang/String;Lkn5;ZLe74;)V
    .locals 2

    invoke-interface {p2}, Lkn5;->getLoadingTask()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/DivPlaceholderLoader$enqueueDecoding$future$1;

    invoke-direct {v0, p4, p2}, Lcom/yandex/div/core/view2/DivPlaceholderLoader$enqueueDecoding$future$1;-><init>(Le74;Lkn5;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/DivPlaceholderLoader;->c(Ljava/lang/String;ZLe74;)Ljava/util/concurrent/Future;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p2, p0}, Lkn5;->saveLoadingTask(Ljava/util/concurrent/Future;)V

    :cond_1
    return-void
.end method
