.class public final Lcom/yandex/mobile/ads/impl/jr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/of1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/of1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/of1;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/jr;-><init>(Lcom/yandex/mobile/ads/impl/of1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/of1;)V
    .locals 1

    .line 3
    const-string v0, "orientationNameProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jr;->a:Lcom/yandex/mobile/ads/impl/of1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 3

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jr;->a:Lcom/yandex/mobile/ads/impl/of1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->o()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    if-eq p1, v2, :cond_0

    const-string p0, "undefined"

    goto :goto_0

    :cond_0
    const-string p0, "landscape"

    goto :goto_0

    :cond_1
    const-string p0, "portrait"

    :goto_0
    const-string p1, "orientation"

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
