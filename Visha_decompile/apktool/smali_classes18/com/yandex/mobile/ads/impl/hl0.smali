.class public final Lcom/yandex/mobile/ads/impl/hl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/b11;

.field private final b:Lcom/yandex/mobile/ads/impl/dt;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b11;Lcom/yandex/mobile/ads/impl/dt;)V
    .locals 1

    const-string v0, "mobileAdsExecutor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hl0;->a:Lcom/yandex/mobile/ads/impl/b11;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hl0;->b:Lcom/yandex/mobile/ads/impl/dt;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/hl0;)V
    .locals 1

    .line 2
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hl0;->b:Lcom/yandex/mobile/ads/impl/dt;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/dt;->onInitializationCompleted()V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/hl0;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hl0;->a(Lcom/yandex/mobile/ads/impl/hl0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hl0;->a:Lcom/yandex/mobile/ads/impl/b11;

    new-instance v1, Lzhd;

    invoke-direct {v1, p0}, Lzhd;-><init>(Lcom/yandex/mobile/ads/impl/hl0;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/b11;->b(Ljava/lang/Runnable;)V

    return-void
.end method
