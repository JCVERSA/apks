.class final Li2/n$h;
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
    name = "h"
.end annotation


# instance fields
.field private final e:I

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Z


# direct methods
.method public constructor <init>(ILandroidx/media3/common/f0;ILi2/n$e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Li2/n$i;-><init>(ILandroidx/media3/common/f0;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p5, p1}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iput-boolean p2, p0, Li2/n$h;->f:Z

    .line 10
    .line 11
    iget-object p2, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 12
    .line 13
    iget p2, p2, Landroidx/media3/common/r;->e:I

    .line 14
    .line 15
    iget p3, p4, Landroidx/media3/common/h0;->y:I

    .line 16
    .line 17
    not-int p3, p3

    .line 18
    and-int/2addr p2, p3

    .line 19
    and-int/lit8 p3, p2, 0x1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    move p3, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p3, p1

    .line 27
    :goto_0
    iput-boolean p3, p0, Li2/n$h;->g:Z

    .line 28
    .line 29
    and-int/lit8 p2, p2, 0x2

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    move p2, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move p2, p1

    .line 36
    :goto_1
    iput-boolean p2, p0, Li2/n$h;->h:Z

    .line 37
    .line 38
    if-eqz p7, :cond_2

    .line 39
    .line 40
    invoke-static {p7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object p2, p4, Landroidx/media3/common/h0;->v:Lcom/google/common/collect/ImmutableList;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    const-string p2, ""

    .line 54
    .line 55
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    iget-object p2, p4, Landroidx/media3/common/h0;->v:Lcom/google/common/collect/ImmutableList;

    .line 61
    .line 62
    :goto_2
    move p3, p1

    .line 63
    :goto_3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ge p3, v1, :cond_5

    .line 68
    .line 69
    iget-object v1, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 70
    .line 71
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/String;

    .line 76
    .line 77
    iget-boolean v3, p4, Landroidx/media3/common/h0;->z:Z

    .line 78
    .line 79
    invoke-static {v1, v2, v3}, Li2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-lez v1, :cond_4

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_4
    add-int/lit8 p3, p3, 0x1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    const p3, 0x7fffffff

    .line 90
    .line 91
    .line 92
    move v1, p1

    .line 93
    :goto_4
    iput p3, p0, Li2/n$h;->i:I

    .line 94
    .line 95
    iput v1, p0, Li2/n$h;->j:I

    .line 96
    .line 97
    const/16 p2, 0x440

    .line 98
    .line 99
    if-eqz p7, :cond_6

    .line 100
    .line 101
    move p3, p2

    .line 102
    goto :goto_5

    .line 103
    :cond_6
    iget p3, p4, Landroidx/media3/common/h0;->w:I

    .line 104
    .line 105
    :goto_5
    iget-object p7, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 106
    .line 107
    iget p7, p7, Landroidx/media3/common/r;->f:I

    .line 108
    .line 109
    invoke-static {p7, p3}, Li2/n;->y(II)I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    iput p3, p0, Li2/n$h;->k:I

    .line 114
    .line 115
    iget-object p7, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 116
    .line 117
    iget p7, p7, Landroidx/media3/common/r;->f:I

    .line 118
    .line 119
    and-int/2addr p2, p7

    .line 120
    if-eqz p2, :cond_7

    .line 121
    .line 122
    move p2, v0

    .line 123
    goto :goto_6

    .line 124
    :cond_7
    move p2, p1

    .line 125
    :goto_6
    iput-boolean p2, p0, Li2/n$h;->m:Z

    .line 126
    .line 127
    invoke-static {p6}, Li2/n;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    if-nez p2, :cond_8

    .line 132
    .line 133
    move p2, v0

    .line 134
    goto :goto_7

    .line 135
    :cond_8
    move p2, p1

    .line 136
    :goto_7
    iget-object p7, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 137
    .line 138
    invoke-static {p7, p6, p2}, Li2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    iput p2, p0, Li2/n$h;->l:I

    .line 143
    .line 144
    if-gtz v1, :cond_b

    .line 145
    .line 146
    iget-object p6, p4, Landroidx/media3/common/h0;->v:Lcom/google/common/collect/ImmutableList;

    .line 147
    .line 148
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result p6

    .line 152
    if-eqz p6, :cond_9

    .line 153
    .line 154
    if-gtz p3, :cond_b

    .line 155
    .line 156
    :cond_9
    iget-boolean p3, p0, Li2/n$h;->g:Z

    .line 157
    .line 158
    if-nez p3, :cond_b

    .line 159
    .line 160
    iget-boolean p3, p0, Li2/n$h;->h:Z

    .line 161
    .line 162
    if-eqz p3, :cond_a

    .line 163
    .line 164
    if-lez p2, :cond_a

    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_a
    move p2, p1

    .line 168
    goto :goto_9

    .line 169
    :cond_b
    :goto_8
    move p2, v0

    .line 170
    :goto_9
    iget-boolean p3, p4, Li2/n$e;->A0:Z

    .line 171
    .line 172
    invoke-static {p5, p3}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    if-eqz p3, :cond_c

    .line 177
    .line 178
    if-eqz p2, :cond_c

    .line 179
    .line 180
    move p1, v0

    .line 181
    :cond_c
    iput p1, p0, Li2/n$h;->e:I

    .line 182
    .line 183
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
    check-cast p0, Li2/n$h;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Li2/n$h;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Li2/n$h;->e(Li2/n$h;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static f(ILandroidx/media3/common/f0;Li2/n$e;[ILjava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 12

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v10, p1

    .line 7
    :goto_0
    iget v2, v10, Landroidx/media3/common/f0;->a:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    new-instance v11, Li2/n$h;

    .line 12
    .line 13
    aget v7, p3, v1

    .line 14
    .line 15
    move-object v2, v11

    .line 16
    move v3, p0

    .line 17
    move-object v4, p1

    .line 18
    move v5, v1

    .line 19
    move-object v6, p2

    .line 20
    move-object/from16 v8, p4

    .line 21
    .line 22
    move-object/from16 v9, p5

    .line 23
    .line 24
    invoke-direct/range {v2 .. v9}, Li2/n$h;-><init>(ILandroidx/media3/common/f0;ILi2/n$e;ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v11}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Li2/n$h;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic b(Li2/n$i;)Z
    .locals 0

    .line 1
    check-cast p1, Li2/n$h;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Li2/n$h;->g(Li2/n$h;)Z

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
    check-cast p1, Li2/n$h;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Li2/n$h;->e(Li2/n$h;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public e(Li2/n$h;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/h2;->k()Lcom/google/common/collect/h2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Li2/n$h;->f:Z

    .line 6
    .line 7
    iget-boolean v2, p1, Li2/n$h;->f:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Li2/n$h;->i:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v2, p1, Li2/n$h;->i:I

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v1, p0, Li2/n$h;->j:I

    .line 38
    .line 39
    iget v2, p1, Li2/n$h;->j:I

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v1, p0, Li2/n$h;->k:I

    .line 46
    .line 47
    iget v2, p1, Li2/n$h;->k:I

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-boolean v1, p0, Li2/n$h;->g:Z

    .line 54
    .line 55
    iget-boolean v2, p1, Li2/n$h;->g:Z

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-boolean v1, p0, Li2/n$h;->h:Z

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-boolean v2, p1, Li2/n$h;->h:Z

    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget v3, p0, Li2/n$h;->j:I

    .line 74
    .line 75
    if-nez v3, :cond_0

    .line 76
    .line 77
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget v1, p0, Li2/n$h;->l:I

    .line 95
    .line 96
    iget v2, p1, Li2/n$h;->l:I

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget v1, p0, Li2/n$h;->k:I

    .line 103
    .line 104
    if-nez v1, :cond_1

    .line 105
    .line 106
    iget-boolean v1, p0, Li2/n$h;->m:Z

    .line 107
    .line 108
    iget-boolean p1, p1, Li2/n$h;->m:Z

    .line 109
    .line 110
    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/h2;->i(ZZ)Lcom/google/common/collect/h2;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/h2;->j()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    return p1
.end method

.method public g(Li2/n$h;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
