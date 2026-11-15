.class public final Lcom/yandex/mobile/ads/impl/ku1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/lu1;

.field private final b:Lcom/yandex/mobile/ads/impl/pu1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jf;Lcom/yandex/mobile/ads/impl/lu1;Lcom/yandex/mobile/ads/impl/pu1;)V
    .locals 1

    const-string v0, "appMetricaPolicyConfigurator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkConfigurationChangeListener"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkConfigurationProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ku1;->a:Lcom/yandex/mobile/ads/impl/lu1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ku1;->b:Lcom/yandex/mobile/ads/impl/pu1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ku1;->b:Lcom/yandex/mobile/ads/impl/pu1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ku1;->a:Lcom/yandex/mobile/ads/impl/lu1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/pu1;->a(Lcom/yandex/mobile/ads/impl/lu1;)V

    return-void
.end method
