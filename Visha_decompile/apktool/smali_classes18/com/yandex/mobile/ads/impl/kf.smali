.class public final Lcom/yandex/mobile/ads/impl/kf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jf;

.field private final b:Lcom/yandex/mobile/ads/impl/ie;

.field private final c:Lcom/yandex/mobile/ads/impl/ue;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jf;Lcom/yandex/mobile/ads/impl/ie;Lcom/yandex/mobile/ads/impl/ue;)V
    .locals 1

    const-string v0, "appMetricaPolicyConfigurator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appAdAnalyticsActivator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMetricaAdapter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kf;->a:Lcom/yandex/mobile/ads/impl/jf;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kf;->b:Lcom/yandex/mobile/ads/impl/ie;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/kf;->c:Lcom/yandex/mobile/ads/impl/ue;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/sp1;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/pa;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "322a737a-a0ca-44e0-bc85-649b1c7c1db6"

    goto :goto_0

    :cond_0
    const-string v0, "478cb909-6ad1-4e12-84cc-b3629a789f93"

    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kf;->c:Lcom/yandex/mobile/ads/impl/ue;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/kf;->a:Lcom/yandex/mobile/ads/impl/jf;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kf;->b:Lcom/yandex/mobile/ads/impl/ie;

    invoke-interface {v1, p1, v0, v2, p0}, Lcom/yandex/mobile/ads/impl/ue;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jf;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/qf;

    move-result-object p0

    return-object p0
.end method
