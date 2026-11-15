.class public final Lcom/yandex/mobile/ads/impl/jo0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ko0;

.field private final b:Lcom/yandex/mobile/ads/impl/zz;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ko0;Lcom/yandex/mobile/ads/impl/aj1;)V
    .locals 1

    const-string v0, "instreamVideoAdControlsStateStorage"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerVolumeProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jo0;->a:Lcom/yandex/mobile/ads/impl/ko0;

    new-instance p1, Lcom/yandex/mobile/ads/impl/zz;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/zz;-><init>(Lcom/yandex/mobile/ads/impl/aj1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jo0;->b:Lcom/yandex/mobile/ads/impl/zz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/ln0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/ln0;"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jo0;->a:Lcom/yandex/mobile/ads/impl/ko0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ko0;->a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/ln0;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jo0;->b:Lcom/yandex/mobile/ads/impl/zz;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zz;->a()Lcom/yandex/mobile/ads/impl/ln0;

    move-result-object p1

    :cond_0
    return-object p1
.end method
