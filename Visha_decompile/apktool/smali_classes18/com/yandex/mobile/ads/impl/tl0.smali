.class public final Lcom/yandex/mobile/ads/impl/tl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ft;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ft;)V
    .locals 1

    const-string v0, "instreamAdBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tl0;->a:Lcom/yandex/mobile/ads/impl/ft;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tl0;->a:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ft;->c()V

    return-void
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

    .line 1
    const-string v0, "instreamAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendlyOverlays"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tl0;->a:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ft;->a(Lcom/yandex/mobile/ads/impl/t70;Ljava/util/List;)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tl0;->a:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ft;->d()V

    return-void
.end method
