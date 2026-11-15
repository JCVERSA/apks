.class public final Lcom/yandex/mobile/ads/impl/p60;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ql;

.field private final b:Lcom/yandex/mobile/ads/impl/z5;

.field private final c:Lcom/yandex/mobile/ads/impl/b70;

.field private final d:Lcom/yandex/mobile/ads/impl/sp1;

.field private final e:Lcom/yandex/mobile/ads/impl/r9;

.field private final f:Lcom/yandex/mobile/ads/impl/a5;

.field private final g:Lcom/yandex/mobile/ads/impl/p5;

.field private final h:Lcom/yandex/mobile/ads/impl/eb;

.field private final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ql;Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/z5;Lcom/yandex/mobile/ads/impl/b70;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/a5;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/eb;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "bindingControllerHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adStateDataController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adPlayerEventsController"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerProvider"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "reporter"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adStateHolder"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adInfoStorage"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adPlaybackStateController"

    invoke-static {p8, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adsLoaderPlaybackErrorConverter"

    invoke-static {p9, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "prepareCompleteHandler"

    invoke-static {p10, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p60;->a:Lcom/yandex/mobile/ads/impl/ql;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/p60;->b:Lcom/yandex/mobile/ads/impl/z5;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/p60;->c:Lcom/yandex/mobile/ads/impl/b70;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/p60;->d:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/p60;->e:Lcom/yandex/mobile/ads/impl/r9;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/p60;->f:Lcom/yandex/mobile/ads/impl/a5;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/p60;->g:Lcom/yandex/mobile/ads/impl/p5;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/p60;->h:Lcom/yandex/mobile/ads/impl/eb;

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/p60;->i:Landroid/os/Handler;

    return-void
.end method

.method private final a(IIJ)V
    .locals 8

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p3

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p60;->c:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b70;->a()Lcom/google/android/exoplayer2/t;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    invoke-interface {v0}, Lcom/google/android/exoplayer2/t;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 16
    new-instance p3, Lcom/yandex/mobile/ads/impl/v4;

    invoke-direct {p3, p1, p2}, Lcom/yandex/mobile/ads/impl/v4;-><init>(II)V

    .line 17
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/p60;->f:Lcom/yandex/mobile/ads/impl/a5;

    invoke-virtual {p1, p3}, Lcom/yandex/mobile/ads/impl/a5;->a(Lcom/yandex/mobile/ads/impl/v4;)Lcom/yandex/mobile/ads/impl/go0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/p60;->e:Lcom/yandex/mobile/ads/impl/r9;

    sget-object p3, Lcom/yandex/mobile/ads/impl/wm0;->c:Lcom/yandex/mobile/ads/impl/wm0;

    invoke-virtual {p2, p1, p3}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/wm0;)V

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p60;->b:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/z5;->b(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    .line 20
    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p60;->i:Landroid/os/Handler;

    new-instance v7, Lvpd;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lvpd;-><init>(Lcom/yandex/mobile/ads/impl/p60;IIJ)V

    const-wide/16 p0, 0x14

    .line 22
    invoke-virtual {v0, v7, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 23
    :cond_2
    new-instance p3, Lcom/yandex/mobile/ads/impl/v4;

    invoke-direct {p3, p1, p2}, Lcom/yandex/mobile/ads/impl/v4;-><init>(II)V

    .line 24
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/p60;->f:Lcom/yandex/mobile/ads/impl/a5;

    invoke-virtual {p1, p3}, Lcom/yandex/mobile/ads/impl/a5;->a(Lcom/yandex/mobile/ads/impl/v4;)Lcom/yandex/mobile/ads/impl/go0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 25
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/p60;->e:Lcom/yandex/mobile/ads/impl/r9;

    sget-object p3, Lcom/yandex/mobile/ads/impl/wm0;->c:Lcom/yandex/mobile/ads/impl/wm0;

    invoke-virtual {p2, p1, p3}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/wm0;)V

    .line 26
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p60;->b:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/z5;->b(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    .line 27
    :cond_3
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final a(IILjava/io/IOException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p60;->g:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/p5;->a()Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/a;->k(II)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v0

    const-string v1, "withAdLoadError(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p60;->g:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/a;)V

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/v4;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/v4;-><init>(II)V

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/p60;->f:Lcom/yandex/mobile/ads/impl/a5;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/a5;->a(Lcom/yandex/mobile/ads/impl/v4;)Lcom/yandex/mobile/ads/impl/go0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/p60;->e:Lcom/yandex/mobile/ads/impl/r9;

    sget-object v0, Lcom/yandex/mobile/ads/impl/wm0;->g:Lcom/yandex/mobile/ads/impl/wm0;

    invoke-virtual {p2, p1, v0}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/wm0;)V

    .line 7
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/p60;->h:Lcom/yandex/mobile/ads/impl/eb;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/eb;->c(Ljava/lang/Throwable;)Lcom/yandex/mobile/ads/impl/xc2;

    move-result-object p2

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p60;->b:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/z5;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/xc2;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 9
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/p60;IIJ)V
    .locals 1

    .line 11
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/p60;->a(IIJ)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/p60;IIJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/p60;->a(Lcom/yandex/mobile/ads/impl/p60;IIJ)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/p60;->a(IIJ)V

    return-void
.end method

.method public final b(IILjava/io/IOException;)V
    .locals 1

    .line 2
    const-string v0, "exception"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p60;->c:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b70;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p60;->a:Lcom/yandex/mobile/ads/impl/ql;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ql;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/p60;->a(IILjava/io/IOException;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p60;->d:Lcom/yandex/mobile/ads/impl/sp1;

    const-string p2, "Unexpected exception while handling prepare error"

    invoke-interface {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->f([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
