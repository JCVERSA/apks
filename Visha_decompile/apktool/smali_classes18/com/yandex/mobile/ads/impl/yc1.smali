.class public final Lcom/yandex/mobile/ads/impl/yc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vn1;

.field private final b:Lcom/yandex/mobile/ads/impl/wn1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/vn1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/vn1;-><init>()V

    .line 2
    sget-object v1, Lcom/yandex/mobile/ads/impl/wn1;->b:Lcom/yandex/mobile/ads/impl/wn1$a;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/wn1$a;->a()Lcom/yandex/mobile/ads/impl/wn1;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/yc1;-><init>(Lcom/yandex/mobile/ads/impl/vn1;Lcom/yandex/mobile/ads/impl/wn1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vn1;Lcom/yandex/mobile/ads/impl/wn1;)V
    .locals 1

    .line 4
    const-string v0, "readyResponseDecoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readyResponseStorage"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yc1;->a:Lcom/yandex/mobile/ads/impl/vn1;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yc1;->b:Lcom/yandex/mobile/ads/impl/wn1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/up1;)Lcom/yandex/mobile/ads/impl/xc1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/up1<",
            "*>;)",
            "Lcom/yandex/mobile/ads/impl/xc1;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yc1;->b:Lcom/yandex/mobile/ads/impl/wn1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/wn1;->a(Lcom/yandex/mobile/ads/impl/up1;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yc1;->a:Lcom/yandex/mobile/ads/impl/vn1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/vn1;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/un1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/un1;->a()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/un1;->b()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/xc1;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/yandex/mobile/ads/impl/xc1;-><init>(I[BLjava/util/Map;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
