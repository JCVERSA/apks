.class public final Lzb8;
.super Lcom/google/android/exoplayer2/a;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:I

.field public final i:[I

.field public final j:[I

.field public final k:[Lcom/google/android/exoplayer2/a0;

.field public final l:[Ljava/lang/Object;

.field public final m:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lmi9;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/a;-><init>(ZLmi9;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    new-array v1, p2, [I

    iput-object v1, p0, Lzb8;->i:[I

    new-array v1, p2, [I

    iput-object v1, p0, Lzb8;->j:[I

    new-array v1, p2, [Lcom/google/android/exoplayer2/a0;

    iput-object v1, p0, Lzb8;->k:[Lcom/google/android/exoplayer2/a0;

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lzb8;->l:[Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lzb8;->m:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v0

    move v1, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwl6;

    iget-object v3, p0, Lzb8;->k:[Lcom/google/android/exoplayer2/a0;

    invoke-interface {v2}, Lwl6;->getTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lzb8;->j:[I

    aput v0, v3, v1

    iget-object v3, p0, Lzb8;->i:[I

    aput p2, v3, v1

    iget-object v3, p0, Lzb8;->k:[Lcom/google/android/exoplayer2/a0;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lzb8;->k:[Lcom/google/android/exoplayer2/a0;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/a0;->m()I

    move-result v3

    add-int/2addr p2, v3

    iget-object v3, p0, Lzb8;->l:[Ljava/lang/Object;

    invoke-interface {v2}, Lwl6;->getUid()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v2, p0, Lzb8;->m:Ljava/util/HashMap;

    iget-object v3, p0, Lzb8;->l:[Ljava/lang/Object;

    aget-object v3, v3, v1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto :goto_0

    :cond_0
    iput v0, p0, Lzb8;->g:I

    iput p2, p0, Lzb8;->h:I

    return-void
.end method


# virtual methods
.method public A(I)I
    .locals 1

    iget-object p0, p0, Lzb8;->j:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lblb;->h([IIZZ)I

    move-result p0

    return p0
.end method

.method public D(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzb8;->l:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public F(I)I
    .locals 0

    iget-object p0, p0, Lzb8;->i:[I

    aget p0, p0, p1

    return p0
.end method

.method public G(I)I
    .locals 0

    iget-object p0, p0, Lzb8;->j:[I

    aget p0, p0, p1

    return p0
.end method

.method public J(I)Lcom/google/android/exoplayer2/a0;
    .locals 0

    iget-object p0, p0, Lzb8;->k:[Lcom/google/android/exoplayer2/a0;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public K()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lzb8;->k:[Lcom/google/android/exoplayer2/a0;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, Lzb8;->h:I

    return p0
.end method

.method public t()I
    .locals 0

    iget p0, p0, Lzb8;->g:I

    return p0
.end method

.method public y(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lzb8;->m:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public z(I)I
    .locals 1

    iget-object p0, p0, Lzb8;->i:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lblb;->h([IIZZ)I

    move-result p0

    return p0
.end method
