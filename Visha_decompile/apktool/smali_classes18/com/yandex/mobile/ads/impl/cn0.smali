.class public final Lcom/yandex/mobile/ads/impl/cn0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/bn0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/bn0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cn0;->a:Lcom/yandex/mobile/ads/impl/bn0;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t70;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/t70;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xb2;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "instreamAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendlyOverlays"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/bn0;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/bn0;-><init>(Lcom/yandex/mobile/ads/impl/t70;Ljava/util/List;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/cn0;->a:Lcom/yandex/mobile/ads/impl/bn0;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/cn0;->a:Lcom/yandex/mobile/ads/impl/bn0;

    return-void
.end method
