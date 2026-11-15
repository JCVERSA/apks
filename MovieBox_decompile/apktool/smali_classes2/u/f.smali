.class public Lu/f;
.super Lkotlin/collections/AbstractMutableMap;
.source "source.java"

# interfaces
.implements Lt/g$a;


# instance fields
.field private a:Lu/d;

.field private b:Lw/e;

.field private c:Lu/t;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lu/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableMap;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu/f;->a:Lu/d;

    .line 5
    .line 6
    new-instance p1, Lw/e;

    .line 7
    .line 8
    invoke-direct {p1}, Lw/e;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lu/f;->b:Lw/e;

    .line 12
    .line 13
    iget-object p1, p0, Lu/f;->a:Lu/d;

    .line 14
    .line 15
    invoke-virtual {p1}, Lu/d;->u()Lu/t;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lu/f;->c:Lu/t;

    .line 20
    .line 21
    iget-object p1, p0, Lu/f;->a:Lu/d;

    .line 22
    .line 23
    invoke-virtual {p1}, Lkotlin/collections/AbstractMap;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lu/f;->f:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    .line 1
    new-instance v0, Lu/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lu/h;-><init>(Lu/f;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic build()Lt/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu/f;->h()Lu/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    .line 1
    new-instance v0, Lu/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lu/j;-><init>(Lu/f;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 1
    sget-object v0, Lu/t;->e:Lu/t$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu/t$a;->a()Lu/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lu/f;->c:Lu/t;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lu/f;->p(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lu/f;->c:Lu/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v1

    .line 12
    :goto_0
    invoke-virtual {v0, v2, p1, v1}, Lu/t;->k(ILjava/lang/Object;I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lu/f;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1

    .line 1
    new-instance v0, Lu/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lu/l;-><init>(Lu/f;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lu/f;->c:Lu/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v1

    .line 12
    :goto_0
    invoke-virtual {v0, v2, p1, v1}, Lu/t;->o(ILjava/lang/Object;I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public h()Lu/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lu/f;->c:Lu/t;

    .line 2
    .line 3
    iget-object v1, p0, Lu/f;->a:Lu/d;

    .line 4
    .line 5
    invoke-virtual {v1}, Lu/d;->u()Lu/t;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lu/f;->a:Lu/d;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lw/e;

    .line 15
    .line 16
    invoke-direct {v0}, Lw/e;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lu/f;->b:Lw/e;

    .line 20
    .line 21
    new-instance v0, Lu/d;

    .line 22
    .line 23
    iget-object v1, p0, Lu/f;->c:Lu/t;

    .line 24
    .line 25
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-direct {v0, v1, v2}, Lu/d;-><init>(Lu/t;I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iput-object v0, p0, Lu/f;->a:Lu/d;

    .line 33
    .line 34
    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lu/f;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final j()Lu/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->c:Lu/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Lw/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/f;->b:Lw/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/f;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method protected final o(Lw/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/f;->b:Lw/e;

    .line 2
    .line 3
    return-void
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/f;->f:I

    .line 2
    .line 3
    iget p1, p0, Lu/f;->e:I

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lu/f;->e:I

    .line 8
    .line 9
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lu/f;->d:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lu/f;->c:Lu/t;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    move v2, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :goto_1
    const/4 v5, 0x0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v6, p0

    .line 20
    invoke-virtual/range {v1 .. v6}, Lu/t;->D(ILjava/lang/Object;Ljava/lang/Object;ILu/f;)Lu/t;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lu/f;->c:Lu/t;

    .line 25
    .line 26
    iget-object p1, p0, Lu/f;->d:Ljava/lang/Object;

    .line 27
    .line 28
    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lu/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lu/d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    if-nez v0, :cond_3

    .line 12
    .line 13
    instance-of v0, p1, Lu/f;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    check-cast v0, Lu/f;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v0, v1

    .line 22
    :goto_1
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lu/f;->h()Lu/d;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-object v0, v1

    .line 30
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 31
    .line 32
    new-instance p1, Lw/b;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-direct {p1, v3, v2, v1}, Lw/b;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v2, p0, Lu/f;->c:Lu/t;

    .line 44
    .line 45
    invoke-virtual {v0}, Lu/d;->u()Lu/t;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>"

    .line 50
    .line 51
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4, v3, p1, p0}, Lu/t;->E(Lu/t;ILw/b;Lu/f;)Lu/t;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, p0, Lu/f;->c:Lu/t;

    .line 59
    .line 60
    invoke-virtual {v0}, Lkotlin/collections/AbstractMap;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    add-int/2addr v0, v1

    .line 65
    invoke-virtual {p1}, Lw/b;->a()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    sub-int/2addr v0, p1

    .line 70
    if-eq v1, v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lu/f;->p(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_3
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lu/f;->d:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lu/f;->c:Lu/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1, v1, p0}, Lu/t;->G(ILjava/lang/Object;ILu/f;)Lu/t;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lu/t;->e:Lu/t$a;

    invoke-virtual {p1}, Lu/t$a;->a()Lu/t;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lu/f;->c:Lu/t;

    .line 3
    iget-object p1, p0, Lu/f;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .line 4
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->size()I

    move-result v0

    .line 5
    iget-object v1, p0, Lu/f;->c:Lu/t;

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lu/t;->H(ILjava/lang/Object;Ljava/lang/Object;ILu/f;)Lu/t;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lu/t;->e:Lu/t$a;

    invoke-virtual {p1}, Lu/t$a;->a()Lu/t;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lu/f;->c:Lu/t;

    .line 6
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->size()I

    move-result p1

    if-eq v0, p1, :cond_2

    const/4 v7, 0x1

    :cond_2
    return v7
.end method
