.class public final Lcom/yandex/mobile/ads/impl/tf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ue;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/ve;->a()Lcom/yandex/mobile/ads/impl/pf;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/tf;-><init>(Lcom/yandex/mobile/ads/impl/ue;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ue;)V
    .locals 1

    .line 3
    const-string v0, "appMetricaAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tf;->a:Lcom/yandex/mobile/ads/impl/ue;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tf;->a:Lcom/yandex/mobile/ads/impl/ue;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ue;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
