.class public final Lcom/yandex/mobile/ads/impl/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qm0;

.field private final b:Lcom/yandex/mobile/ads/impl/dj1;

.field private c:Lcom/yandex/mobile/ads/impl/z2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/qm0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/dj1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/dj1;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/a3;-><init>(Lcom/yandex/mobile/ads/impl/qm0;Lcom/yandex/mobile/ads/impl/dj1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qm0;Lcom/yandex/mobile/ads/impl/dj1;)V
    .locals 1

    .line 3
    const-string v0, "instreamAdPlaylistHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistAdBreaksProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a3;->a:Lcom/yandex/mobile/ads/impl/qm0;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/a3;->b:Lcom/yandex/mobile/ads/impl/dj1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/z2;
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a3;->c:Lcom/yandex/mobile/ads/impl/z2;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a3;->a:Lcom/yandex/mobile/ads/impl/qm0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qm0;->a()Lcom/yandex/mobile/ads/impl/om0;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/a3;->b:Lcom/yandex/mobile/ads/impl/dj1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "playlist"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx71;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/om0;->c()Lcom/yandex/mobile/ads/impl/gt;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/om0;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/ej1;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ej1;->a()Lcom/yandex/mobile/ads/impl/gt;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/om0;->b()Lcom/yandex/mobile/ads/impl/gt;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v1}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/z2;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/z2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/a3;->c:Lcom/yandex/mobile/ads/impl/z2;

    move-object v0, v1

    :cond_3
    return-object v0
.end method
