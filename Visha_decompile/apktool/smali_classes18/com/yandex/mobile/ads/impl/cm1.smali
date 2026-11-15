.class public final Lcom/yandex/mobile/ads/impl/cm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b40;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/yandex/mobile/ads/impl/xv;

.field private final c:Lcom/yandex/mobile/ads/impl/wm;

.field private final d:Lcom/yandex/mobile/ads/impl/hn;

.field private e:Lcom/yandex/mobile/ads/impl/b40$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile f:Lcom/yandex/mobile/ads/impl/at1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/at1<",
            "Ljava/lang/Void;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jw0;Lcom/yandex/mobile/ads/impl/wm$a;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/cm1;->a:Ljava/util/concurrent/Executor;

    iget-object p3, p1, Lcom/yandex/mobile/ads/impl/jw0;->c:Lcom/yandex/mobile/ads/impl/jw0$g;

    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/yandex/mobile/ads/impl/xv$a;

    invoke-direct {p3}, Lcom/yandex/mobile/ads/impl/xv$a;-><init>()V

    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/jw0;->c:Lcom/yandex/mobile/ads/impl/jw0$g;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/jw0$f;->a:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Lcom/yandex/mobile/ads/impl/xv$a;->a(Landroid/net/Uri;)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p3

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jw0;->c:Lcom/yandex/mobile/ads/impl/jw0$g;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jw0$f;->e:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/impl/xv$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/yandex/mobile/ads/impl/xv$a;->a(I)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xv$a;->a()Lcom/yandex/mobile/ads/impl/xv;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cm1;->b:Lcom/yandex/mobile/ads/impl/xv;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/wm$a;->b()Lcom/yandex/mobile/ads/impl/wm;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/cm1;->c:Lcom/yandex/mobile/ads/impl/wm;

    new-instance p3, Lv8d;

    invoke-direct {p3, p0}, Lv8d;-><init>(Lcom/yandex/mobile/ads/impl/cm1;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/hn;

    invoke-direct {v0, p2, p1, p3}, Lcom/yandex/mobile/ads/impl/hn;-><init>(Lcom/yandex/mobile/ads/impl/wm;Lcom/yandex/mobile/ads/impl/xv;Lcom/yandex/mobile/ads/impl/hn$a;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/cm1;->d:Lcom/yandex/mobile/ads/impl/hn;

    return-void
.end method

.method private a(JJJ)V
    .locals 6

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cm1;->e:Lcom/yandex/mobile/ads/impl/b40$a;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 p5, -0x1

    cmp-long p5, p1, p5

    if-eqz p5, :cond_2

    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    long-to-float p5, p3

    const/high16 p6, 0x42c80000    # 100.0f

    mul-float/2addr p5, p6

    long-to-float p6, p1

    div-float/2addr p5, p6

    :goto_0
    move v5, p5

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 p5, -0x40800000    # -1.0f

    goto :goto_0

    .line 18
    :goto_2
    move-object v0, p0

    check-cast v0, Lcom/yandex/mobile/ads/impl/y30$d;

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/y30$d;->a(JJF)V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/mobile/ads/impl/cm1;JJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/yandex/mobile/ads/impl/cm1;->a(JJJ)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/cm1;)Lcom/yandex/mobile/ads/impl/hn;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cm1;->d:Lcom/yandex/mobile/ads/impl/hn;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/b40$a;)V
    .locals 2
    .param p1    # Lcom/yandex/mobile/ads/impl/b40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cm1;->e:Lcom/yandex/mobile/ads/impl/b40$a;

    .line 3
    new-instance p1, Lcom/yandex/mobile/ads/impl/cm1$a;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/cm1$a;-><init>(Lcom/yandex/mobile/ads/impl/cm1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cm1;->f:Lcom/yandex/mobile/ads/impl/at1;

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/cm1;->g:Z

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cm1;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/cm1;->f:Lcom/yandex/mobile/ads/impl/at1;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cm1;->f:Lcom/yandex/mobile/ads/impl/at1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/at1;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    instance-of v1, v0, Lcom/yandex/mobile/ads/impl/dl1;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    instance-of p1, v0, Ljava/io/IOException;

    if-eqz p1, :cond_1

    .line 11
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 12
    :cond_1
    sget p1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 13
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :goto_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cm1;->f:Lcom/yandex/mobile/ads/impl/at1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/at1;->a()V

    .line 15
    throw p1

    .line 16
    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cm1;->f:Lcom/yandex/mobile/ads/impl/at1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/at1;->a()V

    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/cm1;->g:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cm1;->f:Lcom/yandex/mobile/ads/impl/at1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/at1;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cm1;->c:Lcom/yandex/mobile/ads/impl/wm;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wm;->f()Lcom/yandex/mobile/ads/impl/sm;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/cm1;->c:Lcom/yandex/mobile/ads/impl/wm;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/wm;->g()Lcom/yandex/mobile/ads/impl/en;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cm1;->b:Lcom/yandex/mobile/ads/impl/xv;

    invoke-interface {v1, p0}, Lcom/yandex/mobile/ads/impl/en;->a(Lcom/yandex/mobile/ads/impl/xv;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/sm;->a(Ljava/lang/String;)V

    return-void
.end method
