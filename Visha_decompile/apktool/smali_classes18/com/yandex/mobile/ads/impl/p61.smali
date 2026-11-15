.class public final Lcom/yandex/mobile/ads/impl/p61;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/j61;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/yandex/mobile/ads/impl/i5;

.field private d:Lcom/yandex/mobile/ads/impl/vt;

.field private e:Lcom/yandex/mobile/ads/impl/bu;

.field private f:Lcom/yandex/mobile/ads/impl/ku;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/j61;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdLoadingFinishedListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/p61;->a:Lcom/yandex/mobile/ads/impl/j61;

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/p61;->b:Landroid/os/Handler;

    new-instance p4, Lcom/yandex/mobile/ads/impl/i5;

    invoke-direct {p4, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/i5;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/p61;->c:Lcom/yandex/mobile/ads/impl/i5;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/b02;)V
    .locals 1

    .line 30
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sliderAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->f:Lcom/yandex/mobile/ads/impl/ku;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/ku;->a(Lcom/yandex/mobile/ads/impl/b02;)V

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p61;->a:Lcom/yandex/mobile/ads/impl/j61;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/j61;->a()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 2

    .line 13
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->d:Lcom/yandex/mobile/ads/impl/vt;

    if-eqz v0, :cond_1

    .line 15
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/t91;

    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/vt;->b(Lcom/yandex/mobile/ads/impl/q61;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/vt;->a(Lcom/yandex/mobile/ads/impl/q61;)V

    .line 18
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p61;->a:Lcom/yandex/mobile/ads/impl/j61;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/j61;->a()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 4
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->d:Lcom/yandex/mobile/ads/impl/vt;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/vt;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->e:Lcom/yandex/mobile/ads/impl/bu;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/bu;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->f:Lcom/yandex/mobile/ads/impl/ku;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/ku;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p61;->a:Lcom/yandex/mobile/ads/impl/j61;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/j61;->a()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/p61;Ljava/util/List;)V
    .locals 1

    .line 23
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nativeAds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->e:Lcom/yandex/mobile/ads/impl/bu;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/bu;->onAdsLoaded(Ljava/util/List;)V

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p61;->a:Lcom/yandex/mobile/ads/impl/j61;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/j61;->a()V

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->c:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/i5;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->b:Landroid/os/Handler;

    new-instance v1, Lwpd;

    invoke-direct {v1, p0, p1}, Lwpd;-><init>(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/w3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/b02;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/p61;->a(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/b02;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/p61;->a(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/q61;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/p61;->a(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/p61;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/p61;->a(Lcom/yandex/mobile/ads/impl/p61;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p61;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/bu;)V
    .locals 2

    .line 39
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p61;->e:Lcom/yandex/mobile/ads/impl/bu;

    .line 40
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->c:Lcom/yandex/mobile/ads/impl/i5;

    .line 41
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p61;->d:Lcom/yandex/mobile/ads/impl/vt;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p61;->f:Lcom/yandex/mobile/ads/impl/ku;

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/i5;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/d71;)V
    .locals 1

    .line 42
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p61;->c:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i5;->a(Lcom/yandex/mobile/ads/impl/jr1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/k81;)V
    .locals 2

    .line 26
    const-string v0, "sliderAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/yandex/mobile/ads/impl/ts;->g:Lcom/yandex/mobile/ads/impl/ts;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/a4;->a(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->c:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i5;->a()V

    .line 29
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->b:Landroid/os/Handler;

    new-instance v1, Lypd;

    invoke-direct {v1, p0, p1}, Lypd;-><init>(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/b02;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ku;)V
    .locals 2

    .line 44
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p61;->f:Lcom/yandex/mobile/ads/impl/ku;

    .line 45
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->c:Lcom/yandex/mobile/ads/impl/i5;

    .line 46
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p61;->d:Lcom/yandex/mobile/ads/impl/vt;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p61;->e:Lcom/yandex/mobile/ads/impl/bu;

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/i5;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    .line 33
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/yandex/mobile/ads/impl/y7;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/y7;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    .line 35
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p61;->c:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/i5;->a(Lcom/yandex/mobile/ads/impl/kq1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 2

    .line 9
    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/yandex/mobile/ads/impl/ts;->g:Lcom/yandex/mobile/ads/impl/ts;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/a4;->a(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->c:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i5;->a()V

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->b:Landroid/os/Handler;

    new-instance v1, Lxpd;

    invoke-direct {v1, p0, p1}, Lxpd;-><init>(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/q61;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vt;)V
    .locals 2

    .line 36
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p61;->d:Lcom/yandex/mobile/ads/impl/vt;

    .line 37
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->c:Lcom/yandex/mobile/ads/impl/i5;

    .line 38
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p61;->e:Lcom/yandex/mobile/ads/impl/bu;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p61;->f:Lcom/yandex/mobile/ads/impl/ku;

    filled-new-array {p1, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/i5;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2

    .line 19
    const-string v0, "nativeAds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/yandex/mobile/ads/impl/ts;->g:Lcom/yandex/mobile/ads/impl/ts;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/a4;->a(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->c:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i5;->a()V

    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p61;->b:Landroid/os/Handler;

    new-instance v1, Lzpd;

    invoke-direct {v1, p0, p1}, Lzpd;-><init>(Lcom/yandex/mobile/ads/impl/p61;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 2
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/p61;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method
