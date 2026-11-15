.class public Lu/g;
.super Lu/e;
.source "source.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# instance fields
.field private final d:Lu/f;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lu/f;[Lu/u;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lu/f;->j()Lu/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p2}, Lu/e;-><init>(Lu/t;[Lu/u;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lu/g;->d:Lu/f;

    .line 9
    .line 10
    invoke-virtual {p1}, Lu/f;->i()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lu/g;->g:I

    .line 15
    .line 16
    return-void
.end method

.method private final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/g;->d:Lu/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu/f;->i()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lu/g;->g:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method private final l()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/g;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method private final m(ILu/t;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    mul-int/lit8 v0, p4, 0x5

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-le v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lu/e;->f()[Lu/u;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    aget-object p1, p1, p4

    .line 12
    .line 13
    invoke-virtual {p2}, Lu/t;->p()[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lu/t;->p()[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    array-length p2, p2

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, p2, v1}, Lu/u;->n([Ljava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lu/e;->f()[Lu/u;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    aget-object p1, p1, p4

    .line 31
    .line 32
    invoke-virtual {p1}, Lu/u;->a()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Lu/e;->f()[Lu/u;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    aget-object p1, p1, p4

    .line 47
    .line 48
    invoke-virtual {p1}, Lu/u;->j()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p4}, Lu/e;->i(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    invoke-static {p1, v0}, Lu/x;->f(II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x1

    .line 61
    shl-int v0, v1, v0

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Lu/t;->q(I)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Lu/t;->n(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {p0}, Lu/e;->f()[Lu/u;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    aget-object p3, p3, p4

    .line 78
    .line 79
    invoke-virtual {p2}, Lu/t;->p()[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p2}, Lu/t;->m()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    mul-int/lit8 p2, p2, 0x2

    .line 88
    .line 89
    invoke-virtual {p3, v0, p2, p1}, Lu/u;->n([Ljava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p4}, Lu/e;->i(I)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    invoke-virtual {p2, v0}, Lu/t;->O(I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p2, v0}, Lu/t;->N(I)Lu/t;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {p0}, Lu/e;->f()[Lu/u;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    aget-object v3, v3, p4

    .line 109
    .line 110
    invoke-virtual {p2}, Lu/t;->p()[Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {p2}, Lu/t;->m()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    mul-int/lit8 p2, p2, 0x2

    .line 119
    .line 120
    invoke-virtual {v3, v4, p2, v0}, Lu/u;->n([Ljava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    add-int/2addr p4, v1

    .line 124
    invoke-direct {p0, p1, v2, p3, p4}, Lu/g;->m(ILu/t;Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/g;->d:Lu/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu/f;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lu/e;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lu/e;->c()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lu/g;->d:Lu/f;

    .line 21
    .line 22
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move p2, p1

    .line 34
    :goto_0
    iget-object v1, p0, Lu/g;->d:Lu/f;

    .line 35
    .line 36
    invoke-virtual {v1}, Lu/f;->j()Lu/t;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {p0, p2, v1, v0, p1}, Lu/g;->m(ILu/t;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-object v0, p0, Lu/g;->d:Lu/f;

    .line 45
    .line 46
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object p1, p0, Lu/g;->d:Lu/f;

    .line 50
    .line 51
    invoke-virtual {p1}, Lu/f;->i()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lu/g;->g:I

    .line 56
    .line 57
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lu/g;->j()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lu/e;->c()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lu/g;->e:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lu/g;->f:Z

    .line 12
    .line 13
    invoke-super {p0}, Lu/e;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public remove()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lu/g;->l()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lu/e;->hasNext()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lu/e;->c()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lu/g;->d:Lu/f;

    .line 16
    .line 17
    iget-object v3, p0, Lu/g;->e:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v1

    .line 34
    :goto_0
    iget-object v3, p0, Lu/g;->d:Lu/f;

    .line 35
    .line 36
    invoke-virtual {v3}, Lu/f;->j()Lu/t;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {p0, v2, v3, v0, v1}, Lu/g;->m(ILu/t;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v0, p0, Lu/g;->d:Lu/f;

    .line 45
    .line 46
    iget-object v2, p0, Lu/g;->e:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_1
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lu/g;->e:Ljava/lang/Object;

    .line 57
    .line 58
    iput-boolean v1, p0, Lu/g;->f:Z

    .line 59
    .line 60
    iget-object v0, p0, Lu/g;->d:Lu/f;

    .line 61
    .line 62
    invoke-virtual {v0}, Lu/f;->i()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lu/g;->g:I

    .line 67
    .line 68
    return-void
.end method
