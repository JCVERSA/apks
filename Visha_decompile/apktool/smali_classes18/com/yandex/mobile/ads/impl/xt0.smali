.class public final Lcom/yandex/mobile/ads/impl/xt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ot0;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/yandex/mobile/ads/impl/ot0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/xt0;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 3
    const-string v0, "handler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xt0;->a:Landroid/os/Handler;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/xt0;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xt0;->b:Lcom/yandex/mobile/ads/impl/ot0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ot0;->onInstreamAdBreakCompleted()V

    :cond_0
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/xt0;Ljava/lang/String;)V
    .locals 1

    .line 3
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reason"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xt0;->b:Lcom/yandex/mobile/ads/impl/ot0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ot0;->onInstreamAdBreakError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/xt0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xt0;->b:Lcom/yandex/mobile/ads/impl/ot0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ot0;->onInstreamAdBreakPrepared()V

    :cond_0
    return-void
.end method

.method private static final c(Lcom/yandex/mobile/ads/impl/xt0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xt0;->b:Lcom/yandex/mobile/ads/impl/ot0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ot0;->onInstreamAdBreakStarted()V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/xt0;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/xt0;->b(Lcom/yandex/mobile/ads/impl/xt0;)V

    return-void
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/xt0;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/xt0;->a(Lcom/yandex/mobile/ads/impl/xt0;)V

    return-void
.end method

.method public static synthetic f(Lcom/yandex/mobile/ads/impl/xt0;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/xt0;->a(Lcom/yandex/mobile/ads/impl/xt0;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/yandex/mobile/ads/impl/xt0;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/xt0;->c(Lcom/yandex/mobile/ads/impl/xt0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/cm2;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xt0;->b:Lcom/yandex/mobile/ads/impl/ot0;

    return-void
.end method

.method public final onInstreamAdBreakCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xt0;->a:Landroid/os/Handler;

    new-instance v1, Loxd;

    invoke-direct {v1, p0}, Loxd;-><init>(Lcom/yandex/mobile/ads/impl/xt0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onInstreamAdBreakError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "reason"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xt0;->a:Landroid/os/Handler;

    new-instance v1, Lqxd;

    invoke-direct {v1, p0, p1}, Lqxd;-><init>(Lcom/yandex/mobile/ads/impl/xt0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onInstreamAdBreakPrepared()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xt0;->a:Landroid/os/Handler;

    new-instance v1, Lnxd;

    invoke-direct {v1, p0}, Lnxd;-><init>(Lcom/yandex/mobile/ads/impl/xt0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onInstreamAdBreakStarted()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xt0;->a:Landroid/os/Handler;

    new-instance v1, Lpxd;

    invoke-direct {v1, p0}, Lpxd;-><init>(Lcom/yandex/mobile/ads/impl/xt0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
