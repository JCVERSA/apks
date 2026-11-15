.class public final Lcom/yandex/mobile/ads/impl/u40;
.super Lcom/yandex/mobile/ads/impl/uy1;
.source "SourceFile"


# instance fields
.field private final m:Lcom/yandex/mobile/ads/impl/v40;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uy1;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ag1;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/ag1;-><init>([B)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result p1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/v40;

    invoke-direct {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/v40;-><init>(II)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/u40;->m:Lcom/yandex/mobile/ads/impl/v40;

    return-void
.end method


# virtual methods
.method public final a([BIZ)Lcom/yandex/mobile/ads/impl/n32;
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/u40;->m:Lcom/yandex/mobile/ads/impl/v40;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/v40;->d()V

    :cond_0
    new-instance p3, Lcom/yandex/mobile/ads/impl/w40;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u40;->m:Lcom/yandex/mobile/ads/impl/v40;

    invoke-virtual {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/v40;->a(I[B)Ljava/util/List;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/yandex/mobile/ads/impl/w40;-><init>(Ljava/util/List;)V

    return-object p3
.end method
