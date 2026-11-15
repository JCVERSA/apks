.class final Lcom/yandex/mobile/ads/impl/fk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/n32;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/bk2;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[J

.field private final d:[J


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fk2;->b:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fk2;->c:[J

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/bk2;

    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/fk2;->c:[J

    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/bk2;->b:J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/bk2;->c:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fk2;->c:[J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fk2;->d:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method

.method private static synthetic a(Lcom/yandex/mobile/ads/impl/bk2;Lcom/yandex/mobile/ads/impl/bk2;)I
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/bk2;->b:J

    iget-wide p0, p1, Lcom/yandex/mobile/ads/impl/bk2;->b:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/bk2;Lcom/yandex/mobile/ads/impl/bk2;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/fk2;->a(Lcom/yandex/mobile/ads/impl/bk2;Lcom/yandex/mobile/ads/impl/bk2;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fk2;->d:[J

    array-length p0, p0

    return p0
.end method

.method public final a(J)I
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fk2;->d:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/f92;->a([JJZ)I

    move-result p1

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fk2;->d:[J

    array-length p0, p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final a(I)J
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fk2;->d:[J

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 2
    aget-wide p0, p0, p1

    return-wide p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final b(J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/hv;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/fk2;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 5
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/fk2;->c:[J

    mul-int/lit8 v5, v3, 0x2

    aget-wide v6, v4, v5

    cmp-long v6, v6, p1

    if-gtz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 6
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/fk2;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/bk2;

    .line 7
    iget-object v5, v4, Lcom/yandex/mobile/ads/impl/bk2;->a:Lcom/yandex/mobile/ads/impl/hv;

    iget v6, v5, Lcom/yandex/mobile/ads/impl/hv;->f:F

    const v7, -0x800001

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/np2;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/np2;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_3

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/bk2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bk2;->a:Lcom/yandex/mobile/ads/impl/hv;

    .line 13
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hv;->a()Lcom/yandex/mobile/ads/impl/hv$a;

    move-result-object p0

    rsub-int/lit8 p1, v2, -0x1

    int-to-float p1, p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/hv$a;->a(IF)Lcom/yandex/mobile/ads/impl/hv$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hv$a;->a()Lcom/yandex/mobile/ads/impl/hv;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method
