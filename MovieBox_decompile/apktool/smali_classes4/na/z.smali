.class public Lna/z;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lna/z$a;
    }
.end annotation


# static fields
.field public static final A:Lna/z;

.field public static final B:Lna/z;

.field public static final C:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Lcom/google/common/collect/ImmutableList;

.field public final m:I

.field public final n:Lcom/google/common/collect/ImmutableList;

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Lcom/google/common/collect/ImmutableList;

.field public final s:Lcom/google/common/collect/ImmutableList;

.field public final t:I

.field public final u:I

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:Lcom/google/common/collect/ImmutableMap;

.field public final z:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lna/z$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lna/z$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lna/z$a;->A()Lna/z;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lna/z;->A:Lna/z;

    .line 11
    .line 12
    sput-object v0, Lna/z;->B:Lna/z;

    .line 13
    .line 14
    new-instance v0, Lna/y;

    .line 15
    .line 16
    invoke-direct {v0}, Lna/y;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lna/z;->C:Lcom/google/android/exoplayer2/k$a;

    .line 20
    .line 21
    return-void
.end method

.method protected constructor <init>(Lna/z$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lna/z$a;->a(Lna/z$a;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lna/z;->a:I

    .line 9
    .line 10
    invoke-static {p1}, Lna/z$a;->b(Lna/z$a;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lna/z;->b:I

    .line 15
    .line 16
    invoke-static {p1}, Lna/z$a;->m(Lna/z$a;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lna/z;->c:I

    .line 21
    .line 22
    invoke-static {p1}, Lna/z$a;->t(Lna/z$a;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lna/z;->d:I

    .line 27
    .line 28
    invoke-static {p1}, Lna/z$a;->u(Lna/z$a;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lna/z;->e:I

    .line 33
    .line 34
    invoke-static {p1}, Lna/z$a;->v(Lna/z$a;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lna/z;->f:I

    .line 39
    .line 40
    invoke-static {p1}, Lna/z$a;->w(Lna/z$a;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lna/z;->g:I

    .line 45
    .line 46
    invoke-static {p1}, Lna/z$a;->x(Lna/z$a;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lna/z;->h:I

    .line 51
    .line 52
    invoke-static {p1}, Lna/z$a;->y(Lna/z$a;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lna/z;->i:I

    .line 57
    .line 58
    invoke-static {p1}, Lna/z$a;->z(Lna/z$a;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lna/z;->j:I

    .line 63
    .line 64
    invoke-static {p1}, Lna/z$a;->c(Lna/z$a;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput-boolean v0, p0, Lna/z;->k:Z

    .line 69
    .line 70
    invoke-static {p1}, Lna/z$a;->d(Lna/z$a;)Lcom/google/common/collect/ImmutableList;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lna/z;->l:Lcom/google/common/collect/ImmutableList;

    .line 75
    .line 76
    invoke-static {p1}, Lna/z$a;->e(Lna/z$a;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lna/z;->m:I

    .line 81
    .line 82
    invoke-static {p1}, Lna/z$a;->f(Lna/z$a;)Lcom/google/common/collect/ImmutableList;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lna/z;->n:Lcom/google/common/collect/ImmutableList;

    .line 87
    .line 88
    invoke-static {p1}, Lna/z$a;->g(Lna/z$a;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput v0, p0, Lna/z;->o:I

    .line 93
    .line 94
    invoke-static {p1}, Lna/z$a;->h(Lna/z$a;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, p0, Lna/z;->p:I

    .line 99
    .line 100
    invoke-static {p1}, Lna/z$a;->i(Lna/z$a;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput v0, p0, Lna/z;->q:I

    .line 105
    .line 106
    invoke-static {p1}, Lna/z$a;->j(Lna/z$a;)Lcom/google/common/collect/ImmutableList;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lna/z;->r:Lcom/google/common/collect/ImmutableList;

    .line 111
    .line 112
    invoke-static {p1}, Lna/z$a;->k(Lna/z$a;)Lcom/google/common/collect/ImmutableList;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lna/z;->s:Lcom/google/common/collect/ImmutableList;

    .line 117
    .line 118
    invoke-static {p1}, Lna/z$a;->l(Lna/z$a;)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, p0, Lna/z;->t:I

    .line 123
    .line 124
    invoke-static {p1}, Lna/z$a;->n(Lna/z$a;)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iput v0, p0, Lna/z;->u:I

    .line 129
    .line 130
    invoke-static {p1}, Lna/z$a;->o(Lna/z$a;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iput-boolean v0, p0, Lna/z;->v:Z

    .line 135
    .line 136
    invoke-static {p1}, Lna/z$a;->p(Lna/z$a;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iput-boolean v0, p0, Lna/z;->w:Z

    .line 141
    .line 142
    invoke-static {p1}, Lna/z$a;->q(Lna/z$a;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iput-boolean v0, p0, Lna/z;->x:Z

    .line 147
    .line 148
    invoke-static {p1}, Lna/z$a;->r(Lna/z$a;)Ljava/util/HashMap;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p0, Lna/z;->y:Lcom/google/common/collect/ImmutableMap;

    .line 157
    .line 158
    invoke-static {p1}, Lna/z$a;->s(Lna/z$a;)Ljava/util/HashSet;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p0, Lna/z;->z:Lcom/google/common/collect/ImmutableSet;

    .line 167
    .line 168
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lna/z;
    .locals 1

    .line 1
    new-instance v0, Lna/z$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lna/z$a;-><init>(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lna/z$a;->A()Lna/z;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method protected static c(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public a()Lna/z$a;
    .locals 1

    .line 1
    new-instance v0, Lna/z$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lna/z$a;-><init>(Lna/z;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_1
    check-cast p1, Lna/z;

    .line 21
    .line 22
    iget v2, p0, Lna/z;->a:I

    .line 23
    .line 24
    iget v3, p1, Lna/z;->a:I

    .line 25
    .line 26
    if-ne v2, v3, :cond_2

    .line 27
    .line 28
    iget v2, p0, Lna/z;->b:I

    .line 29
    .line 30
    iget v3, p1, Lna/z;->b:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    iget v2, p0, Lna/z;->c:I

    .line 35
    .line 36
    iget v3, p1, Lna/z;->c:I

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    iget v2, p0, Lna/z;->d:I

    .line 41
    .line 42
    iget v3, p1, Lna/z;->d:I

    .line 43
    .line 44
    if-ne v2, v3, :cond_2

    .line 45
    .line 46
    iget v2, p0, Lna/z;->e:I

    .line 47
    .line 48
    iget v3, p1, Lna/z;->e:I

    .line 49
    .line 50
    if-ne v2, v3, :cond_2

    .line 51
    .line 52
    iget v2, p0, Lna/z;->f:I

    .line 53
    .line 54
    iget v3, p1, Lna/z;->f:I

    .line 55
    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    iget v2, p0, Lna/z;->g:I

    .line 59
    .line 60
    iget v3, p1, Lna/z;->g:I

    .line 61
    .line 62
    if-ne v2, v3, :cond_2

    .line 63
    .line 64
    iget v2, p0, Lna/z;->h:I

    .line 65
    .line 66
    iget v3, p1, Lna/z;->h:I

    .line 67
    .line 68
    if-ne v2, v3, :cond_2

    .line 69
    .line 70
    iget-boolean v2, p0, Lna/z;->k:Z

    .line 71
    .line 72
    iget-boolean v3, p1, Lna/z;->k:Z

    .line 73
    .line 74
    if-ne v2, v3, :cond_2

    .line 75
    .line 76
    iget v2, p0, Lna/z;->i:I

    .line 77
    .line 78
    iget v3, p1, Lna/z;->i:I

    .line 79
    .line 80
    if-ne v2, v3, :cond_2

    .line 81
    .line 82
    iget v2, p0, Lna/z;->j:I

    .line 83
    .line 84
    iget v3, p1, Lna/z;->j:I

    .line 85
    .line 86
    if-ne v2, v3, :cond_2

    .line 87
    .line 88
    iget-object v2, p0, Lna/z;->l:Lcom/google/common/collect/ImmutableList;

    .line 89
    .line 90
    iget-object v3, p1, Lna/z;->l:Lcom/google/common/collect/ImmutableList;

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_2

    .line 97
    .line 98
    iget v2, p0, Lna/z;->m:I

    .line 99
    .line 100
    iget v3, p1, Lna/z;->m:I

    .line 101
    .line 102
    if-ne v2, v3, :cond_2

    .line 103
    .line 104
    iget-object v2, p0, Lna/z;->n:Lcom/google/common/collect/ImmutableList;

    .line 105
    .line 106
    iget-object v3, p1, Lna/z;->n:Lcom/google/common/collect/ImmutableList;

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    iget v2, p0, Lna/z;->o:I

    .line 115
    .line 116
    iget v3, p1, Lna/z;->o:I

    .line 117
    .line 118
    if-ne v2, v3, :cond_2

    .line 119
    .line 120
    iget v2, p0, Lna/z;->p:I

    .line 121
    .line 122
    iget v3, p1, Lna/z;->p:I

    .line 123
    .line 124
    if-ne v2, v3, :cond_2

    .line 125
    .line 126
    iget v2, p0, Lna/z;->q:I

    .line 127
    .line 128
    iget v3, p1, Lna/z;->q:I

    .line 129
    .line 130
    if-ne v2, v3, :cond_2

    .line 131
    .line 132
    iget-object v2, p0, Lna/z;->r:Lcom/google/common/collect/ImmutableList;

    .line 133
    .line 134
    iget-object v3, p1, Lna/z;->r:Lcom/google/common/collect/ImmutableList;

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_2

    .line 141
    .line 142
    iget-object v2, p0, Lna/z;->s:Lcom/google/common/collect/ImmutableList;

    .line 143
    .line 144
    iget-object v3, p1, Lna/z;->s:Lcom/google/common/collect/ImmutableList;

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_2

    .line 151
    .line 152
    iget v2, p0, Lna/z;->t:I

    .line 153
    .line 154
    iget v3, p1, Lna/z;->t:I

    .line 155
    .line 156
    if-ne v2, v3, :cond_2

    .line 157
    .line 158
    iget v2, p0, Lna/z;->u:I

    .line 159
    .line 160
    iget v3, p1, Lna/z;->u:I

    .line 161
    .line 162
    if-ne v2, v3, :cond_2

    .line 163
    .line 164
    iget-boolean v2, p0, Lna/z;->v:Z

    .line 165
    .line 166
    iget-boolean v3, p1, Lna/z;->v:Z

    .line 167
    .line 168
    if-ne v2, v3, :cond_2

    .line 169
    .line 170
    iget-boolean v2, p0, Lna/z;->w:Z

    .line 171
    .line 172
    iget-boolean v3, p1, Lna/z;->w:Z

    .line 173
    .line 174
    if-ne v2, v3, :cond_2

    .line 175
    .line 176
    iget-boolean v2, p0, Lna/z;->x:Z

    .line 177
    .line 178
    iget-boolean v3, p1, Lna/z;->x:Z

    .line 179
    .line 180
    if-ne v2, v3, :cond_2

    .line 181
    .line 182
    iget-object v2, p0, Lna/z;->y:Lcom/google/common/collect/ImmutableMap;

    .line 183
    .line 184
    iget-object v3, p1, Lna/z;->y:Lcom/google/common/collect/ImmutableMap;

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_2

    .line 191
    .line 192
    iget-object v2, p0, Lna/z;->z:Lcom/google/common/collect/ImmutableSet;

    .line 193
    .line 194
    iget-object p1, p1, Lna/z;->z:Lcom/google/common/collect/ImmutableSet;

    .line 195
    .line 196
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_2

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_2
    move v0, v1

    .line 204
    :goto_0
    return v0

    .line 205
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lna/z;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr v0, v1

    .line 7
    iget v2, p0, Lna/z;->b:I

    .line 8
    .line 9
    add-int/2addr v0, v2

    .line 10
    mul-int/2addr v0, v1

    .line 11
    iget v2, p0, Lna/z;->c:I

    .line 12
    .line 13
    add-int/2addr v0, v2

    .line 14
    mul-int/2addr v0, v1

    .line 15
    iget v2, p0, Lna/z;->d:I

    .line 16
    .line 17
    add-int/2addr v0, v2

    .line 18
    mul-int/2addr v0, v1

    .line 19
    iget v2, p0, Lna/z;->e:I

    .line 20
    .line 21
    add-int/2addr v0, v2

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget v2, p0, Lna/z;->f:I

    .line 24
    .line 25
    add-int/2addr v0, v2

    .line 26
    mul-int/2addr v0, v1

    .line 27
    iget v2, p0, Lna/z;->g:I

    .line 28
    .line 29
    add-int/2addr v0, v2

    .line 30
    mul-int/2addr v0, v1

    .line 31
    iget v2, p0, Lna/z;->h:I

    .line 32
    .line 33
    add-int/2addr v0, v2

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-boolean v2, p0, Lna/z;->k:Z

    .line 36
    .line 37
    add-int/2addr v0, v2

    .line 38
    mul-int/2addr v0, v1

    .line 39
    iget v2, p0, Lna/z;->i:I

    .line 40
    .line 41
    add-int/2addr v0, v2

    .line 42
    mul-int/2addr v0, v1

    .line 43
    iget v2, p0, Lna/z;->j:I

    .line 44
    .line 45
    add-int/2addr v0, v2

    .line 46
    mul-int/2addr v0, v1

    .line 47
    iget-object v2, p0, Lna/z;->l:Lcom/google/common/collect/ImmutableList;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/2addr v0, v2

    .line 54
    mul-int/2addr v0, v1

    .line 55
    iget v2, p0, Lna/z;->m:I

    .line 56
    .line 57
    add-int/2addr v0, v2

    .line 58
    mul-int/2addr v0, v1

    .line 59
    iget-object v2, p0, Lna/z;->n:Lcom/google/common/collect/ImmutableList;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    add-int/2addr v0, v2

    .line 66
    mul-int/2addr v0, v1

    .line 67
    iget v2, p0, Lna/z;->o:I

    .line 68
    .line 69
    add-int/2addr v0, v2

    .line 70
    mul-int/2addr v0, v1

    .line 71
    iget v2, p0, Lna/z;->p:I

    .line 72
    .line 73
    add-int/2addr v0, v2

    .line 74
    mul-int/2addr v0, v1

    .line 75
    iget v2, p0, Lna/z;->q:I

    .line 76
    .line 77
    add-int/2addr v0, v2

    .line 78
    mul-int/2addr v0, v1

    .line 79
    iget-object v2, p0, Lna/z;->r:Lcom/google/common/collect/ImmutableList;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    add-int/2addr v0, v2

    .line 86
    mul-int/2addr v0, v1

    .line 87
    iget-object v2, p0, Lna/z;->s:Lcom/google/common/collect/ImmutableList;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    add-int/2addr v0, v2

    .line 94
    mul-int/2addr v0, v1

    .line 95
    iget v2, p0, Lna/z;->t:I

    .line 96
    .line 97
    add-int/2addr v0, v2

    .line 98
    mul-int/2addr v0, v1

    .line 99
    iget v2, p0, Lna/z;->u:I

    .line 100
    .line 101
    add-int/2addr v0, v2

    .line 102
    mul-int/2addr v0, v1

    .line 103
    iget-boolean v2, p0, Lna/z;->v:Z

    .line 104
    .line 105
    add-int/2addr v0, v2

    .line 106
    mul-int/2addr v0, v1

    .line 107
    iget-boolean v2, p0, Lna/z;->w:Z

    .line 108
    .line 109
    add-int/2addr v0, v2

    .line 110
    mul-int/2addr v0, v1

    .line 111
    iget-boolean v2, p0, Lna/z;->x:Z

    .line 112
    .line 113
    add-int/2addr v0, v2

    .line 114
    mul-int/2addr v0, v1

    .line 115
    iget-object v2, p0, Lna/z;->y:Lcom/google/common/collect/ImmutableMap;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    add-int/2addr v0, v2

    .line 122
    mul-int/2addr v0, v1

    .line 123
    iget-object v1, p0, Lna/z;->z:Lcom/google/common/collect/ImmutableSet;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    add-int/2addr v0, v1

    .line 130
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Lna/z;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x7

    .line 17
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Lna/z;->b:I

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Lna/z;->c:I

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x9

    .line 38
    .line 39
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget v2, p0, Lna/z;->d:I

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const/16 v1, 0xa

    .line 49
    .line 50
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget v2, p0, Lna/z;->e:I

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    const/16 v1, 0xb

    .line 60
    .line 61
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget v2, p0, Lna/z;->f:I

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const/16 v1, 0xc

    .line 71
    .line 72
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget v2, p0, Lna/z;->g:I

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    const/16 v1, 0xd

    .line 82
    .line 83
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget v2, p0, Lna/z;->h:I

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    const/16 v1, 0xe

    .line 93
    .line 94
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget v2, p0, Lna/z;->i:I

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    const/16 v1, 0xf

    .line 104
    .line 105
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget v2, p0, Lna/z;->j:I

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    const/16 v1, 0x10

    .line 115
    .line 116
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-boolean v2, p0, Lna/z;->k:Z

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    const/16 v1, 0x11

    .line 126
    .line 127
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v2, p0, Lna/z;->l:Lcom/google/common/collect/ImmutableList;

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    new-array v4, v3, [Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, [Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/16 v1, 0x19

    .line 146
    .line 147
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget v2, p0, Lna/z;->m:I

    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    const/4 v1, 0x1

    .line 157
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget-object v2, p0, Lna/z;->n:Lcom/google/common/collect/ImmutableList;

    .line 162
    .line 163
    new-array v4, v3, [Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, [Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/4 v1, 0x2

    .line 175
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget v2, p0, Lna/z;->o:I

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    const/16 v1, 0x12

    .line 185
    .line 186
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget v2, p0, Lna/z;->p:I

    .line 191
    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    const/16 v1, 0x13

    .line 196
    .line 197
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget v2, p0, Lna/z;->q:I

    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    const/16 v1, 0x14

    .line 207
    .line 208
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iget-object v2, p0, Lna/z;->r:Lcom/google/common/collect/ImmutableList;

    .line 213
    .line 214
    new-array v4, v3, [Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    check-cast v2, [Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const/4 v1, 0x3

    .line 226
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    iget-object v2, p0, Lna/z;->s:Lcom/google/common/collect/ImmutableList;

    .line 231
    .line 232
    new-array v3, v3, [Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    check-cast v2, [Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const/4 v1, 0x4

    .line 244
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    iget v2, p0, Lna/z;->t:I

    .line 249
    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    const/16 v1, 0x1a

    .line 254
    .line 255
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    iget v2, p0, Lna/z;->u:I

    .line 260
    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    const/4 v1, 0x5

    .line 265
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    iget-boolean v2, p0, Lna/z;->v:Z

    .line 270
    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    .line 273
    .line 274
    const/16 v1, 0x15

    .line 275
    .line 276
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iget-boolean v2, p0, Lna/z;->w:Z

    .line 281
    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    .line 284
    .line 285
    const/16 v1, 0x16

    .line 286
    .line 287
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iget-boolean v2, p0, Lna/z;->x:Z

    .line 292
    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    .line 295
    .line 296
    const/16 v1, 0x17

    .line 297
    .line 298
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    iget-object v2, p0, Lna/z;->y:Lcom/google/common/collect/ImmutableMap;

    .line 303
    .line 304
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/d;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 313
    .line 314
    .line 315
    const/16 v1, 0x18

    .line 316
    .line 317
    invoke-static {v1}, Lna/z;->c(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    iget-object v2, p0, Lna/z;->z:Lcom/google/common/collect/ImmutableSet;

    .line 322
    .line 323
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 328
    .line 329
    .line 330
    return-object v0
.end method
