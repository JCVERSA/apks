.class public final Lcom/yandex/mobile/ads/impl/fo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ia2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ha2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ha2;)V
    .locals 1

    const-string v0, "requestConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fo0;->a:Lcom/yandex/mobile/ads/impl/ha2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fo0;->a:Lcom/yandex/mobile/ads/impl/ha2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ha2;->a()Lcom/yandex/mobile/ads/impl/p2;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/a8;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/a8;-><init>(Lcom/yandex/mobile/ads/impl/p2;)V

    invoke-static {}, Lky5;->e()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fo0;->a:Lcom/yandex/mobile/ads/impl/ha2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ha2;->b()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/a8;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "video-session-id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v0}, Lky5;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
