.class public final Lcom/yandex/mobile/ads/impl/lh0;
.super Lcom/yandex/mobile/ads/impl/h42;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/yandex/mobile/ads/impl/hh0;

.field final synthetic f:I

.field final synthetic g:Lokio/Buffer;

.field final synthetic h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;ILokio/Buffer;IZ)V
    .locals 0

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lh0;->e:Lcom/yandex/mobile/ads/impl/hh0;

    iput p3, p0, Lcom/yandex/mobile/ads/impl/lh0;->f:I

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/lh0;->g:Lokio/Buffer;

    iput p5, p0, Lcom/yandex/mobile/ads/impl/lh0;->h:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/h42;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final e()J
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lh0;->e:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hh0;->f(Lcom/yandex/mobile/ads/impl/hh0;)Lcom/yandex/mobile/ads/impl/cn1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lh0;->g:Lokio/Buffer;

    iget v2, p0, Lcom/yandex/mobile/ads/impl/lh0;->h:I

    check-cast v0, Lcom/yandex/mobile/ads/impl/bn1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "source"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lh0;->e:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hh0;->k()Lcom/yandex/mobile/ads/impl/ph0;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/lh0;->f:I

    sget-object v2, Lcom/yandex/mobile/ads/impl/t50;->i:Lcom/yandex/mobile/ads/impl/t50;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/ph0;->a(ILcom/yandex/mobile/ads/impl/t50;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lh0;->e:Lcom/yandex/mobile/ads/impl/hh0;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lh0;->e:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/hh0;->b(Lcom/yandex/mobile/ads/impl/hh0;)Ljava/util/LinkedHashSet;

    move-result-object v1

    iget p0, p0, Lcom/yandex/mobile/ads/impl/lh0;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
