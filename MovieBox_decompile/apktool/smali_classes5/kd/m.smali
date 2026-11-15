.class public Lkd/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkd/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkd/m$b;
    }
.end annotation


# instance fields
.field private final a:[I

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lkd/m;->b:I

    .line 5
    .line 6
    new-instance v0, Lkd/g;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lkd/g;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkd/g;->g()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne p2, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    new-array p2, p2, [I

    .line 23
    .line 24
    iput-object p2, p0, Lkd/m;->a:[I

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    :goto_0
    iget-object v0, p0, Lkd/m;->a:[I

    .line 28
    .line 29
    array-length v0, v0

    .line 30
    if-ge p2, v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lkd/m;->a:[I

    .line 37
    .line 38
    if-ne v0, p3, :cond_0

    .line 39
    .line 40
    const/16 v0, 0x3e8

    .line 41
    .line 42
    :cond_0
    aput v0, v1, p2

    .line 43
    .line 44
    add-int/lit8 p2, p2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {p1, v0, p3}, Lkd/m;->e(Ljava/lang/String;Lkd/g;I)[I

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lkd/m;->a:[I

    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method static c([[Lkd/m$b;ILkd/m$b;)V
    .locals 2

    .line 1
    aget-object v0, p0, p1

    .line 2
    .line 3
    invoke-static {p2}, Lkd/m$b;->a(Lkd/m$b;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    aget-object v0, p0, p1

    .line 12
    .line 13
    invoke-static {p2}, Lkd/m$b;->a(Lkd/m$b;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    invoke-static {v0}, Lkd/m$b;->b(Lkd/m$b;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p2}, Lkd/m$b;->b(Lkd/m$b;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    aget-object p0, p0, p1

    .line 30
    .line 31
    invoke-static {p2}, Lkd/m$b;->a(Lkd/m$b;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    aput-object p2, p0, p1

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method static d(Ljava/lang/String;Lkd/g;[[Lkd/m$b;ILkd/m$b;I)V
    .locals 15

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move/from16 v8, p3

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move/from16 v9, p5

    .line 7
    .line 8
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v10

    .line 12
    invoke-virtual/range {p1 .. p1}, Lkd/g;->g()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual/range {p1 .. p1}, Lkd/g;->f()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    if-eq v10, v9, :cond_0

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lkd/g;->f()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v7, v10, v1}, Lkd/g;->a(CI)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lkd/g;->f()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v1, v0, 0x1

    .line 39
    .line 40
    move v11, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    move v11, v0

    .line 44
    move v0, v1

    .line 45
    :goto_0
    move v12, v0

    .line 46
    :goto_1
    if-ge v12, v11, :cond_4

    .line 47
    .line 48
    if-eq v10, v9, :cond_3

    .line 49
    .line 50
    invoke-virtual {v7, v10, v12}, Lkd/g;->a(CI)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move-object/from16 v0, p2

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_2
    add-int/lit8 v13, v8, 0x1

    .line 61
    .line 62
    new-instance v14, Lkd/m$b;

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    move-object v0, v14

    .line 66
    move v1, v10

    .line 67
    move-object/from16 v2, p1

    .line 68
    .line 69
    move v3, v12

    .line 70
    move-object/from16 v4, p4

    .line 71
    .line 72
    move/from16 v5, p5

    .line 73
    .line 74
    invoke-direct/range {v0 .. v6}, Lkd/m$b;-><init>(CLkd/g;ILkd/m$b;ILkd/m$a;)V

    .line 75
    .line 76
    .line 77
    move-object/from16 v0, p2

    .line 78
    .line 79
    invoke-static {v0, v13, v14}, Lkd/m;->c([[Lkd/m$b;ILkd/m$b;)V

    .line 80
    .line 81
    .line 82
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    return-void
.end method

.method static e(Ljava/lang/String;Lkd/g;I)[I
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p1}, Lkd/g;->g()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v3, v3, [I

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aput v2, v3, v4

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput v1, v3, v2

    .line 19
    .line 20
    const-class v1, Lkd/m$b;

    .line 21
    .line 22
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, [[Lkd/m$b;

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    move-object v5, p0

    .line 31
    move-object v6, p1

    .line 32
    move-object v7, v1

    .line 33
    move v10, p2

    .line 34
    invoke-static/range {v5 .. v10}, Lkd/m;->d(Ljava/lang/String;Lkd/g;[[Lkd/m$b;ILkd/m$b;I)V

    .line 35
    .line 36
    .line 37
    move v3, v4

    .line 38
    :goto_0
    if-gt v3, v0, :cond_3

    .line 39
    .line 40
    move v11, v2

    .line 41
    :goto_1
    invoke-virtual {p1}, Lkd/g;->g()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-ge v11, v5, :cond_1

    .line 46
    .line 47
    aget-object v5, v1, v3

    .line 48
    .line 49
    aget-object v9, v5, v11

    .line 50
    .line 51
    if-eqz v9, :cond_0

    .line 52
    .line 53
    if-ge v3, v0, :cond_0

    .line 54
    .line 55
    move-object v5, p0

    .line 56
    move-object v6, p1

    .line 57
    move-object v7, v1

    .line 58
    move v8, v3

    .line 59
    move v10, p2

    .line 60
    invoke-static/range {v5 .. v10}, Lkd/m;->d(Ljava/lang/String;Lkd/g;[[Lkd/m$b;ILkd/m$b;I)V

    .line 61
    .line 62
    .line 63
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v5, v2

    .line 67
    :goto_2
    invoke-virtual {p1}, Lkd/g;->g()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-ge v5, v6, :cond_2

    .line 72
    .line 73
    add-int/lit8 v6, v3, -0x1

    .line 74
    .line 75
    aget-object v6, v1, v6

    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    aput-object v7, v6, v5

    .line 79
    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 p2, -0x1

    .line 87
    const v3, 0x7fffffff

    .line 88
    .line 89
    .line 90
    move v5, v2

    .line 91
    :goto_3
    invoke-virtual {p1}, Lkd/g;->g()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-ge v5, v6, :cond_5

    .line 96
    .line 97
    aget-object v6, v1, v0

    .line 98
    .line 99
    aget-object v6, v6, v5

    .line 100
    .line 101
    if-eqz v6, :cond_4

    .line 102
    .line 103
    invoke-static {v6}, Lkd/m$b;->b(Lkd/m$b;)I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-ge v7, v3, :cond_4

    .line 108
    .line 109
    invoke-static {v6}, Lkd/m$b;->b(Lkd/m$b;)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    move v3, p2

    .line 114
    move p2, v5

    .line 115
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    if-ltz p2, :cond_c

    .line 119
    .line 120
    new-instance p0, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    aget-object v0, v1, v0

    .line 126
    .line 127
    aget-object p2, v0, p2

    .line 128
    .line 129
    :goto_4
    if-eqz p2, :cond_a

    .line 130
    .line 131
    invoke-virtual {p2}, Lkd/m$b;->e()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    const/16 v0, 0x3e8

    .line 138
    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_6
    invoke-static {p2}, Lkd/m$b;->c(Lkd/m$b;)C

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-static {p2}, Lkd/m$b;->a(Lkd/m$b;)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {p1, v0, v1}, Lkd/g;->b(CI)[B

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    array-length v1, v0

    .line 160
    sub-int/2addr v1, v4

    .line 161
    :goto_5
    if-ltz v1, :cond_7

    .line 162
    .line 163
    aget-byte v3, v0, v1

    .line 164
    .line 165
    and-int/lit16 v3, v3, 0xff

    .line 166
    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-interface {p0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    add-int/lit8 v1, v1, -0x1

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_7
    :goto_6
    invoke-static {p2}, Lkd/m$b;->d(Lkd/m$b;)Lkd/m$b;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-nez v0, :cond_8

    .line 182
    .line 183
    move v0, v2

    .line 184
    goto :goto_7

    .line 185
    :cond_8
    invoke-static {p2}, Lkd/m$b;->d(Lkd/m$b;)Lkd/m$b;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v0}, Lkd/m$b;->a(Lkd/m$b;)I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    :goto_7
    invoke-static {p2}, Lkd/m$b;->a(Lkd/m$b;)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eq v0, v1, :cond_9

    .line 198
    .line 199
    invoke-static {p2}, Lkd/m$b;->a(Lkd/m$b;)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-virtual {p1, v0}, Lkd/g;->e(I)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    add-int/lit16 v0, v0, 0x100

    .line 208
    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_9
    invoke-static {p2}, Lkd/m$b;->d(Lkd/m$b;)Lkd/m$b;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    goto :goto_4

    .line 221
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    new-array p2, p1, [I

    .line 226
    .line 227
    :goto_8
    if-ge v2, p1, :cond_b

    .line 228
    .line 229
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Ljava/lang/Integer;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    aput v0, p2, v2

    .line 240
    .line 241
    add-int/lit8 v2, v2, 0x1

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_b
    return-object p2

    .line 245
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 246
    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string v0, "Failed to encode \""

    .line 253
    .line 254
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string p0, "\""

    .line 261
    .line 262
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw p1
.end method


# virtual methods
.method public a(I)Z
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lkd/m;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lkd/m;->a:[I

    .line 10
    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    const/16 v0, 0xff

    .line 14
    .line 15
    if-le p1, v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x3e7

    .line 18
    .line 19
    if-gt p1, v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public b(I)I
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lkd/m;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lkd/m;->a(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lkd/m;->a:[I

    .line 16
    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    add-int/lit16 p1, p1, -0x100

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "value at "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " is not an ECI but a character"

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, ""

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public charAt(I)C
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lkd/m;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lkd/m;->a(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lkd/m;->h(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget p1, p0, Lkd/m;->b:I

    .line 22
    .line 23
    :goto_0
    int-to-char p1, p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, p0, Lkd/m;->a:[I

    .line 26
    .line 27
    aget p1, v0, p1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return p1

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "value at "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " is not a character but an ECI"

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, ""

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lkd/m;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public g(II)Z
    .locals 4

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lkd/m;->a:[I

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    const/4 v3, 0x0

    .line 9
    if-lt v0, v2, :cond_0

    .line 10
    .line 11
    return v3

    .line 12
    :cond_0
    move v0, v3

    .line 13
    :goto_0
    if-ge v0, p2, :cond_2

    .line 14
    .line 15
    add-int v2, p1, v0

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lkd/m;->a(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    return v3

    .line 24
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return v1
.end method

.method public h(I)Z
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lkd/m;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lkd/m;->a:[I

    .line 10
    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    const/16 v0, 0x3e8

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkd/m;->a:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    if-gt p1, p2, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lkd/m;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gt p2, v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    :goto_0
    if-ge p1, p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lkd/m;->a(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lkd/m;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "value at "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, " is not a character but an ECI"

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_1
    return-object v0

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, ""

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lkd/m;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    const-string v2, ", "

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v1}, Lkd/m;->a(I)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const-string v2, "ECI("

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lkd/m;->b(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x29

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p0, v1}, Lkd/m;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/16 v3, 0x80

    .line 49
    .line 50
    if-ge v2, v3, :cond_2

    .line 51
    .line 52
    const/16 v2, 0x27

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lkd/m;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0, v1}, Lkd/m;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method
