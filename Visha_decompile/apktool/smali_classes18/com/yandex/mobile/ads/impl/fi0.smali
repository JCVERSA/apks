.class public final Lcom/yandex/mobile/ads/impl/fi0;
.super Lcom/yandex/mobile/ads/impl/nk;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/nk;

.field private final b:Lcom/yandex/mobile/ads/impl/c92;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/nk;Lcom/yandex/mobile/ads/impl/c92;)V
    .locals 1

    const-string v0, "httpStackDelegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/nk;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fi0;->a:Lcom/yandex/mobile/ads/impl/nk;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fi0;->b:Lcom/yandex/mobile/ads/impl/c92;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/up1;Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/ci0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/up1<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/ci0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yandex/mobile/ads/impl/ai;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalHeaders"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object p2, Lcom/yandex/mobile/ads/impl/vh0;->U:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/vh0;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fi0;->b:Lcom/yandex/mobile/ads/impl/c92;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/c92;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fi0;->a:Lcom/yandex/mobile/ads/impl/nk;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/nk;->a(Lcom/yandex/mobile/ads/impl/up1;Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/ci0;

    move-result-object p0

    const-string p1, "executeRequest(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
