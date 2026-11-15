.class public final Lcom/yandex/mobile/ads/impl/um0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sm0$a;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/g5;

.field private final c:Lcom/yandex/mobile/ads/impl/tm0;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/yandex/mobile/ads/impl/i5;

.field private f:Lcom/yandex/mobile/ads/impl/jt;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/tm0;)V
    .locals 7

    .line 1
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/i5;

    invoke-direct {v6, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/i5;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/um0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/tm0;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/i5;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/tm0;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/i5;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestFinishedListener"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingResultReporter"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/um0;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/um0;->b:Lcom/yandex/mobile/ads/impl/g5;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/um0;->c:Lcom/yandex/mobile/ads/impl/tm0;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/um0;->d:Landroid/os/Handler;

    .line 10
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/um0;->e:Lcom/yandex/mobile/ads/impl/i5;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/um0;Lcom/yandex/mobile/ads/impl/et;)V
    .locals 1

    .line 13
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$instreamAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/um0;->f:Lcom/yandex/mobile/ads/impl/jt;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/jt;->a(Lcom/yandex/mobile/ads/impl/et;)V

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/um0;->c:Lcom/yandex/mobile/ads/impl/tm0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/tm0;->a()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/um0;Ljava/lang/String;)V
    .locals 1

    .line 5
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/um0;->f:Lcom/yandex/mobile/ads/impl/jt;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/jt;->onInstreamAdFailedToLoad(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/um0;->c:Lcom/yandex/mobile/ads/impl/tm0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/tm0;->a()V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/um0;Lcom/yandex/mobile/ads/impl/et;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/um0;->a(Lcom/yandex/mobile/ads/impl/um0;Lcom/yandex/mobile/ads/impl/et;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/um0;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/um0;->a(Lcom/yandex/mobile/ads/impl/um0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/et;)V
    .locals 2

    .line 8
    const-string v0, "instreamAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/um0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/a4;->a(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/um0;->b:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->e:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/um0;->e:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i5;->a()V

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/um0;->d:Landroid/os/Handler;

    new-instance v1, Ldvd;

    invoke-direct {v1, p0, p1}, Ldvd;-><init>(Lcom/yandex/mobile/ads/impl/um0;Lcom/yandex/mobile/ads/impl/et;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/jt;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/um0;->f:Lcom/yandex/mobile/ads/impl/jt;

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/um0;->e:Lcom/yandex/mobile/ads/impl/i5;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i5;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/oi2;)V
    .locals 1

    .line 18
    const-string v0, "requestConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/yandex/mobile/ads/impl/yo0;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/yo0;-><init>(Lcom/yandex/mobile/ads/impl/oi2;)V

    .line 20
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/um0;->e:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/i5;->a(Lcom/yandex/mobile/ads/impl/kq1;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/um0;->b:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->e:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/um0;->e:Lcom/yandex/mobile/ads/impl/i5;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/i5;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/um0;->d:Landroid/os/Handler;

    new-instance v1, Lcvd;

    invoke-direct {v1, p0, p1}, Lcvd;-><init>(Lcom/yandex/mobile/ads/impl/um0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
