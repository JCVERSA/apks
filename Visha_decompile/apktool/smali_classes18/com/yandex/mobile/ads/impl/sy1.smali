.class public abstract Lcom/yandex/mobile/ads/impl/sy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/l01;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/n01;)Lcom/yandex/mobile/ads/impl/k01;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/ry;->d:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gm;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/sy1;->a(Lcom/yandex/mobile/ads/impl/n01;Ljava/nio/ByteBuffer;)Lcom/yandex/mobile/ads/impl/k01;

    move-result-object p0

    :goto_0
    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public abstract a(Lcom/yandex/mobile/ads/impl/n01;Ljava/nio/ByteBuffer;)Lcom/yandex/mobile/ads/impl/k01;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
