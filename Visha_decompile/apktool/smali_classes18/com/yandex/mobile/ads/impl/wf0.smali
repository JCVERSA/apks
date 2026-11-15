.class public final Lcom/yandex/mobile/ads/impl/wf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mc;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/mc;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/mc;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/wf0;-><init>(Lcom/yandex/mobile/ads/impl/mc;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mc;)V
    .locals 1

    .line 3
    const-string v0, "advertisingInfoCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wf0;->a:Lcom/yandex/mobile/ads/impl/mc;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/core/identifiers/ad/huawei/a;)Lcom/yandex/mobile/ads/impl/lc;
    .locals 2

    const-string v0, "serviceConnection"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/monetization/ads/core/identifiers/ad/huawei/a;->a()Lcom/monetization/ads/core/identifiers/ad/huawei/OpenDeviceIdentifierService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/monetization/ads/core/identifiers/ad/huawei/OpenDeviceIdentifierService;->getOaid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/monetization/ads/core/identifiers/ad/huawei/OpenDeviceIdentifierService;->getOaidTrackLimited()Z

    move-result p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wf0;->a:Lcom/yandex/mobile/ads/impl/mc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/lc;

    invoke-direct {p0, v1, p1}, Lcom/yandex/mobile/ads/impl/lc;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0
.end method
