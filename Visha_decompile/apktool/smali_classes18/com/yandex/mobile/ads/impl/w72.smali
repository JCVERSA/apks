.class final Lcom/yandex/mobile/ads/impl/w72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/n32;


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/s72;

.field private final c:[J

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/v72;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/t72;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/s72;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w72;->b:Lcom/yandex/mobile/ads/impl/s72;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/w72;->e:Ljava/util/Map;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/w72;->f:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/w72;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s72;->b()[J

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w72;->c:[J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w72;->c:[J

    array-length p0, p0

    return p0
.end method

.method public final a(J)I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w72;->c:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/f92;->a([JJZ)I

    move-result p1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w72;->c:[J

    array-length p0, p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final a(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w72;->c:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final b(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/hv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w72;->b:Lcom/yandex/mobile/ads/impl/s72;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/w72;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/w72;->e:Ljava/util/Map;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/w72;->f:Ljava/util/Map;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/s72;->a(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
