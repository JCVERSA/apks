.class public final Lcom/yandex/mobile/ads/impl/f82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Lcom/yandex/mobile/ads/impl/ju1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/yandex/mobile/ads/impl/ju1;)V
    .locals 1

    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/f82;->a:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/f82;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/f82;->c:Lcom/yandex/mobile/ads/impl/ju1;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "thread"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f82;->c:Lcom/yandex/mobile/ads/impl/ju1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->q()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const-string v2, "getStackTrace(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/j22;->a([Ljava/lang/StackTraceElement;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f82;->a:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v0, p2}, Lcom/yandex/mobile/ads/impl/sp1;->reportUnhandledException(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f82;->c:Lcom/yandex/mobile/ads/impl/ju1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->p()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f82;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_2

    goto :goto_3

    :goto_1
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/f82;->a:Lcom/yandex/mobile/ads/impl/sp1;

    const-string v2, "Failed to report uncaught exception"

    invoke-interface {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lzfb;->a:Lzfb;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f82;->c:Lcom/yandex/mobile/ads/impl/ju1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->p()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f82;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_2

    :goto_3
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/f82;->c:Lcom/yandex/mobile/ads/impl/ju1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->p()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f82;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3
    throw v0
.end method
