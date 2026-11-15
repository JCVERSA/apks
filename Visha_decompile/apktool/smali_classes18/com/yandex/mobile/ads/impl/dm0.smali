.class public final Lcom/yandex/mobile/ads/impl/dm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ld2$b;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/cc2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/cc2;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "infoDataProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dm0;->a:Lcom/yandex/mobile/ads/impl/cc2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/pp1;
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dm0;->a:Lcom/yandex/mobile/ads/impl/cc2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cc2;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "product_type"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
