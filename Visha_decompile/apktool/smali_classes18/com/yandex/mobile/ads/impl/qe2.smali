.class public final Lcom/yandex/mobile/ads/impl/qe2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ve2;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/yandex/mobile/ads/impl/lu;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/qe2;->a:Landroid/os/Handler;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/qe2;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qe2;->b:Lcom/yandex/mobile/ads/impl/lu;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/lu;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/qe2;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/qe2;->a(Lcom/yandex/mobile/ads/impl/qe2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sn2;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qe2;->b:Lcom/yandex/mobile/ads/impl/lu;

    return-void
.end method

.method public final onVideoComplete()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qe2;->a:Landroid/os/Handler;

    new-instance v1, Lerd;

    invoke-direct {v1, p0}, Lerd;-><init>(Lcom/yandex/mobile/ads/impl/qe2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
