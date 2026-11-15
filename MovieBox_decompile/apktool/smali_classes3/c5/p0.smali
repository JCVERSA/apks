.class public Lc5/p0;
.super Lc5/i1;
.source "source.java"

# interfaces
.implements Lc5/z0;


# instance fields
.field protected final j:[Lc5/g0;

.field protected final k:[Lc5/g0;

.field protected final l:Lc5/f1;

.field private volatile transient m:[J

.field private volatile transient n:[S


# direct methods
.method public constructor <init>(Lc5/f1;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lc5/i1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc5/p0;->l:Lc5/f1;

    .line 5
    .line 6
    iget-object v0, p1, Lc5/f1;->f:[Lcom/alibaba/fastjson/util/d;

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    new-array v0, v0, [Lc5/g0;

    .line 10
    .line 11
    iput-object v0, p0, Lc5/p0;->k:[Lc5/g0;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    iget-object v2, p0, Lc5/p0;->k:[Lc5/g0;

    .line 16
    .line 17
    array-length v3, v2

    .line 18
    if-ge v1, v3, :cond_0

    .line 19
    .line 20
    new-instance v3, Lc5/g0;

    .line 21
    .line 22
    iget-object v4, p1, Lc5/f1;->a:Ljava/lang/Class;

    .line 23
    .line 24
    iget-object v5, p1, Lc5/f1;->f:[Lcom/alibaba/fastjson/util/d;

    .line 25
    .line 26
    aget-object v5, v5, v1

    .line 27
    .line 28
    invoke-direct {v3, v4, v5}, Lc5/g0;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V

    .line 29
    .line 30
    .line 31
    aput-object v3, v2, v1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p1, Lc5/f1;->e:[Lcom/alibaba/fastjson/util/d;

    .line 37
    .line 38
    iget-object v3, p1, Lc5/f1;->f:[Lcom/alibaba/fastjson/util/d;

    .line 39
    .line 40
    if-ne v1, v3, :cond_1

    .line 41
    .line 42
    iput-object v2, p0, Lc5/p0;->j:[Lc5/g0;

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    array-length v1, v1

    .line 46
    new-array v1, v1, [Lc5/g0;

    .line 47
    .line 48
    iput-object v1, p0, Lc5/p0;->j:[Lc5/g0;

    .line 49
    .line 50
    move v1, v0

    .line 51
    :goto_1
    iget-object v2, p0, Lc5/p0;->j:[Lc5/g0;

    .line 52
    .line 53
    array-length v2, v2

    .line 54
    if-ge v1, v2, :cond_3

    .line 55
    .line 56
    iget-object v2, p1, Lc5/f1;->e:[Lcom/alibaba/fastjson/util/d;

    .line 57
    .line 58
    aget-object v2, v2, v1

    .line 59
    .line 60
    iget-object v2, v2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Lc5/p0;->m(Ljava/lang/String;)Lc5/g0;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    iget-object v1, p0, Lc5/p0;->k:[Lc5/g0;

    .line 69
    .line 70
    iget-object v2, p0, Lc5/p0;->j:[Lc5/g0;

    .line 71
    .line 72
    array-length v3, v1

    .line 73
    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    iget-object v3, p0, Lc5/p0;->j:[Lc5/g0;

    .line 78
    .line 79
    aput-object v2, v3, v1

    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    :goto_2
    iget-object p1, p1, Lc5/f1;->d:Lz4/d;

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-interface {p1}, Lz4/d;->serialzeFilters()[Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    array-length v1, p1

    .line 93
    :goto_3
    if-ge v0, v1, :cond_4

    .line 94
    .line 95
    aget-object v2, p1, v0

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Lc5/h1;

    .line 107
    .line 108
    invoke-virtual {p0, v2}, Lc5/i1;->b(Lc5/h1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    :catch_0
    add-int/lit8 v0, v0, 0x1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    return-void
.end method


# virtual methods
.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lc5/p0;->t(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected j(Lc5/o0;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lc5/i1;->g:Ljava/util/List;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    throw p2

    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, Lc5/i1;->g:Ljava/util/List;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw p2

    .line 48
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc5/p0;->k:[Lc5/g0;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_1

    .line 11
    .line 12
    aget-object v4, v1, v3

    .line 13
    .line 14
    invoke-virtual {v4, p1}, Lc5/g0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    iget-object v4, v4, Lc5/g0;->a:Lcom/alibaba/fastjson/util/d;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object v0
.end method

.method public l(J)Lc5/g0;
    .locals 12

    .line 1
    iget-object v0, p0, Lc5/p0;->m:[J

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v3, p0, Lc5/p0;->k:[Lc5/g0;

    .line 12
    .line 13
    array-length v3, v3

    .line 14
    array-length v4, v0

    .line 15
    mul-int/2addr v3, v4

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    move v4, v1

    .line 19
    move v5, v4

    .line 20
    :goto_0
    iget-object v6, p0, Lc5/p0;->k:[Lc5/g0;

    .line 21
    .line 22
    array-length v7, v6

    .line 23
    if-ge v4, v7, :cond_2

    .line 24
    .line 25
    aget-object v6, v6, v4

    .line 26
    .line 27
    iget-object v6, v6, Lc5/g0;->a:Lcom/alibaba/fastjson/util/d;

    .line 28
    .line 29
    iget-object v6, v6, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 30
    .line 31
    add-int/lit8 v7, v5, 0x1

    .line 32
    .line 33
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    aput-wide v8, v3, v5

    .line 38
    .line 39
    move v5, v7

    .line 40
    move v7, v1

    .line 41
    :goto_1
    array-length v8, v0

    .line 42
    if-ge v7, v8, :cond_1

    .line 43
    .line 44
    aget-object v8, v0, v7

    .line 45
    .line 46
    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-eqz v9, :cond_0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_0
    add-int/lit8 v9, v5, 0x1

    .line 58
    .line 59
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v10

    .line 63
    aput-wide v10, v3, v5

    .line 64
    .line 65
    move v5, v9

    .line 66
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-static {v3, v1, v5}, Ljava/util/Arrays;->sort([JII)V

    .line 73
    .line 74
    .line 75
    new-array v4, v5, [J

    .line 76
    .line 77
    iput-object v4, p0, Lc5/p0;->m:[J

    .line 78
    .line 79
    iget-object v4, p0, Lc5/p0;->m:[J

    .line 80
    .line 81
    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    move-object v0, v2

    .line 86
    :goto_3
    iget-object v3, p0, Lc5/p0;->m:[J

    .line 87
    .line 88
    invoke-static {v3, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-gez p1, :cond_4

    .line 93
    .line 94
    return-object v2

    .line 95
    :cond_4
    iget-object p2, p0, Lc5/p0;->n:[S

    .line 96
    .line 97
    const/4 v3, -0x1

    .line 98
    if-nez p2, :cond_b

    .line 99
    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :cond_5
    iget-object p2, p0, Lc5/p0;->m:[J

    .line 107
    .line 108
    array-length p2, p2

    .line 109
    new-array p2, p2, [S

    .line 110
    .line 111
    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([SS)V

    .line 112
    .line 113
    .line 114
    move v4, v1

    .line 115
    :goto_4
    iget-object v5, p0, Lc5/p0;->k:[Lc5/g0;

    .line 116
    .line 117
    array-length v6, v5

    .line 118
    if-ge v4, v6, :cond_a

    .line 119
    .line 120
    aget-object v5, v5, v4

    .line 121
    .line 122
    iget-object v5, v5, Lc5/g0;->a:Lcom/alibaba/fastjson/util/d;

    .line 123
    .line 124
    iget-object v5, v5, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v6, p0, Lc5/p0;->m:[J

    .line 127
    .line 128
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v7

    .line 132
    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-ltz v6, :cond_6

    .line 137
    .line 138
    int-to-short v7, v4

    .line 139
    aput-short v7, p2, v6

    .line 140
    .line 141
    :cond_6
    move v6, v1

    .line 142
    :goto_5
    array-length v7, v0

    .line 143
    if-ge v6, v7, :cond_9

    .line 144
    .line 145
    aget-object v7, v0, v6

    .line 146
    .line 147
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_7

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_7
    iget-object v8, p0, Lc5/p0;->m:[J

    .line 159
    .line 160
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v9

    .line 164
    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-ltz v7, :cond_8

    .line 169
    .line 170
    int-to-short v8, v4

    .line 171
    aput-short v8, p2, v7

    .line 172
    .line 173
    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_a
    iput-object p2, p0, Lc5/p0;->n:[S

    .line 180
    .line 181
    :cond_b
    iget-object p2, p0, Lc5/p0;->n:[S

    .line 182
    .line 183
    aget-short p1, p2, p1

    .line 184
    .line 185
    if-eq p1, v3, :cond_c

    .line 186
    .line 187
    iget-object p2, p0, Lc5/p0;->k:[Lc5/g0;

    .line 188
    .line 189
    aget-object p1, p2, p1

    .line 190
    .line 191
    return-object p1

    .line 192
    :cond_c
    return-object v2
.end method

.method public m(Ljava/lang/String;)Lc5/g0;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lc5/p0;->k:[Lc5/g0;

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-gt v2, v1, :cond_3

    .line 12
    .line 13
    add-int v3, v2, v1

    .line 14
    .line 15
    ushr-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    iget-object v4, p0, Lc5/p0;->k:[Lc5/g0;

    .line 18
    .line 19
    aget-object v4, v4, v3

    .line 20
    .line 21
    iget-object v4, v4, Lc5/g0;->a:Lcom/alibaba/fastjson/util/d;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-gez v4, :cond_1

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    move v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-lez v4, :cond_2

    .line 36
    .line 37
    add-int/lit8 v3, v3, -0x1

    .line 38
    .line 39
    move v1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Lc5/p0;->k:[Lc5/g0;

    .line 42
    .line 43
    aget-object p1, p1, v3

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_3
    return-object v0
.end method

.method public n(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "getFieldValue error."

    .line 2
    .line 3
    invoke-virtual {p0, p3, p4}, Lc5/p0;->l(J)Lc5/g0;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-nez p3, :cond_1

    .line 8
    .line 9
    if-nez p5, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 14
    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string p4, "field not found. "

    .line 21
    .line 22
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    :try_start_0
    invoke-virtual {p3, p1}, Lc5/g0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    .line 43
    .line 44
    new-instance p4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw p3

    .line 63
    :catch_1
    move-exception p1

    .line 64
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    .line 65
    .line 66
    new-instance p4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw p3
.end method

.method public o(Ljava/lang/Object;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lc5/p0;->k:[Lc5/g0;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lc5/p0;->k:[Lc5/g0;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    invoke-virtual {v4, p1}, Lc5/g0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method

.method public p(Ljava/lang/Object;)Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lc5/p0;->k:[Lc5/g0;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lc5/p0;->k:[Lc5/g0;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_3

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    iget v5, v4, Lc5/g0;->c:I

    .line 18
    .line 19
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 20
    .line 21
    invoke-static {v5, v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    iget-object v6, v4, Lc5/g0;->a:Lcom/alibaba/fastjson/util/d;

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    iget-boolean v5, v6, Lcom/alibaba/fastjson/util/d;->o:Z

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-boolean v5, v6, Lcom/alibaba/fastjson/util/d;->s:Z

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    invoke-virtual {v4, p1}, Lc5/g0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v5}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    instance-of v6, v5, Ljava/util/Map;

    .line 49
    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    check-cast v5, Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v5, v4, Lc5/g0;->a:Lcom/alibaba/fastjson/util/d;

    .line 59
    .line 60
    iget-object v5, v5, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v4, p1}, Lc5/g0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget-object v5, v6, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v4, p1}, Lc5/g0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    return-object v0
.end method

.method public q()Lz4/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/p0;->l:Lc5/f1;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/f1;->d:Lz4/d;

    .line 4
    .line 5
    return-object v0
.end method

.method public r(Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lc5/p0;->k:[Lc5/g0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    invoke-virtual {v4, p1}, Lc5/g0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v3
.end method

.method protected s(Lc5/o0;I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2
    .line 3
    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 4
    .line 5
    iget-object v1, p0, Lc5/p0;->l:Lc5/f1;

    .line 6
    .line 7
    iget v1, v1, Lc5/f1;->g:I

    .line 8
    .line 9
    and-int/2addr v1, v0

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lc5/o0;->k:Lc5/j1;

    .line 13
    .line 14
    iget-boolean p1, p1, Lc5/j1;->i:Z

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    and-int p1, p2, v0

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 26
    :goto_1
    return p1
.end method

.method protected t(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .locals 31

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    .line 1
    iget-object v14, v9, Lc5/o0;->k:Lc5/j1;

    if-nez v10, :cond_0

    .line 2
    invoke-virtual {v14}, Lc5/j1;->h0()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v8, v9, v10, v13}, Lc5/p0;->y(Lc5/o0;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v0, v14, Lc5/j1;->g:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v8, Lc5/p0;->k:[Lc5/g0;

    :goto_0
    move-object v15, v0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, v8, Lc5/p0;->j:[Lc5/g0;

    goto :goto_0

    .line 7
    :goto_1
    iget-object v7, v9, Lc5/o0;->r:Lc5/e1;

    .line 8
    iget-object v0, v8, Lc5/p0;->l:Lc5/f1;

    iget-object v0, v0, Lc5/f1;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, v8, Lc5/p0;->l:Lc5/f1;

    iget v5, v0, Lc5/f1;->g:I

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lc5/o0;->x(Lc5/e1;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 10
    :cond_3
    invoke-virtual {v8, v9, v13}, Lc5/p0;->s(Lc5/o0;I)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v0, 0x5b

    goto :goto_2

    :cond_4
    const/16 v0, 0x7b

    :goto_2
    if-eqz v16, :cond_5

    const/16 v1, 0x5d

    :goto_3
    move v6, v1

    goto :goto_4

    :cond_5
    const/16 v1, 0x7d

    goto :goto_3

    :goto_4
    const/16 v17, 0x0

    if-nez p6, :cond_6

    .line 11
    :try_start_0
    invoke-virtual {v14, v0}, Lc5/j1;->b(C)Lc5/j1;

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v7

    move-object v5, v9

    goto/16 :goto_28

    :catch_0
    move-exception v0

    move-object v3, v7

    move-object v5, v9

    move-object v2, v10

    move-object/from16 v1, v17

    goto/16 :goto_25

    .line 12
    :cond_6
    :goto_5
    array-length v0, v15

    if-lez v0, :cond_7

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v0}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->s()V

    .line 14
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->v()V

    .line 15
    :cond_7
    iget-object v0, v8, Lc5/p0;->l:Lc5/f1;

    iget v0, v0, Lc5/f1;->g:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v2

    const/16 v5, 0x2c

    if-nez v0, :cond_8

    and-int v0, v13, v2

    if-nez v0, :cond_8

    .line 16
    invoke-virtual {v9, v12, v10}, Lc5/o0;->u(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, v12, :cond_9

    .line 18
    instance-of v2, v12, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_9

    .line 19
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->Q(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_6

    :cond_9
    move-object v2, v12

    :goto_6
    if-eq v0, v2, :cond_a

    .line 20
    iget-object v0, v8, Lc5/p0;->l:Lc5/f1;

    iget-object v0, v0, Lc5/f1;->c:Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v10}, Lc5/p0;->w(Lc5/o0;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v5

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    .line 21
    :goto_7
    invoke-virtual {v14, v1}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18

    .line 22
    invoke-virtual {v8, v9, v10, v0}, Lc5/p0;->v(Lc5/o0;Ljava/lang/Object;C)C

    move-result v0

    if-ne v0, v5, :cond_b

    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    .line 23
    :goto_8
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v1}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v19

    .line 24
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v1}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v21, v0

    move-object/from16 v1, v17

    const/4 v2, 0x0

    .line 25
    :goto_9
    :try_start_1
    array-length v0, v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v2, v0, :cond_48

    .line 26
    :try_start_2
    aget-object v13, v15, v2

    .line 27
    iget-object v11, v13, Lc5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v0, v11, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    move-object/from16 v22, v15

    .line 28
    iget-object v15, v11, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v23, v7

    .line 29
    :try_start_3
    iget-object v7, v11, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 30
    iget v3, v14, Lc5/j1;->c:I

    iget v4, v11, Lcom/alibaba/fastjson/util/d;->i:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v3, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v25

    .line 31
    iget-boolean v3, v14, Lc5/j1;->f:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v3, :cond_c

    if-nez v25, :cond_c

    const/16 v26, 0x1

    goto :goto_a

    :cond_c
    const/16 v26, 0x0

    :goto_a
    if-eqz v19, :cond_e

    .line 32
    :try_start_4
    iget-boolean v3, v11, Lcom/alibaba/fastjson/util/d;->o:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_e

    :cond_d
    :goto_b
    move/from16 v28, v2

    move/from16 v29, v6

    move-object v5, v9

    move-object/from16 v30, v23

    const/16 v3, 0x2c

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto/16 :goto_23

    :catchall_1
    move-exception v0

    move-object v5, v9

    move-object/from16 v3, v23

    goto/16 :goto_28

    :catch_1
    move-exception v0

    move-object v5, v9

    move-object v2, v10

    move-object/from16 v3, v23

    goto/16 :goto_25

    :cond_e
    if-eqz v20, :cond_f

    if-nez v0, :cond_f

    goto :goto_b

    .line 33
    :cond_f
    :try_start_5
    invoke-virtual {v8, v9, v10, v15}, Lc5/i1;->e(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, v11, Lcom/alibaba/fastjson/util/d;->k:Ljava/lang/String;

    .line 34
    invoke-virtual {v8, v9, v0}, Lc5/p0;->j(Lc5/o0;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v0, :cond_10

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    if-eqz v16, :cond_d

    const/4 v0, 0x1

    .line 35
    :goto_d
    :try_start_7
    iget-object v3, v8, Lc5/p0;->l:Lc5/f1;

    iget-object v3, v3, Lc5/f1;->c:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v3, :cond_12

    .line 36
    :try_start_8
    invoke-virtual {v9, v12, v10}, Lc5/o0;->u(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_12

    goto :goto_b

    :cond_12
    if-eqz v0, :cond_13

    move-object/from16 v27, v1

    :goto_e
    move-object/from16 v0, v17

    goto :goto_f

    .line 37
    :cond_13
    :try_start_9
    invoke-virtual {v13, v10}, Lc5/g0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v27, v1

    goto :goto_f

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 38
    :try_start_a
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v0}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v0, :cond_47

    move-object/from16 v27, v13

    goto :goto_e

    .line 39
    :goto_f
    :try_start_b
    invoke-virtual {v8, v9, v10, v15, v0}, Lc5/i1;->d(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez v1, :cond_14

    move/from16 v28, v2

    move/from16 v29, v6

    move-object v5, v9

    move-object/from16 v30, v23

    const/16 v3, 0x2c

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1f

    .line 40
    :cond_14
    const-class v5, Ljava/lang/String;

    if-ne v7, v5, :cond_15

    :try_start_c
    const-string v1, "trim"

    iget-object v3, v11, Lcom/alibaba/fastjson/util/d;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 41
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_10

    :catch_3
    move-exception v0

    move-object v5, v9

    move-object v2, v10

    move-object/from16 v3, v23

    move-object/from16 v1, v27

    goto/16 :goto_25

    .line 42
    :cond_15
    :goto_10
    :try_start_d
    invoke-virtual {v8, v9, v10, v15, v0}, Lc5/i1;->h(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 43
    iget-object v3, v13, Lc5/g0;->g:Lc5/p;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object/from16 v1, p0

    move/from16 v28, v2

    move-object/from16 v2, p1

    const/4 v12, 0x1

    move-object v12, v4

    const/16 v24, 0x0

    move-object/from16 v4, p2

    move-object v10, v5

    move-object v5, v15

    move/from16 v29, v6

    move-object v6, v0

    move-object v9, v7

    move-object/from16 v30, v23

    move/from16 v7, p5

    :try_start_e
    invoke-virtual/range {v1 .. v7}, Lc5/i1;->i(Lc5/o0;Lc5/p;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 44
    const-string v2, ""

    if-nez v1, :cond_24

    .line 45
    :try_start_f
    iget v3, v11, Lcom/alibaba/fastjson/util/d;->i:I

    .line 46
    invoke-virtual {v11}, Lcom/alibaba/fastjson/util/d;->e()Lz4/b;

    move-result-object v4

    .line 47
    iget-object v5, v8, Lc5/p0;->l:Lc5/f1;

    iget-object v5, v5, Lc5/f1;->d:Lz4/d;

    if-eqz v5, :cond_16

    .line 48
    invoke-interface {v5}, Lz4/d;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v5

    or-int/2addr v3, v5

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object/from16 v5, p1

    :goto_11
    move-object/from16 v3, v30

    goto/16 :goto_28

    :catch_4
    move-exception v0

    move-object/from16 v5, p1

    :goto_12
    move-object/from16 v2, p2

    move-object/from16 v1, v27

    :goto_13
    move-object/from16 v3, v30

    goto/16 :goto_25

    :cond_16
    :goto_14
    if-eqz v4, :cond_17

    .line 49
    invoke-interface {v4}, Lz4/b;->defaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 50
    invoke-interface {v4}, Lz4/b;->defaultValue()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17

    .line 51
    :cond_17
    const-class v4, Ljava/lang/Boolean;

    if-ne v9, v4, :cond_1a

    .line 52
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 53
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v6, v4, v5

    if-nez v16, :cond_18

    and-int v7, v3, v6

    if-nez v7, :cond_18

    .line 54
    iget v7, v14, Lc5/j1;->c:I

    and-int/2addr v6, v7

    if-nez v6, :cond_18

    :goto_15
    move-object/from16 v5, p1

    move/from16 v9, v24

    const/16 v3, 0x2c

    const/4 v4, 0x1

    goto/16 :goto_1f

    :cond_18
    and-int v6, v3, v4

    if-eqz v6, :cond_19

    .line 55
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_17

    .line 56
    :cond_19
    iget v6, v14, Lc5/j1;->c:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_24

    and-int/2addr v3, v5

    if-nez v3, :cond_24

    .line 57
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_17

    :cond_1a
    if-ne v9, v10, :cond_1d

    .line 58
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 59
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v6, v4, v5

    if-nez v16, :cond_1b

    and-int v7, v3, v6

    if-nez v7, :cond_1b

    .line 60
    iget v7, v14, Lc5/j1;->c:I

    and-int/2addr v6, v7

    if-nez v6, :cond_1b

    goto :goto_15

    :cond_1b
    and-int v6, v3, v4

    if-eqz v6, :cond_1c

    :goto_16
    move-object v1, v2

    goto/16 :goto_17

    .line 61
    :cond_1c
    iget v6, v14, Lc5/j1;->c:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_24

    and-int/2addr v3, v5

    if-nez v3, :cond_24

    goto :goto_16

    .line 62
    :cond_1d
    const-class v4, Ljava/lang/Number;

    invoke-virtual {v4, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 63
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 64
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v6, v4, v5

    if-nez v16, :cond_1e

    and-int v7, v3, v6

    if-nez v7, :cond_1e

    .line 65
    iget v7, v14, Lc5/j1;->c:I

    and-int/2addr v6, v7

    if-nez v6, :cond_1e

    goto :goto_15

    :cond_1e
    and-int v6, v3, v4

    if-eqz v6, :cond_1f

    .line 66
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_17

    .line 67
    :cond_1f
    iget v6, v14, Lc5/j1;->c:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_24

    and-int/2addr v3, v5

    if-nez v3, :cond_24

    .line 68
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_17

    .line 69
    :cond_20
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 70
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 71
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v6, v4, v5

    if-nez v16, :cond_21

    and-int v7, v3, v6

    if-nez v7, :cond_21

    .line 72
    iget v7, v14, Lc5/j1;->c:I

    and-int/2addr v6, v7

    if-nez v6, :cond_21

    goto/16 :goto_15

    :cond_21
    and-int v6, v3, v4

    if-eqz v6, :cond_22

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_17

    .line 74
    :cond_22
    iget v6, v14, Lc5/j1;->c:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_24

    and-int/2addr v3, v5

    if-nez v3, :cond_24

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_17

    :cond_23
    if-nez v16, :cond_24

    .line 76
    iget-boolean v4, v13, Lc5/g0;->b:Z

    if-nez v4, :cond_24

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 77
    invoke-virtual {v14, v5}, Lc5/j1;->n(I)Z

    move-result v5

    if-nez v5, :cond_24

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-nez v3, :cond_24

    goto/16 :goto_15

    :cond_24
    :goto_17
    if-eqz v1, :cond_2c

    .line 78
    iget-boolean v3, v14, Lc5/j1;->k:Z

    if-nez v3, :cond_25

    iget v3, v11, Lcom/alibaba/fastjson/util/d;->i:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-nez v3, :cond_25

    iget-object v3, v8, Lc5/p0;->l:Lc5/f1;

    iget v3, v3, Lc5/f1;->g:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2c

    .line 79
    :cond_25
    iget-object v3, v11, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 80
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_26

    instance-of v4, v1, Ljava/lang/Byte;

    if-eqz v4, :cond_26

    move-object v4, v1

    check-cast v4, Ljava/lang/Byte;

    .line 81
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-nez v4, :cond_26

    goto/16 :goto_15

    .line 82
    :cond_26
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_27

    instance-of v4, v1, Ljava/lang/Short;

    if-eqz v4, :cond_27

    move-object v4, v1

    check-cast v4, Ljava/lang/Short;

    .line 83
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-nez v4, :cond_27

    goto/16 :goto_15

    .line 84
    :cond_27
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_28

    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_28

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    .line 85
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_28

    goto/16 :goto_15

    .line 86
    :cond_28
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_29

    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_29

    move-object v4, v1

    check-cast v4, Ljava/lang/Long;

    .line 87
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_29

    goto/16 :goto_15

    .line 88
    :cond_29
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2a

    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_2a

    move-object v4, v1

    check-cast v4, Ljava/lang/Float;

    .line 89
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2a

    goto/16 :goto_15

    .line 90
    :cond_2a
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2b

    instance-of v4, v1, Ljava/lang/Double;

    if-eqz v4, :cond_2b

    move-object v4, v1

    check-cast v4, Ljava/lang/Double;

    .line 91
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2b

    goto/16 :goto_15

    .line 92
    :cond_2b
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2c

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_2c

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    .line 93
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2c

    goto/16 :goto_15

    :cond_2c
    if-eqz v21, :cond_2e

    .line 94
    iget-boolean v3, v11, Lcom/alibaba/fastjson/util/d;->s:Z

    if-eqz v3, :cond_2d

    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_2d

    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    .line 95
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_2d

    goto/16 :goto_15

    :cond_2d
    const/16 v3, 0x2c

    .line 96
    invoke-virtual {v14, v3}, Lc5/j1;->write(I)V

    .line 97
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v4}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 98
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->v()V

    goto :goto_18

    :cond_2e
    const/16 v3, 0x2c

    :cond_2f
    :goto_18
    if-eq v12, v15, :cond_31

    if-nez v16, :cond_30

    const/4 v4, 0x1

    .line 99
    invoke-virtual {v14, v12, v4}, Lc5/j1;->v(Ljava/lang/String;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :goto_19
    move-object/from16 v5, p1

    goto :goto_1a

    :cond_30
    const/4 v4, 0x1

    goto :goto_19

    .line 100
    :goto_1a
    :try_start_10
    invoke-virtual {v5, v1}, Lc5/o0;->A(Ljava/lang/Object;)V

    :goto_1b
    move/from16 v9, v24

    goto/16 :goto_20

    :catchall_3
    move-exception v0

    goto/16 :goto_11

    :catch_5
    move-exception v0

    goto/16 :goto_12

    :cond_31
    move-object/from16 v5, p1

    move-object v6, v9

    const/4 v4, 0x1

    if-eq v0, v1, :cond_33

    if-nez v16, :cond_32

    .line 101
    invoke-virtual {v13, v5}, Lc5/g0;->e(Lc5/o0;)V

    .line 102
    :cond_32
    invoke-virtual {v5, v1}, Lc5/o0;->A(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_33
    if-nez v16, :cond_37

    .line 103
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 104
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_34

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "java."

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    :cond_34
    const-class v7, Ljava/lang/Object;

    if-ne v6, v7, :cond_36

    :cond_35
    move v7, v4

    goto :goto_1c

    :cond_36
    move/from16 v7, v24

    :goto_1c
    if-nez v18, :cond_38

    .line 105
    iget-boolean v9, v11, Lcom/alibaba/fastjson/util/d;->s:Z

    if-eqz v9, :cond_38

    if-nez v0, :cond_37

    if-nez v7, :cond_37

    goto :goto_1d

    :cond_37
    move/from16 v9, v24

    goto :goto_1e

    :cond_38
    :goto_1d
    if-eqz v26, :cond_39

    .line 106
    iget-object v0, v11, Lcom/alibaba/fastjson/util/d;->p:[C

    array-length v7, v0

    move/from16 v9, v24

    invoke-virtual {v14, v0, v9, v7}, Lc5/j1;->write([CII)V

    goto :goto_1e

    :cond_39
    move/from16 v9, v24

    .line 107
    invoke-virtual {v13, v5}, Lc5/g0;->e(Lc5/o0;)V

    :goto_1e
    if-nez v16, :cond_43

    .line 108
    invoke-virtual {v11}, Lcom/alibaba/fastjson/util/d;->e()Lz4/b;

    move-result-object v0

    if-ne v6, v10, :cond_40

    if-eqz v0, :cond_3a

    .line 109
    invoke-interface {v0}, Lz4/b;->serializeUsing()Ljava/lang/Class;

    move-result-object v0

    const-class v6, Ljava/lang/Void;

    if-ne v0, v6, :cond_40

    :cond_3a
    if-nez v1, :cond_3e

    .line 110
    iget v0, v13, Lc5/g0;->c:I

    .line 111
    iget-object v6, v8, Lc5/p0;->l:Lc5/f1;

    iget-object v6, v6, Lc5/f1;->d:Lz4/d;

    if-eqz v6, :cond_3b

    .line 112
    invoke-interface {v6}, Lz4/d;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v6

    or-int/2addr v0, v6

    .line 113
    :cond_3b
    iget v6, v14, Lc5/j1;->c:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_3c

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v0

    if-nez v6, :cond_3c

    .line 114
    invoke-virtual {v14, v2}, Lc5/j1;->o0(Ljava/lang/String;)V

    goto :goto_20

    :cond_3c
    and-int/2addr v0, v7

    if-eqz v0, :cond_3d

    .line 115
    invoke-virtual {v14, v2}, Lc5/j1;->o0(Ljava/lang/String;)V

    goto :goto_20

    .line 116
    :cond_3d
    invoke-virtual {v14}, Lc5/j1;->h0()V

    goto :goto_20

    .line 117
    :cond_3e
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    if-eqz v25, :cond_3f

    .line 118
    invoke-virtual {v14, v0}, Lc5/j1;->s0(Ljava/lang/String;)V

    goto :goto_20

    .line 119
    :cond_3f
    invoke-virtual {v14, v0, v9}, Lc5/j1;->r0(Ljava/lang/String;C)V

    goto :goto_20

    .line 120
    :cond_40
    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/d;->s:Z

    if-eqz v0, :cond_42

    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_42

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_42

    move/from16 v21, v9

    :cond_41
    :goto_1f
    move-object/from16 v1, v27

    goto/16 :goto_23

    .line 122
    :cond_42
    invoke-virtual {v13, v5, v1}, Lc5/g0;->f(Lc5/o0;Ljava/lang/Object;)V

    goto :goto_20

    .line 123
    :cond_43
    invoke-virtual {v13, v5, v1}, Lc5/g0;->f(Lc5/o0;Ljava/lang/Object;)V

    .line 124
    :goto_20
    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/d;->s:Z

    if-eqz v0, :cond_46

    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_46

    .line 125
    check-cast v1, Ljava/util/Map;

    .line 126
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_44

    goto :goto_1f

    .line 127
    :cond_44
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v5, v0}, Lc5/o0;->t(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 128
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v1, :cond_45

    :cond_46
    move/from16 v21, v4

    goto :goto_1f

    :catchall_4
    move-exception v0

    move-object v5, v9

    move-object/from16 v30, v23

    goto/16 :goto_11

    :catch_6
    move-exception v0

    move-object v5, v9

    move-object/from16 v30, v23

    goto/16 :goto_12

    :cond_47
    move-object v5, v9

    move-object/from16 v30, v23

    .line 129
    :try_start_11
    throw v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :catch_7
    move-exception v0

    :goto_21
    move-object/from16 v2, p2

    move-object v1, v13

    goto/16 :goto_13

    :catch_8
    move-exception v0

    move-object v5, v9

    move-object/from16 v30, v23

    goto :goto_21

    :catch_9
    move-exception v0

    move-object v5, v9

    move-object/from16 v30, v23

    :goto_22
    move-object/from16 v2, p2

    goto/16 :goto_13

    :goto_23
    add-int/lit8 v2, v28, 0x1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object v9, v5

    move-object/from16 v15, v22

    move/from16 v6, v29

    move-object/from16 v7, v30

    move v5, v3

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    move-object/from16 v30, v7

    move-object v5, v9

    goto/16 :goto_11

    :catch_a
    move-exception v0

    move-object/from16 v30, v7

    move-object v5, v9

    goto :goto_22

    :cond_48
    move v3, v5

    move/from16 v29, v6

    move-object/from16 v30, v7

    move-object v5, v9

    move-object/from16 v22, v15

    const/4 v9, 0x0

    move-object/from16 v2, p2

    if-eqz v21, :cond_49

    move v9, v3

    .line 130
    :cond_49
    :try_start_12
    invoke-virtual {v8, v5, v2, v9}, Lc5/p0;->u(Lc5/o0;Ljava/lang/Object;C)C

    move-object/from16 v3, v22

    .line 131
    array-length v0, v3

    if-lez v0, :cond_4a

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v0}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 132
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->l()V

    .line 133
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->v()V

    goto :goto_24

    :catch_b
    move-exception v0

    goto/16 :goto_13

    :cond_4a
    :goto_24
    if-nez p6, :cond_4b

    move/from16 v3, v29

    .line 134
    invoke-virtual {v14, v3}, Lc5/j1;->b(C)Lc5/j1;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :cond_4b
    move-object/from16 v3, v30

    .line 135
    iput-object v3, v5, Lc5/o0;->r:Lc5/e1;

    return-void

    :catch_c
    move-exception v0

    move-object v3, v7

    move-object v5, v9

    move-object v2, v10

    .line 136
    :goto_25
    :try_start_13
    const-string v4, "write javaBean error, fastjson version 1.2.83"

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", class "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 138
    const-string v4, ", fieldName : "

    move-object/from16 v6, p3

    if-eqz v6, :cond_4c

    .line 139
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    :catchall_6
    move-exception v0

    goto :goto_28

    :cond_4c
    if-eqz v1, :cond_4e

    .line 140
    iget-object v6, v1, Lc5/g0;->a:Lcom/alibaba/fastjson/util/d;

    if-eqz v6, :cond_4e

    .line 141
    iget-object v7, v6, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_4d

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    .line 143
    :cond_4d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lc5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    :cond_4e
    :goto_26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    :cond_4f
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_50

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v17

    :cond_50
    if-nez v17, :cond_51

    goto :goto_27

    :cond_51
    move-object/from16 v0, v17

    .line 148
    :goto_27
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 149
    :goto_28
    iput-object v3, v5, Lc5/o0;->r:Lc5/e1;

    .line 150
    throw v0
.end method

.method protected u(Lc5/o0;Ljava/lang/Object;C)C
    .locals 2

    .line 1
    iget-object v0, p1, Lc5/i1;->b:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lc5/i;

    .line 20
    .line 21
    invoke-virtual {v1, p1, p2, p3}, Lc5/i;->a(Lc5/o0;Ljava/lang/Object;C)C

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lc5/i1;->b:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lc5/i;

    .line 45
    .line 46
    invoke-virtual {v1, p1, p2, p3}, Lc5/i;->a(Lc5/o0;Ljava/lang/Object;C)C

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    return p3
.end method

.method protected v(Lc5/o0;Ljava/lang/Object;C)C
    .locals 2

    .line 1
    iget-object v0, p1, Lc5/i1;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lc5/q;

    .line 20
    .line 21
    invoke-virtual {v1, p1, p2, p3}, Lc5/q;->a(Lc5/o0;Ljava/lang/Object;C)C

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lc5/i1;->a:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lc5/q;

    .line 45
    .line 46
    invoke-virtual {v1, p1, p2, p3}, Lc5/q;->a(Lc5/o0;Ljava/lang/Object;C)C

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    return p3
.end method

.method protected w(Lc5/o0;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p1, Lc5/o0;->j:Lc5/g1;

    .line 4
    .line 5
    iget-object p2, p2, Lc5/g1;->c:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    iget-object v0, p1, Lc5/o0;->k:Lc5/j1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p2, v1}, Lc5/j1;->v(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lc5/p0;->l:Lc5/f1;

    .line 14
    .line 15
    iget-object p2, p2, Lc5/f1;->b:Ljava/lang/String;

    .line 16
    .line 17
    if-nez p2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->x0(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    :cond_2
    invoke-virtual {p1, p2}, Lc5/o0;->B(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public x(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lc5/p0;->t(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public y(Lc5/o0;Ljava/lang/Object;I)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lc5/o0;->r:Lc5/e1;

    .line 2
    .line 3
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 4
    .line 5
    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v0, v0, Lc5/e1;->d:I

    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    and-int/2addr p3, v1

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p3, p1, Lc5/o0;->q:Ljava/util/IdentityHashMap;

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lc5/o0;->D(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_1
    :goto_0
    return v2
.end method
