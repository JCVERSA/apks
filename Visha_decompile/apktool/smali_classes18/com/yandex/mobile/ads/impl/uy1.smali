.class public abstract Lcom/yandex/mobile/ads/impl/uy1;
.super Lcom/yandex/mobile/ads/impl/py1;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/o32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/py1<",
        "Lcom/yandex/mobile/ads/impl/r32;",
        "Lcom/yandex/mobile/ads/impl/s32;",
        "Lcom/yandex/mobile/ads/impl/p32;",
        ">;",
        "Lcom/yandex/mobile/ads/impl/o32;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/yandex/mobile/ads/impl/r32;

    new-array v0, v0, [Lcom/yandex/mobile/ads/impl/s32;

    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/py1;-><init>([Lcom/yandex/mobile/ads/impl/ry;[Lcom/yandex/mobile/ads/impl/sy;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/py1;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/mobile/ads/impl/uy1;Lcom/yandex/mobile/ads/impl/sy;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/py1;->a(Lcom/yandex/mobile/ads/impl/sy;)V

    return-void
.end method


# virtual methods
.method public abstract a([BIZ)Lcom/yandex/mobile/ads/impl/n32;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/p32;
        }
    .end annotation
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ry;Lcom/yandex/mobile/ads/impl/sy;Z)Lcom/yandex/mobile/ads/impl/p32;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    check-cast p1, Lcom/yandex/mobile/ads/impl/r32;

    check-cast p2, Lcom/yandex/mobile/ads/impl/s32;

    .line 4
    :try_start_0
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/ry;->d:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/yandex/mobile/ads/impl/uy1;->a([BIZ)Lcom/yandex/mobile/ads/impl/n32;

    move-result-object v3

    .line 7
    iget-wide v1, p1, Lcom/yandex/mobile/ads/impl/ry;->f:J

    iget-wide v4, p1, Lcom/yandex/mobile/ads/impl/r32;->j:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/s32;->a(JLcom/yandex/mobile/ads/impl/n32;J)V

    .line 8
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/gm;->c()V
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/p32; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-object p0
.end method

.method public final a(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/r32;
    .locals 0

    new-instance p0, Lcom/yandex/mobile/ads/impl/r32;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/r32;-><init>()V

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/sy;
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/ty1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ty1;-><init>(Lcom/yandex/mobile/ads/impl/uy1;)V

    return-object v0
.end method
