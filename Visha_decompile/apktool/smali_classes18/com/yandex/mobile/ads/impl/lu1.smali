.class public final Lcom/yandex/mobile/ads/impl/lu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/zu1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/jf;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/s01;Lcom/yandex/mobile/ads/impl/jf;)V
    .locals 1

    const-string v0, "appMetricaPolicyConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lu1;->a:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lu1;->b:Lcom/yandex/mobile/ads/impl/jf;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ju1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/lu1;->b:Lcom/yandex/mobile/ads/impl/jf;

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/jf;->b(Landroid/content/Context;)Z

    move-result p2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lu1;->b:Lcom/yandex/mobile/ads/impl/jf;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/jf;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kd;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lu1;->a:Lcom/yandex/mobile/ads/impl/sp1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/yandex/mobile/ads/impl/sp1;->a(Z)V

    :cond_0
    sget-object p0, Lcom/yandex/mobile/ads/impl/fd;->a:Lcom/yandex/mobile/ads/impl/fd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "configuration"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/kd;->a()Z

    move-result p0

    invoke-static {p0}, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->setAdvIdentifiersTracking(Z)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
