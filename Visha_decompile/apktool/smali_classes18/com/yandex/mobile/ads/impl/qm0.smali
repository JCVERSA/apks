.class public final Lcom/yandex/mobile/ads/impl/qm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/et;

.field private final b:Lcom/yandex/mobile/ads/impl/pm0;

.field private c:Lcom/yandex/mobile/ads/impl/om0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/gf2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/pm0;

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/impl/pm0;-><init>(Lcom/yandex/mobile/ads/impl/gf2;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/qm0;-><init>(Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/pm0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/pm0;)V
    .locals 1

    .line 3
    const-string v0, "instreamVideoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPlayerController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "instreamAdPlaylistCreator"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qm0;->a:Lcom/yandex/mobile/ads/impl/et;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qm0;->b:Lcom/yandex/mobile/ads/impl/pm0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/om0;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qm0;->c:Lcom/yandex/mobile/ads/impl/om0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qm0;->b:Lcom/yandex/mobile/ads/impl/pm0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qm0;->a:Lcom/yandex/mobile/ads/impl/et;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/et;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pm0;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/om0;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/qm0;->c:Lcom/yandex/mobile/ads/impl/om0;

    :cond_0
    return-object v0
.end method
