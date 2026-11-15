.class public final Lcom/yandex/mobile/ads/impl/r51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/n0;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/yandex/mobile/ads/impl/st;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/r51;-><init>(Landroid/os/Handler;)V

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
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/r51;->a:Landroid/os/Handler;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/r51;)V
    .locals 1

    .line 2
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r51;->b:Lcom/yandex/mobile/ads/impl/st;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/st;->closeNativeAd()V

    :cond_0
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/r51;Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 1

    .line 5
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r51;->b:Lcom/yandex/mobile/ads/impl/st;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/st;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/r51;)V
    .locals 1

    .line 2
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/r51;->b:Lcom/yandex/mobile/ads/impl/st;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/st;->onAdClicked()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r51;->b:Lcom/yandex/mobile/ads/impl/st;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/st;->onLeftApplication()V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/r51;Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/r51;->a(Lcom/yandex/mobile/ads/impl/r51;Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method

.method private static final c(Lcom/yandex/mobile/ads/impl/r51;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r51;->b:Lcom/yandex/mobile/ads/impl/st;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/st;->onReturnedToApplication()V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/r51;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/r51;->a(Lcom/yandex/mobile/ads/impl/r51;)V

    return-void
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/r51;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/r51;->b(Lcom/yandex/mobile/ads/impl/r51;)V

    return-void
.end method

.method public static synthetic f(Lcom/yandex/mobile/ads/impl/r51;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/r51;->c(Lcom/yandex/mobile/ads/impl/r51;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/r51;->a:Landroid/os/Handler;

    new-instance v1, Lrrd;

    invoke-direct {v1, p0}, Lrrd;-><init>(Lcom/yandex/mobile/ads/impl/r51;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/st;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/r51;->b:Lcom/yandex/mobile/ads/impl/st;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/r51;->a:Landroid/os/Handler;

    new-instance v1, Lqrd;

    invoke-direct {v1, p0, p1}, Lqrd;-><init>(Lcom/yandex/mobile/ads/impl/r51;Lcom/yandex/mobile/ads/impl/t4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLeftApplication()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/r51;->a:Landroid/os/Handler;

    new-instance v1, Ltrd;

    invoke-direct {v1, p0}, Ltrd;-><init>(Lcom/yandex/mobile/ads/impl/r51;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/r51;->a:Landroid/os/Handler;

    new-instance v1, Lsrd;

    invoke-direct {v1, p0}, Lsrd;-><init>(Lcom/yandex/mobile/ads/impl/r51;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
