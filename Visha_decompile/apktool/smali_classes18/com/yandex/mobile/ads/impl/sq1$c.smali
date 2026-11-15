.class final Lcom/yandex/mobile/ads/impl/sq1$c;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/sq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field final synthetic c:Lcom/yandex/mobile/ads/impl/sq1;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/sq1;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sq1$c;->c:Lcom/yandex/mobile/ads/impl/sq1;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sq1;Lotd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/sq1$c;-><init>(Lcom/yandex/mobile/ads/impl/sq1;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sq1$c;->c:Lcom/yandex/mobile/ads/impl/sq1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->f(Lcom/yandex/mobile/ads/impl/sq1;)Lcom/yandex/mobile/ads/impl/sq1$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->c(Lcom/yandex/mobile/ads/impl/sq1;)Lcom/yandex/mobile/ads/impl/rq1;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->a(Lcom/yandex/mobile/ads/impl/sq1;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/rq1;->a(Landroid/content/Context;)I

    move-result v0

    .line 4
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->e(Lcom/yandex/mobile/ads/impl/sq1;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 5
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/sq1;->g(Lcom/yandex/mobile/ads/impl/sq1;I)V

    .line 6
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->b(Lcom/yandex/mobile/ads/impl/sq1;)Lcom/yandex/mobile/ads/impl/sq1$b;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/yandex/mobile/ads/impl/sq1$b;->a(Lcom/yandex/mobile/ads/impl/sq1;I)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/yandex/mobile/ads/impl/sq1$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sq1$c;->a()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sq1$c;->c:Lcom/yandex/mobile/ads/impl/sq1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->f(Lcom/yandex/mobile/ads/impl/sq1;)Lcom/yandex/mobile/ads/impl/sq1$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->e(Lcom/yandex/mobile/ads/impl/sq1;)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->c(Lcom/yandex/mobile/ads/impl/sq1;)Lcom/yandex/mobile/ads/impl/rq1;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->a(Lcom/yandex/mobile/ads/impl/sq1;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/rq1;->a(Landroid/content/Context;)I

    move-result v0

    .line 5
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->e(Lcom/yandex/mobile/ads/impl/sq1;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 6
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/sq1;->g(Lcom/yandex/mobile/ads/impl/sq1;I)V

    .line 7
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->b(Lcom/yandex/mobile/ads/impl/sq1;)Lcom/yandex/mobile/ads/impl/sq1$b;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/yandex/mobile/ads/impl/sq1$b;->a(Lcom/yandex/mobile/ads/impl/sq1;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/sq1$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sq1$c;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sq1$c;->c:Lcom/yandex/mobile/ads/impl/sq1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sq1;->d(Lcom/yandex/mobile/ads/impl/sq1;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/nr2;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/nr2;-><init>(Lcom/yandex/mobile/ads/impl/sq1$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sq1$c;->c:Lcom/yandex/mobile/ads/impl/sq1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sq1;->d(Lcom/yandex/mobile/ads/impl/sq1;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/mr2;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/mr2;-><init>(Lcom/yandex/mobile/ads/impl/sq1$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sq1$c;->c()V

    return-void
.end method

.method public final onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sq1$c;->d()V

    :cond_0
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/sq1$c;->a:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/sq1$c;->b:Z

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sq1$c;->d()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/sq1$c;->a:Z

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/sq1$c;->b:Z

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sq1$c;->c()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sq1$c;->c()V

    return-void
.end method
