.class public final Lcom/yandex/mobile/ads/impl/ad1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/zc1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sj;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/sj;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/sj;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ad1;-><init>(Lcom/yandex/mobile/ads/impl/sj;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sj;)V
    .locals 1

    .line 3
    const-string v0, "base64Decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ad1;->a:Lcom/yandex/mobile/ads/impl/sj;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/wq1;)Ljava/lang/String;
    .locals 3

    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wq1;->a()Lcom/yandex/mobile/ads/impl/ar1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ar1;->a()[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wq1;->b()Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/yandex/mobile/ads/impl/vh0;->e0:Lcom/yandex/mobile/ads/impl/vh0;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ad1;->a:Lcom/yandex/mobile/ads/impl/sj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sj;->a([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    sget-object p1, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
