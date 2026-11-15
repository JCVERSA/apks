.class final Lfc/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ldc/d;
.implements Ldc/f;


# instance fields
.field private a:Lfc/e;

.field private b:Z

.field private final c:Landroid/util/JsonWriter;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Ldc/c;

.field private final g:Z


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Ldc/c;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lfc/e;->a:Lfc/e;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lfc/e;->b:Z

    .line 9
    .line 10
    new-instance v0, Landroid/util/JsonWriter;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 16
    .line 17
    iput-object p2, p0, Lfc/e;->d:Ljava/util/Map;

    .line 18
    .line 19
    iput-object p3, p0, Lfc/e;->e:Ljava/util/Map;

    .line 20
    .line 21
    iput-object p4, p0, Lfc/e;->f:Ldc/c;

    .line 22
    .line 23
    iput-boolean p5, p0, Lfc/e;->g:Z

    .line 24
    .line 25
    return-void
.end method

.method private t(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    instance-of v0, p1, Ljava/util/Collection;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    instance-of v0, p1, Ljava/util/Date;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    instance-of v0, p1, Ljava/lang/Enum;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    instance-of p1, p1, Ljava/lang/Number;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method

.method private w(Ljava/lang/String;Ljava/lang/Object;)Lfc/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p2, p1}, Lfc/e;->k(Ljava/lang/Object;Z)Lfc/e;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private x(Ljava/lang/String;Ljava/lang/Object;)Lfc/e;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-direct {p0}, Lfc/e;->y()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p2, p1}, Lfc/e;->k(Ljava/lang/Object;Z)Lfc/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private y()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfc/e;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lfc/e;->a:Lfc/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {v0}, Lfc/e;->y()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lfc/e;->a:Lfc/e;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Lfc/e;->b:Z

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lfc/e;->a:Lfc/e;

    .line 19
    .line 20
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "Parent context used since this context was created. Cannot use this context anymore."

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method


