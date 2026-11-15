.class public final Lcom/yandex/mobile/ads/impl/gd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jf;

.field private final b:Lcom/yandex/mobile/ads/impl/mt0;

.field private final c:Lcom/yandex/mobile/ads/impl/pw1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/gd;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/jf;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jf;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/mt0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/mt0;-><init>()V

    .line 3
    sget v2, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v2

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/gd;-><init>(Lcom/yandex/mobile/ads/impl/jf;Lcom/yandex/mobile/ads/impl/mt0;Lcom/yandex/mobile/ads/impl/pw1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jf;Lcom/yandex/mobile/ads/impl/mt0;Lcom/yandex/mobile/ads/impl/pw1;)V
    .locals 1

    .line 5
    const-string v0, "appMetricaPolicyConfigurator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestAnalyzer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkSettings"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gd;->a:Lcom/yandex/mobile/ads/impl/jf;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gd;->b:Lcom/yandex/mobile/ads/impl/mt0;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gd;->c:Lcom/yandex/mobile/ads/impl/pw1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gd;->c:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->l()Z

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/gd;->b:Lcom/yandex/mobile/ads/impl/mt0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/mt0;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    sget-object v1, Lcom/yandex/mobile/ads/impl/gd;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gd;->a:Lcom/yandex/mobile/ads/impl/jf;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jf;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kd;

    move-result-object p0

    sget-object v1, Lcom/yandex/mobile/ads/impl/fd;->a:Lcom/yandex/mobile/ads/impl/fd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;->newConfigBuilder()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kd;->a()Z

    move-result p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;->withAdvIdentifiersTracking(Z)Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->activate(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
