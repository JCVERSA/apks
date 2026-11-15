.class final Lcom/yandex/mobile/ads/impl/j70$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/n32;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/j70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final b:J

.field private final c:Lcom/yandex/mobile/ads/impl/kk0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "Lcom/yandex/mobile/ads/impl/hv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/yandex/mobile/ads/impl/kk0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "Lcom/yandex/mobile/ads/impl/hv;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/j70$b;->b:J

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/j70$b;->c:Lcom/yandex/mobile/ads/impl/kk0;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public final a(J)I
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/j70$b;->b:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final a(I)J
    .locals 0

    if-nez p1, :cond_0

    .line 2
    iget-wide p0, p0, Lcom/yandex/mobile/ads/impl/j70$b;->b:J

    return-wide p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final b(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/hv;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/j70$b;->b:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j70$b;->c:Lcom/yandex/mobile/ads/impl/kk0;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/kk0;->h()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object p0

    :goto_0
    return-object p0
.end method