# virtual methods
.method public a(Ldc/b;Ljava/lang/Object;)Ldc/d;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ldc/b;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lfc/e;->p(Ljava/lang/String;Ljava/lang/Object;)Lfc/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/String;)Ldc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfc/e;->l(Ljava/lang/String;)Lfc/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Ldc/b;Z)Ldc/d;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ldc/b;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lfc/e;->q(Ljava/lang/String;Z)Lfc/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d(Ldc/b;J)Ldc/d;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ldc/b;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lfc/e;->o(Ljava/lang/String;J)Lfc/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public e(Ldc/b;I)Ldc/d;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ldc/b;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lfc/e;->n(Ljava/lang/String;I)Lfc/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public f(Ldc/b;D)Ldc/d;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ldc/b;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lfc/e;->m(Ljava/lang/String;D)Lfc/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public bridge synthetic g(Z)Ldc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfc/e;->r(Z)Lfc/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h(D)Lfc/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public i(I)Lfc/e;
    .locals 3

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    int-to-long v1, p1

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public j(J)Lfc/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method k(Ljava/lang/Object;Z)Lfc/e;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lfc/e;->t(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    new-instance p2, Lcom/google/firebase/encoders/EncodingException;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p1, v1, v0

    .line 24
    .line 25
    const-string p1, "%s cannot be encoded inline"

    .line 26
    .line 27
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p2, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p2

    .line 35
    :cond_1
    if-nez p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    instance-of v2, p1, Ljava/lang/Number;

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    iget-object p2, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 48
    .line 49
    check-cast p1, Ljava/lang/Number;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_b

    .line 64
    .line 65
    instance-of p2, p1, [B

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    check-cast p1, [B

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lfc/e;->s([B)Lfc/e;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_4
    iget-object p2, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 79
    .line 80
    .line 81
    instance-of p2, p1, [I

    .line 82
    .line 83
    if-eqz p2, :cond_5

    .line 84
    .line 85
    check-cast p1, [I

    .line 86
    .line 87
    array-length p2, p1

    .line 88
    :goto_1
    if-ge v0, p2, :cond_a

    .line 89
    .line 90
    aget v2, p1, v0

    .line 91
    .line 92
    iget-object v3, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 93
    .line 94
    int-to-long v4, v2

    .line 95
    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 96
    .line 97
    .line 98
    add-int/2addr v0, v1

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    instance-of p2, p1, [J

    .line 101
    .line 102
    if-eqz p2, :cond_6

    .line 103
    .line 104
    check-cast p1, [J

    .line 105
    .line 106
    array-length p2, p1

    .line 107
    :goto_2
    if-ge v0, p2, :cond_a

    .line 108
    .line 109
    aget-wide v2, p1, v0

    .line 110
    .line 111
    invoke-virtual {p0, v2, v3}, Lfc/e;->j(J)Lfc/e;

    .line 112
    .line 113
    .line 114
    add-int/2addr v0, v1

    .line 115
    goto :goto_2

    .line 116
    :cond_6
    instance-of p2, p1, [D

    .line 117
    .line 118
    if-eqz p2, :cond_7

    .line 119
    .line 120
    check-cast p1, [D

    .line 121
    .line 122
    array-length p2, p1

    .line 123
    :goto_3
    if-ge v0, p2, :cond_a

    .line 124
    .line 125
    aget-wide v2, p1, v0

    .line 126
    .line 127
    iget-object v4, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 128
    .line 129
    invoke-virtual {v4, v2, v3}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 130
    .line 131
    .line 132
    add-int/2addr v0, v1

    .line 133
    goto :goto_3

    .line 134
    :cond_7
    instance-of p2, p1, [Z

    .line 135
    .line 136
    if-eqz p2, :cond_8

    .line 137
    .line 138
    check-cast p1, [Z

    .line 139
    .line 140
    array-length p2, p1

    .line 141
    :goto_4
    if-ge v0, p2, :cond_a

    .line 142
    .line 143
    aget-boolean v2, p1, v0

    .line 144
    .line 145
    iget-object v3, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 146
    .line 147
    invoke-virtual {v3, v2}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 148
    .line 149
    .line 150
    add-int/2addr v0, v1

    .line 151
    goto :goto_4

    .line 152
    :cond_8
    instance-of p2, p1, [Ljava/lang/Number;

    .line 153
    .line 154
    if-eqz p2, :cond_9

    .line 155
    .line 156
    check-cast p1, [Ljava/lang/Number;

    .line 157
    .line 158
    array-length p2, p1

    .line 159
    move v2, v0

    .line 160
    :goto_5
    if-ge v2, p2, :cond_a

    .line 161
    .line 162
    aget-object v3, p1, v2

    .line 163
    .line 164
    invoke-virtual {p0, v3, v0}, Lfc/e;->k(Ljava/lang/Object;Z)Lfc/e;

    .line 165
    .line 166
    .line 167
    add-int/2addr v2, v1

    .line 168
    goto :goto_5

    .line 169
    :cond_9
    check-cast p1, [Ljava/lang/Object;

    .line 170
    .line 171
    array-length p2, p1

    .line 172
    move v2, v0

    .line 173
    :goto_6
    if-ge v2, p2, :cond_a

    .line 174
    .line 175
    aget-object v3, p1, v2

    .line 176
    .line 177
    invoke-virtual {p0, v3, v0}, Lfc/e;->k(Ljava/lang/Object;Z)Lfc/e;

    .line 178
    .line 179
    .line 180
    add-int/2addr v2, v1

    .line 181
    goto :goto_6

    .line 182
    :cond_a
    iget-object p1, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 185
    .line 186
    .line 187
    return-object p0

    .line 188
    :cond_b
    instance-of v2, p1, Ljava/util/Collection;

    .line 189
    .line 190
    if-eqz v2, :cond_d

    .line 191
    .line 192
    check-cast p1, Ljava/util/Collection;

    .line 193
    .line 194
    iget-object p2, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 195
    .line 196
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 197
    .line 198
    .line 199
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-eqz p2, :cond_c

    .line 208
    .line 209
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p0, p2, v0}, Lfc/e;->k(Ljava/lang/Object;Z)Lfc/e;

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_c
    iget-object p1, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 220
    .line 221
    .line 222
    return-object p0

    .line 223
    :cond_d
    instance-of v2, p1, Ljava/util/Map;

    .line 224
    .line 225
    if-eqz v2, :cond_f

    .line 226
    .line 227
    check-cast p1, Ljava/util/Map;

    .line 228
    .line 229
    iget-object p2, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 230
    .line 231
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 232
    .line 233
    .line 234
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    if-eqz p2, :cond_e

    .line 247
    .line 248
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    check-cast p2, Ljava/util/Map$Entry;

    .line 253
    .line 254
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    :try_start_0
    move-object v3, v2

    .line 259
    check-cast v3, Ljava/lang/String;

    .line 260
    .line 261
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-virtual {p0, v3, p2}, Lfc/e;->p(Ljava/lang/String;Ljava/lang/Object;)Lfc/e;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .line 267
    .line 268
    goto :goto_8

    .line 269
    :catch_0
    move-exception p1

    .line 270
    new-instance p2, Lcom/google/firebase/encoders/EncodingException;

    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    const/4 v4, 0x2

    .line 277
    new-array v4, v4, [Ljava/lang/Object;

    .line 278
    .line 279
    aput-object v2, v4, v0

    .line 280
    .line 281
    aput-object v3, v4, v1

    .line 282
    .line 283
    const-string v0, "Only String keys are currently supported in maps, got %s of type %s instead."

    .line 284
    .line 285
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-direct {p2, v0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 290
    .line 291
    .line 292
    throw p2

    .line 293
    :cond_e
    iget-object p1, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 296
    .line 297
    .line 298
    return-object p0

    .line 299
    :cond_f
    iget-object v0, p0, Lfc/e;->d:Ljava/util/Map;

    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Ldc/c;

    .line 310
    .line 311
    if-eqz v0, :cond_10

    .line 312
    .line 313
    invoke-virtual {p0, v0, p1, p2}, Lfc/e;->v(Ldc/c;Ljava/lang/Object;Z)Lfc/e;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    return-object p1

    .line 318
    :cond_10
    iget-object v0, p0, Lfc/e;->e:Ljava/util/Map;

    .line 319
    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Ldc/e;

    .line 329
    .line 330
    if-eqz v0, :cond_11

    .line 331
    .line 332
    invoke-interface {v0, p1, p0}, Ldc/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    return-object p0

    .line 336
    :cond_11
    instance-of v0, p1, Ljava/lang/Enum;

    .line 337
    .line 338
    if-eqz v0, :cond_13

    .line 339
    .line 340
    instance-of p2, p1, Lfc/f;

    .line 341
    .line 342
    if-eqz p2, :cond_12

    .line 343
    .line 344
    check-cast p1, Lfc/f;

    .line 345
    .line 346
    invoke-interface {p1}, Lfc/f;->getNumber()I

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    invoke-virtual {p0, p1}, Lfc/e;->i(I)Lfc/e;

    .line 351
    .line 352
    .line 353
    goto :goto_9

    .line 354
    :cond_12
    check-cast p1, Ljava/lang/Enum;

    .line 355
    .line 356
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p0, p1}, Lfc/e;->l(Ljava/lang/String;)Lfc/e;

    .line 361
    .line 362
    .line 363
    :goto_9
    return-object p0

    .line 364
    :cond_13
    iget-object v0, p0, Lfc/e;->f:Ldc/c;

    .line 365
    .line 366
    invoke-virtual {p0, v0, p1, p2}, Lfc/e;->v(Ldc/c;Ljava/lang/Object;Z)Lfc/e;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    return-object p1
.end method

.method public l(Ljava/lang/String;)Lfc/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public m(Ljava/lang/String;D)Lfc/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2, p3}, Lfc/e;->h(D)Lfc/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public n(Ljava/lang/String;I)Lfc/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lfc/e;->i(I)Lfc/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public o(Ljava/lang/String;J)Lfc/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2, p3}, Lfc/e;->j(J)Lfc/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/Object;)Lfc/e;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfc/e;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lfc/e;->x(Ljava/lang/String;Ljava/lang/Object;)Lfc/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lfc/e;->w(Ljava/lang/String;Ljava/lang/Object;)Lfc/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public q(Ljava/lang/String;Z)Lfc/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lfc/e;->r(Z)Lfc/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public r(Z)Lfc/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public s([B)Lfc/e;
    .locals 2

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object p0
.end method

.method u()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfc/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method v(Ldc/c;Ljava/lang/Object;Z)Lfc/e;
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p1, p2, p0}, Ldc/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    if-nez p3, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lfc/e;->c:Landroid/util/JsonWriter;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 16
    .line 17
    .line 18
    :cond_1
    return-object p0
.end method
