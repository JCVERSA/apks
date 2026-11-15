.class public final Lcom/yandex/mobile/ads/impl/zi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/t3;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/yandex/mobile/ads/impl/i5;

.field private c:Lcom/yandex/mobile/ads/impl/ys;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 6

    .line 1
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/i5;

    invoke-direct {v5, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/i5;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/zi;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/i5;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/i5;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingResultReporter"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/zi;->a:Landroid/os/Handler;

    .line 7
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/zi;->b:Lcom/yandex/mobile/ads/impl/i5;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/zi;)V
    .locals 1

    .line 2
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi;->c:Lcom/yandex/mobile/ads/impl/ys;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ys;->closeBannerAd()V

    :cond_0
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 1

    .line 11
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi;->c:Lcom/yandex/mobile/ads/impl/ys;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ys;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 8
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi;->c:Lcom/yandex/mobile/ads/impl/ys;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ys;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :cond_0
    return-void
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/zi;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi;->c:Lcom/yandex/mobile/ads/impl/ys;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ys;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method private static final c(Lcom/yandex/mobile/ads/impl/zi;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi;->c:Lcom/yandex/mobile/ads/impl/ys;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ys;->onAdClicked()V

    .line 4
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ys;->onLeftApplication()V

    :cond_0
    return-void
.end method

.method private static final d(Lcom/yandex/mobile/ads/impl/zi;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi;->c:Lcom/yandex/mobile/ads/impl/ys;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ys;->onReturnedToApplication()V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/zi;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/zi;->a(Lcom/yandex/mobile/ads/impl/zi;)V

    return-void
.end method

.method public static synthetic f(Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/zi;->a(Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method

.method public static synthetic g(Lcom/yandex/mobile/ads/impl/zi;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/zi;->c(Lcom/yandex/mobile/ads/impl/zi;)V

    return-void
.end method

.method public static synthetic h(Lcom/yandex/mobile/ads/impl/zi;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/zi;->d(Lcom/yandex/mobile/ads/impl/zi;)V

    return-void
.end method

.method public static synthetic i(Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/zi;->a(Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method

.method public static synthetic j(Lcom/yandex/mobile/ads/impl/zi;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/zi;->b(Lcom/yandex/mobile/ads/impl/zi;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zi;->a:Landroid/os/Handler;

    new-instance v1, Lv4e;

    invoke-direct {v1, p0}, Lv4e;-><init>(Lcom/yandex/mobile/ads/impl/zi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    .line 13
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/yandex/mobile/ads/impl/y7;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/y7;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    .line 15
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi;->b:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/i5;->a(Lcom/yandex/mobile/ads/impl/kq1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/sg0;)V
    .locals 1

    .line 18
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi;->b:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i5;->a(Lcom/yandex/mobile/ads/impl/jr1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zi;->a:Landroid/os/Handler;

    new-instance v1, Lu4e;

    invoke-direct {v1, p0, p1}, Lu4e;-><init>(Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/t4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 2

    .line 4
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->c()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zi;->b:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/i5;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zi;->a:Landroid/os/Handler;

    new-instance v1, Ls4e;

    invoke-direct {v1, p0, p1}, Ls4e;-><init>(Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/w3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ys;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zi;->c:Lcom/yandex/mobile/ads/impl/ys;

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi;->b:Lcom/yandex/mobile/ads/impl/i5;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i5;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zi;->a:Landroid/os/Handler;

    new-instance v1, Lq4e;

    invoke-direct {v1, p0}, Lq4e;-><init>(Lcom/yandex/mobile/ads/impl/zi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zi;->a:Landroid/os/Handler;

    new-instance v1, Lt4e;

    invoke-direct {v1, p0}, Lt4e;-><init>(Lcom/yandex/mobile/ads/impl/zi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zi;->b:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i5;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zi;->a:Landroid/os/Handler;

    new-instance v1, Lr4e;

    invoke-direct {v1, p0}, Lr4e;-><init>(Lcom/yandex/mobile/ads/impl/zi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
