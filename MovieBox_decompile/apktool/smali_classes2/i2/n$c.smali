.class final Li2/n$c;
.super Li2/n$i;
.source "source.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/f0;ILi2/n$e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Li2/n$i;-><init>(ILandroidx/media3/common/f0;I)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p4, Li2/n$e;->A0:Z

    .line 5
    .line 6
    invoke-static {p5, p1}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Li2/n$c;->e:I

    .line 11
    .line 12
    iget-object p1, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/media3/common/r;->e()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Li2/n$c;->f:I

    .line 19
    .line 20
    return-void
.end method

.method public static d(Ljava/util/List;Ljava/util/List;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Li2/n$c;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Li2/n$c;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Li2/n$c;->e(Li2/n$c;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static f(ILandroidx/media3/common/f0;Li2/n$e;[I)Lcom/google/common/collect/ImmutableList;
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget v2, p1, Landroidx/media3/common/f0;->a:I

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    new-instance v8, Li2/n$c;

    .line 11
    .line 12
    aget v7, p3, v1

    .line 13
    .line 14
    move-object v2, v8

    .line 15
    move v3, p0

    .line 16
    move-object v4, p1

    .line 17
    move v5, v1

    .line 18
    move-object v6, p2

    .line 19
    invoke-direct/range {v2 .. v7}, Li2/n$c;-><init>(ILandroidx/media3/common/f0;ILi2/n$e;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v8}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Li2/n$c;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic b(Li2/n$i;)Z
    .locals 0

    .line 1
    check-cast p1, Li2/n$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Li2/n$c;->g(Li2/n$c;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Li2/n$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Li2/n$c;->e(Li2/n$c;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public e(Li2/n$c;)I
    .locals 1

    .line 1
    iget v0, p0, Li2/n$c;->f:I

    .line 2
    .line 3
    iget p1, p1, Li2/n$c;->f:I

    .line 4
    .line 5
    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public g(Li2/n$c;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
