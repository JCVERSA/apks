.class public final Lcom/yandex/mobile/ads/impl/za1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/y30;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/ee2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/yandex/mobile/ads/impl/ne2;->c:I

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ne2;->b(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/y30;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/za1;->a:Lcom/yandex/mobile/ads/impl/y30;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/za1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/za1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/za1;->a:Lcom/yandex/mobile/ads/impl/y30;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/y30;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/za1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 15
    const-string v0, "requestId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/za1;->a:Lcom/yandex/mobile/ads/impl/y30;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/y30;->a(Ljava/lang/String;)V

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/za1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ee2;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCacheListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/za1;->a:Lcom/yandex/mobile/ads/impl/y30;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/a40$b;

    invoke-direct {v0, p1, p3}, Lcom/yandex/mobile/ads/impl/a40$b;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a40$b;->a()Lcom/yandex/mobile/ads/impl/a40;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/za1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/qj2;

    invoke-direct {v0, p3, p2}, Lcom/yandex/mobile/ads/impl/qj2;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ee2;)V

    .line 7
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/za1;->a:Lcom/yandex/mobile/ads/impl/y30;

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/y30;->a(Lcom/yandex/mobile/ads/impl/qj2;)V

    .line 8
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/za1;->a:Lcom/yandex/mobile/ads/impl/y30;

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/y30;->a(Lcom/yandex/mobile/ads/impl/a40;)V

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/za1;->a:Lcom/yandex/mobile/ads/impl/y30;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/y30;->a()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/ee2;->b()V

    .line 11
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/za1;->a()V

    :goto_0
    return-void
.end method
