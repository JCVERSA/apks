.class Lcom/alibaba/fastjson/JSONPath$l;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# static fields
.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:C

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\'\\s*,\\s*\'"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/alibaba/fastjson/JSONPath$l;->f:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic b(Lcom/alibaba/fastjson/JSONPath$l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$l;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static g(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x2d

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x2b

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x30

    .line 10
    .line 11
    if-lt p0, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x39

    .line 14
    .line 15
    if-gt p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method


# virtual methods
.method a(C)V
    .locals 3

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 11
    .line 12
    if-ne v0, p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "expect \'"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ", but \'"

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, "\'"

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method c(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$a0;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    sub-int/2addr v0, v3

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/16 v5, 0x2c

    .line 17
    .line 18
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/4 v7, -0x1

    .line 27
    const/4 v8, 0x2

    .line 28
    if-le v6, v8, :cond_2

    .line 29
    .line 30
    const/16 v6, 0x27

    .line 31
    .line 32
    if-ne v2, v6, :cond_2

    .line 33
    .line 34
    if-ne v4, v6, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eq v5, v7, :cond_1

    .line 41
    .line 42
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$l;->f:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string p1, "\'\\s*,\\s*\'"

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$r;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$r;-><init>([Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_1
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$v;

    .line 68
    .line 69
    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_2
    const/16 v0, 0x3a

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-ne v5, v7, :cond_5

    .line 80
    .line 81
    if-ne v0, v7, :cond_5

    .line 82
    .line 83
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->v0(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$b;

    .line 94
    .line 95
    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONPath$b;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :catch_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$v;

    .line 100
    .line 101
    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/16 v2, 0x22

    .line 110
    .line 111
    if-ne v0, v2, :cond_4

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    sub-int/2addr v0, v3

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-ne v0, v2, :cond_4

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    sub-int/2addr v0, v3

    .line 129
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$v;

    .line 134
    .line 135
    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    return-object v0

    .line 139
    :cond_5
    if-eq v5, v7, :cond_7

    .line 140
    .line 141
    const-string v0, ","

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    array-length v0, p1

    .line 148
    new-array v0, v0, [I

    .line 149
    .line 150
    :goto_1
    array-length v2, p1

    .line 151
    if-ge v1, v2, :cond_6

    .line 152
    .line 153
    aget-object v2, p1, v1

    .line 154
    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    aput v2, v0, v1

    .line 160
    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$q;

    .line 165
    .line 166
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONPath$q;-><init>([I)V

    .line 167
    .line 168
    .line 169
    return-object p1

    .line 170
    :cond_7
    if-eq v0, v7, :cond_10

    .line 171
    .line 172
    const-string v0, ":"

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    array-length v0, p1

    .line 179
    new-array v2, v0, [I

    .line 180
    .line 181
    move v4, v1

    .line 182
    :goto_2
    array-length v5, p1

    .line 183
    if-ge v4, v5, :cond_a

    .line 184
    .line 185
    aget-object v5, p1, v4

    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-nez v6, :cond_9

    .line 192
    .line 193
    if-nez v4, :cond_8

    .line 194
    .line 195
    aput v1, v2, v4

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 199
    .line 200
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    aput v5, v2, v4

    .line 209
    .line 210
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_a
    aget p1, v2, v1

    .line 214
    .line 215
    if-le v0, v3, :cond_b

    .line 216
    .line 217
    aget v7, v2, v3

    .line 218
    .line 219
    :cond_b
    const/4 v1, 0x3

    .line 220
    if-ne v0, v1, :cond_c

    .line 221
    .line 222
    aget v3, v2, v8

    .line 223
    .line 224
    :cond_c
    if-ltz v7, :cond_e

    .line 225
    .line 226
    if-lt v7, p1, :cond_d

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 230
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v2, "end must greater than or equals start. start "

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string p1, ",  end "

    .line 245
    .line 246
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v0

    .line 260
    :cond_e
    :goto_4
    if-lez v3, :cond_f

    .line 261
    .line 262
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$w;

    .line 263
    .line 264
    invoke-direct {v0, p1, v7, v3}, Lcom/alibaba/fastjson/JSONPath$w;-><init>(III)V

    .line 265
    .line 266
    .line 267
    return-object v0

    .line 268
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 269
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v1, "step must greater than zero : "

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw p1

    .line 291
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 292
    .line 293
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 294
    .line 295
    .line 296
    throw p1
.end method

.method public d()[Lcom/alibaba/fastjson/JSONPath$a0;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$a0;

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->p()Lcom/alibaba/fastjson/JSONPath$a0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    .line 23
    .line 24
    array-length v3, v0

    .line 25
    if-ne v1, v3, :cond_0

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-array v3, v1, [Lcom/alibaba/fastjson/JSONPath$a0;

    .line 29
    .line 30
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_1
    instance-of v3, v1, Lcom/alibaba/fastjson/JSONPath$v;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    move-object v3, v1

    .line 39
    check-cast v3, Lcom/alibaba/fastjson/JSONPath$v;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$v;->b(Lcom/alibaba/fastjson/JSONPath$v;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$v;->c(Lcom/alibaba/fastjson/JSONPath$v;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "*"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    .line 61
    .line 62
    array-length v4, v0

    .line 63
    if-ne v3, v4, :cond_3

    .line 64
    .line 65
    mul-int/lit8 v4, v3, 0x3

    .line 66
    .line 67
    div-int/lit8 v4, v4, 0x2

    .line 68
    .line 69
    new-array v4, v4, [Lcom/alibaba/fastjson/JSONPath$a0;

    .line 70
    .line 71
    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    move-object v0, v4

    .line 75
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    .line 76
    .line 77
    add-int/lit8 v3, v2, 0x1

    .line 78
    .line 79
    iput v3, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    .line 80
    .line 81
    aput-object v1, v0, v2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw v0
.end method

.method e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;
    .locals 5

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x26

    .line 6
    .line 7
    if-ne v0, v3, :cond_0

    .line 8
    .line 9
    move v4, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v4, v2

    .line 12
    :goto_0
    if-ne v0, v3, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->f()C

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eq v0, v3, :cond_2

    .line 19
    .line 20
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 21
    .line 22
    const/16 v3, 0x7c

    .line 23
    .line 24
    if-ne v0, v3, :cond_6

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->f()C

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v3, :cond_6

    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 36
    .line 37
    .line 38
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 39
    .line 40
    const/16 v3, 0x28

    .line 41
    .line 42
    if-ne v0, v3, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move v1, v2

    .line 49
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 50
    .line 51
    const/16 v3, 0x20

    .line 52
    .line 53
    if-ne v0, v3, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->k(Z)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$d;

    .line 64
    .line 65
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$e;

    .line 66
    .line 67
    invoke-direct {v2, p1, v0, v4}, Lcom/alibaba/fastjson/JSONPath$e;-><init>(Lcom/alibaba/fastjson/JSONPath$d;Lcom/alibaba/fastjson/JSONPath$d;Z)V

    .line 68
    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 73
    .line 74
    const/16 v0, 0x29

    .line 75
    .line 76
    if-ne p1, v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 79
    .line 80
    .line 81
    :cond_5
    move-object p1, v2

    .line 82
    :cond_6
    return-object p1
.end method

.method f()C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method h()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 14
    .line 15
    return-void
.end method

.method j(Z)Lcom/alibaba/fastjson/JSONPath$a0;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath$l;->k(Z)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONPath$a0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$a0;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$f;

    .line 13
    .line 14
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$d;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$f;-><init>(Lcom/alibaba/fastjson/JSONPath$d;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method k(Z)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    const/16 v1, 0x5b

    .line 1
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    .line 2
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v2, 0x3f

    const/16 v3, 0x28

    const/4 v5, 0x1

    if-ne v1, v2, :cond_2

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 4
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    move v1, v5

    .line 5
    :goto_0
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v2, v3, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    const/16 v6, 0x22

    const/16 v7, 0x27

    const/16 v8, 0x40

    const/16 v9, 0x2e

    const/16 v10, 0x2f

    const/4 v11, -0x1

    const/4 v12, 0x2

    const/16 v13, 0x5c

    const/16 v14, 0x5d

    if-nez v2, :cond_13

    .line 8
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 9
    invoke-static {v3}, Lcom/alibaba/fastjson/util/f;->g(C)Z

    move-result v3

    if-nez v3, :cond_13

    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 10
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-nez v3, :cond_13

    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-eq v3, v13, :cond_13

    if-ne v3, v8, :cond_3

    goto/16 :goto_a

    .line 11
    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    sub-int/2addr v1, v5

    .line 12
    :goto_2
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-eq v4, v14, :cond_6

    if-eq v4, v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v4

    if-nez v4, :cond_6

    .line 13
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v4, v9, :cond_4

    if-nez v2, :cond_4

    if-nez v2, :cond_4

    if-eq v3, v7, :cond_4

    goto :goto_3

    :cond_4
    if-ne v4, v13, :cond_5

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 15
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    .line 16
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    :goto_4
    sub-int/2addr v4, v5

    goto :goto_6

    .line 17
    :cond_7
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-eq v4, v10, :cond_9

    if-ne v4, v9, :cond_8

    goto :goto_5

    .line 18
    :cond_8
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    goto :goto_6

    .line 19
    :cond_9
    :goto_5
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    goto :goto_4

    .line 20
    :goto_6
    iget-object v9, v0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eqz v4, :cond_d

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v9, 0x0

    .line 23
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_c

    .line 24
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_b

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v14, v16, -0x1

    if-ge v9, v14, :cond_b

    add-int/lit8 v14, v9, 0x1

    .line 26
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v8, :cond_a

    if-eq v10, v13, :cond_a

    if-ne v10, v6, :cond_b

    .line 27
    :cond_a
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v14

    goto :goto_8

    .line 28
    :cond_b
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    add-int/2addr v9, v5

    const/16 v14, 0x5d

    goto :goto_7

    .line 29
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    :cond_d
    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v11, :cond_11

    if-ne v3, v7, :cond_e

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v12, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_e

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 33
    :cond_e
    const-string v3, "\\\\\\."

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    const-string v3, "\\-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v11, :cond_f

    .line 35
    const-string v3, "\\\\-"

    const-string v4, "-"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    const/16 v2, 0x29

    .line 36
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    .line 37
    :cond_10
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$v;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 38
    :cond_11
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->c(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$a0;

    move-result-object v1

    if-eqz p1, :cond_12

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, 0x5d

    .line 40
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_12
    return-object v1

    .line 41
    :cond_13
    :goto_a
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v8, :cond_14

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 43
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    .line 44
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    const/16 v4, 0x7c

    const/16 v8, 0x26

    const/16 v14, 0x20

    if-eqz v2, :cond_19

    .line 46
    iget-char v15, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v12, 0x29

    if-ne v15, v12, :cond_19

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 48
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$s;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson/JSONPath$s;-><init>(Ljava/lang/String;Z)V

    .line 49
    :goto_b
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v2, v14, :cond_15

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_b

    :cond_15
    if-eq v2, v8, :cond_16

    if-ne v2, v4, :cond_17

    .line 51
    :cond_16
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    :cond_17
    if-eqz p1, :cond_18

    const/16 v12, 0x5d

    .line 52
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_18
    return-object v1

    :cond_19
    const/16 v12, 0x5d

    if-eqz p1, :cond_20

    .line 53
    iget-char v15, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v15, v12, :cond_20

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 55
    const-string v1, "last"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 56
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$q;

    filled-new-array {v11}, [I

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPath$q;-><init>([I)V

    return-object v1

    .line 57
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 58
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$s;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/alibaba/fastjson/JSONPath$s;-><init>(Ljava/lang/String;Z)V

    .line 59
    :goto_c
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_1b

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_c

    :cond_1b
    if-eq v3, v8, :cond_1d

    if-ne v3, v4, :cond_1c

    goto :goto_e

    :cond_1c
    :goto_d
    const/16 v3, 0x29

    goto :goto_f

    .line 61
    :cond_1d
    :goto_e
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    goto :goto_d

    .line 62
    :goto_f
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_1e

    .line 63
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_1e
    if-eqz p1, :cond_1f

    const/16 v2, 0x5d

    .line 64
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_1f
    return-object v1

    .line 65
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    .line 66
    iget-char v12, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v15, 0x28

    if-ne v12, v15, :cond_21

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    const/16 v12, 0x29

    .line 68
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    move v12, v5

    goto :goto_10

    :cond_21
    const/4 v12, 0x0

    .line 70
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->o()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v15

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    .line 72
    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v15, v11, :cond_22

    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v11, :cond_23

    :cond_22
    const/4 v7, 0x0

    goto/16 :goto_47

    .line 73
    :cond_23
    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v15, v11, :cond_66

    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v11, :cond_24

    goto/16 :goto_25

    .line 74
    :cond_24
    iget-char v11, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v16, 0x0

    if-eq v11, v7, :cond_51

    if-ne v11, v6, :cond_25

    goto/16 :goto_1c

    .line 75
    :cond_25
    invoke-static {v11}, Lcom/alibaba/fastjson/JSONPath$l;->g(C)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->m()J

    move-result-wide v6

    .line 77
    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const-wide/16 v16, 0x0

    if-ne v10, v9, :cond_26

    .line 78
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/JSONPath$l;->l(J)D

    move-result-wide v9

    move-wide/from16 v21, v9

    goto :goto_11

    :cond_26
    move-wide/from16 v21, v16

    :goto_11
    cmpl-double v9, v21, v16

    if-nez v9, :cond_27

    .line 79
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$k;

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move/from16 v20, v12

    move-wide/from16 v21, v6

    move-object/from16 v23, v15

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$k;-><init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V

    goto :goto_12

    .line 80
    :cond_27
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$c;

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move/from16 v20, v12

    move-object/from16 v23, v15

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Ljava/lang/String;ZDLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 81
    :goto_12
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_28

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_12

    :cond_28
    if-le v1, v5, :cond_29

    const/16 v1, 0x29

    if-ne v3, v1, :cond_29

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 84
    :cond_29
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-eq v1, v8, :cond_2a

    if-ne v1, v4, :cond_2b

    .line 85
    :cond_2a
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v9

    :cond_2b
    if-eqz v2, :cond_2c

    const/16 v1, 0x29

    .line 86
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_2c
    if-eqz p1, :cond_2d

    const/16 v1, 0x5d

    .line 87
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_2d
    return-object v9

    .line 88
    :cond_2e
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v6, 0x24

    if-ne v1, v6, :cond_32

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->p()Lcom/alibaba/fastjson/JSONPath$a0;

    move-result-object v1

    .line 90
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$x;

    invoke-direct {v4, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$x;-><init>(Ljava/lang/String;ZLcom/alibaba/fastjson/JSONPath$a0;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 91
    iput-boolean v5, v0, Lcom/alibaba/fastjson/JSONPath$l;->e:Z

    .line 92
    :goto_13
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_2f

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_13

    :cond_2f
    if-eqz v2, :cond_30

    const/16 v1, 0x29

    .line 94
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_30
    if-eqz p1, :cond_31

    const/16 v1, 0x5d

    .line 95
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_31
    return-object v4

    :cond_32
    if-ne v1, v10, :cond_38

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 98
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v10, :cond_36

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 100
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v4, 0x69

    if-ne v1, v4, :cond_33

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    const/4 v4, 0x2

    goto :goto_15

    :cond_33
    const/4 v4, 0x0

    .line 102
    :goto_15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 103
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$y;

    invoke-direct {v4, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$y;-><init>(Ljava/lang/String;ZLjava/util/regex/Pattern;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    if-eqz v2, :cond_34

    const/16 v1, 0x29

    .line 104
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_34
    if-eqz p1, :cond_35

    const/16 v1, 0x5d

    .line 105
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_35
    return-object v4

    :cond_36
    if-ne v1, v13, :cond_37

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 107
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 108
    :cond_37
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_38
    const/16 v6, 0x6e

    if-ne v1, v6, :cond_40

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string v5, "null"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 111
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_39

    .line 112
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$t;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$t;-><init>(Ljava/lang/String;Z)V

    goto :goto_16

    .line 113
    :cond_39
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_3a

    .line 114
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$s;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$s;-><init>(Ljava/lang/String;Z)V

    goto :goto_16

    :cond_3a
    move-object/from16 v1, v16

    :goto_16
    if-eqz v1, :cond_3d

    .line 115
    :goto_17
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_3b

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_17

    :cond_3b
    if-eq v3, v8, :cond_3c

    if-ne v3, v4, :cond_3d

    .line 117
    :cond_3c
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    :cond_3d
    if-eqz v2, :cond_3e

    const/16 v2, 0x29

    .line 118
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_3e
    const/16 v2, 0x5d

    .line 119
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v1, :cond_3f

    return-object v1

    .line 120
    :cond_3f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_40
    const/16 v6, 0x74

    if-ne v1, v6, :cond_48

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v1

    .line 122
    const-string v6, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 123
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_41

    .line 124
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$f0;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v3, v12, v6, v5}, Lcom/alibaba/fastjson/JSONPath$f0;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_18

    .line 125
    :cond_41
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_42

    .line 126
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$f0;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v12, v5, v6}, Lcom/alibaba/fastjson/JSONPath$f0;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_18

    :cond_42
    move-object/from16 v1, v16

    :goto_18
    if-eqz v1, :cond_45

    .line 127
    :goto_19
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_43

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_19

    :cond_43
    if-eq v3, v8, :cond_44

    if-ne v3, v4, :cond_45

    .line 129
    :cond_44
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    :cond_45
    if-eqz v2, :cond_46

    const/16 v2, 0x29

    .line 130
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_46
    const/16 v2, 0x5d

    .line 131
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v1, :cond_47

    return-object v1

    .line 132
    :cond_47
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_48
    const/16 v6, 0x66

    if-ne v1, v6, :cond_50

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v6, "false"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 135
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_49

    .line 136
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$f0;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v3, v12, v6, v5}, Lcom/alibaba/fastjson/JSONPath$f0;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_1a

    .line 137
    :cond_49
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_4a

    .line 138
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$f0;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v12, v5, v6}, Lcom/alibaba/fastjson/JSONPath$f0;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_1a

    :cond_4a
    move-object/from16 v1, v16

    :goto_1a
    if-eqz v1, :cond_4d

    .line 139
    :goto_1b
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_4b

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_1b

    :cond_4b
    if-eq v3, v8, :cond_4c

    if-ne v3, v4, :cond_4d

    .line 141
    :cond_4c
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    :cond_4d
    if-eqz v2, :cond_4e

    const/16 v2, 0x29

    .line 142
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_4e
    const/16 v2, 0x5d

    .line 143
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v1, :cond_4f

    return-object v1

    .line 144
    :cond_4f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 145
    :cond_50
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 146
    :cond_51
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->q()Ljava/lang/String;

    move-result-object v1

    .line 147
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_52

    .line 148
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$z;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v12, v1, v6}, Lcom/alibaba/fastjson/JSONPath$z;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto/16 :goto_24

    .line 149
    :cond_52
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_53

    .line 150
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$z;

    invoke-direct {v6, v3, v12, v1, v5}, Lcom/alibaba/fastjson/JSONPath$z;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    :goto_1d
    move-object v5, v6

    goto/16 :goto_24

    .line 151
    :cond_53
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v15, v6, :cond_55

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_54

    goto :goto_1e

    .line 152
    :cond_54
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$d0;

    invoke-direct {v5, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$d0;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    goto/16 :goto_24

    .line 153
    :cond_55
    :goto_1e
    const-string v6, "%%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v9, "%"

    const/4 v10, -0x1

    if-eq v7, v10, :cond_56

    .line 154
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 155
    :cond_56
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_57

    move/from16 v24, v5

    goto :goto_1f

    :cond_57
    const/16 v24, 0x0

    :goto_1f
    const/16 v6, 0x25

    .line 156
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v10, :cond_59

    .line 157
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v5, :cond_58

    .line 158
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_20

    .line 159
    :cond_58
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 160
    :goto_20
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$d0;

    invoke-direct {v6, v3, v12, v1, v5}, Lcom/alibaba/fastjson/JSONPath$d0;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    goto :goto_1d

    .line 161
    :cond_59
    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_5c

    .line 162
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_5a

    .line 163
    array-length v1, v9

    sub-int/2addr v1, v5

    new-array v6, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 164
    invoke-static {v9, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v23, v6

    :goto_21
    move-object/from16 v21, v16

    move-object/from16 v22, v21

    goto/16 :goto_23

    :cond_5a
    const/4 v7, 0x0

    .line 165
    array-length v1, v9

    sub-int/2addr v1, v5

    aget-object v1, v9, v1

    .line 166
    array-length v6, v9

    const/4 v10, 0x2

    if-le v6, v10, :cond_5b

    .line 167
    array-length v6, v9

    sub-int/2addr v6, v10

    new-array v10, v6, [Ljava/lang/String;

    .line 168
    invoke-static {v9, v5, v10, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v22, v1

    move-object/from16 v23, v10

    move-object/from16 v21, v16

    goto :goto_23

    :cond_5b
    move-object/from16 v22, v1

    move-object/from16 v21, v16

    move-object/from16 v23, v21

    goto :goto_23

    :cond_5c
    const/4 v7, 0x0

    .line 169
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_5e

    .line 170
    array-length v1, v9

    if-ne v1, v5, :cond_5d

    .line 171
    aget-object v1, v9, v7

    :goto_22
    move-object/from16 v21, v1

    move-object/from16 v22, v16

    move-object/from16 v23, v22

    goto :goto_23

    :cond_5d
    move-object/from16 v23, v9

    goto :goto_21

    .line 172
    :cond_5e
    array-length v1, v9

    if-ne v1, v5, :cond_5f

    .line 173
    aget-object v1, v9, v7

    goto :goto_22

    .line 174
    :cond_5f
    array-length v1, v9

    const/4 v6, 0x2

    if-ne v1, v6, :cond_60

    .line 175
    aget-object v1, v9, v7

    .line 176
    aget-object v5, v9, v5

    move-object/from16 v21, v1

    move-object/from16 v22, v5

    move-object/from16 v23, v16

    goto :goto_23

    .line 177
    :cond_60
    aget-object v1, v9, v7

    .line 178
    array-length v10, v9

    sub-int/2addr v10, v5

    aget-object v10, v9, v10

    .line 179
    array-length v11, v9

    sub-int/2addr v11, v6

    new-array v6, v11, [Ljava/lang/String;

    .line 180
    invoke-static {v9, v5, v6, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v21, v1

    move-object/from16 v23, v6

    move-object/from16 v22, v10

    .line 181
    :goto_23
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$n;

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v20, v12

    invoke-direct/range {v18 .. v24}, Lcom/alibaba/fastjson/JSONPath$n;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object v5, v1

    .line 182
    :goto_24
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_61

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_24

    :cond_61
    if-eq v1, v8, :cond_62

    if-ne v1, v4, :cond_63

    .line 184
    :cond_62
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v5

    :cond_63
    if-eqz v2, :cond_64

    const/16 v1, 0x29

    .line 185
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_64
    if-eqz p1, :cond_65

    const/16 v1, 0x5d

    .line 186
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_65
    return-object v5

    .line 187
    :cond_66
    :goto_25
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_67

    move v1, v5

    :goto_26
    const/16 v6, 0x28

    goto :goto_27

    :cond_67
    const/4 v1, 0x0

    goto :goto_26

    .line 188
    :goto_27
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    .line 189
    new-instance v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->r()Ljava/lang/Object;

    move-result-object v7

    .line 191
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :goto_28
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    .line 193
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v9, 0x2c

    if-eq v7, v9, :cond_96

    .line 194
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v5

    move v10, v9

    move v11, v10

    :cond_68
    :goto_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_69

    if-eqz v9, :cond_68

    const/4 v9, 0x0

    goto :goto_29

    .line 195
    :cond_69
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    if-eqz v9, :cond_6a

    .line 196
    const-class v15, Ljava/lang/Byte;

    if-eq v13, v15, :cond_6a

    const-class v15, Ljava/lang/Short;

    if-eq v13, v15, :cond_6a

    const-class v15, Ljava/lang/Integer;

    if-eq v13, v15, :cond_6a

    const-class v15, Ljava/lang/Long;

    if-eq v13, v15, :cond_6a

    const/4 v9, 0x0

    const/4 v11, 0x0

    :cond_6a
    if-eqz v10, :cond_68

    .line 197
    const-class v15, Ljava/lang/String;

    if-eq v13, v15, :cond_68

    const/4 v10, 0x0

    goto :goto_29

    .line 198
    :cond_6b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_72

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_72

    if-eqz v1, :cond_6c

    .line 199
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$s;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$s;-><init>(Ljava/lang/String;Z)V

    goto :goto_2a

    .line 200
    :cond_6c
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$t;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$t;-><init>(Ljava/lang/String;Z)V

    .line 201
    :goto_2a
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_6d

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_2a

    :cond_6d
    if-eq v3, v8, :cond_6f

    if-ne v3, v4, :cond_6e

    goto :goto_2c

    :cond_6e
    :goto_2b
    const/16 v3, 0x29

    goto :goto_2d

    .line 203
    :cond_6f
    :goto_2c
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    goto :goto_2b

    .line 204
    :goto_2d
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_70

    .line 205
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_70
    if-eqz p1, :cond_71

    const/16 v2, 0x5d

    .line 206
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_71
    return-object v1

    :cond_72
    if-eqz v9, :cond_80

    .line 207
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_79

    const/4 v5, 0x0

    .line 208
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide v21

    if-eqz v1, :cond_73

    .line 209
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    :goto_2e
    move-object/from16 v23, v1

    goto :goto_2f

    :cond_73
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_2e

    .line 210
    :goto_2f
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$k;

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v20, v12

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$k;-><init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 211
    :goto_30
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_74

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_30

    :cond_74
    if-eq v3, v8, :cond_76

    if-ne v3, v4, :cond_75

    goto :goto_32

    :cond_75
    :goto_31
    const/16 v3, 0x29

    goto :goto_33

    .line 213
    :cond_76
    :goto_32
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    goto :goto_31

    .line 214
    :goto_33
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_77

    .line 215
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_77
    if-eqz p1, :cond_78

    const/16 v2, 0x5d

    .line 216
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_78
    return-object v1

    .line 217
    :cond_79
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v7, v5, [J

    const/4 v9, 0x0

    :goto_34
    if-ge v9, v5, :cond_7a

    .line 218
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide v10

    aput-wide v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_34

    .line 219
    :cond_7a
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$i;

    invoke-direct {v5, v3, v12, v7, v1}, Lcom/alibaba/fastjson/JSONPath$i;-><init>(Ljava/lang/String;Z[JZ)V

    .line 220
    :goto_35
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_7b

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_35

    :cond_7b
    if-eq v1, v8, :cond_7d

    if-ne v1, v4, :cond_7c

    goto :goto_37

    :cond_7c
    :goto_36
    const/16 v1, 0x29

    goto :goto_38

    .line 222
    :cond_7d
    :goto_37
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v5

    goto :goto_36

    .line 223
    :goto_38
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_7e

    .line 224
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_7e
    if-eqz p1, :cond_7f

    const/16 v1, 0x5d

    .line 225
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_7f
    return-object v5

    :cond_80
    if-eqz v10, :cond_8d

    .line 226
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_87

    const/4 v7, 0x0

    .line 227
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v1, :cond_81

    .line 228
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_39

    :cond_81
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 229
    :goto_39
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$d0;

    invoke-direct {v6, v3, v12, v5, v1}, Lcom/alibaba/fastjson/JSONPath$d0;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 230
    :goto_3a
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_82

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_3a

    :cond_82
    if-eq v1, v8, :cond_84

    if-ne v1, v4, :cond_83

    goto :goto_3c

    :cond_83
    :goto_3b
    const/16 v1, 0x29

    goto :goto_3d

    .line 232
    :cond_84
    :goto_3c
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v6

    goto :goto_3b

    .line 233
    :goto_3d
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_85

    .line 234
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_85
    if-eqz p1, :cond_86

    const/16 v1, 0x5d

    .line 235
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_86
    return-object v6

    .line 236
    :cond_87
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 237
    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 238
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$c0;

    invoke-direct {v6, v3, v12, v5, v1}, Lcom/alibaba/fastjson/JSONPath$c0;-><init>(Ljava/lang/String;Z[Ljava/lang/String;Z)V

    .line 239
    :goto_3e
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_88

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_3e

    :cond_88
    if-eq v1, v8, :cond_8a

    if-ne v1, v4, :cond_89

    goto :goto_40

    :cond_89
    :goto_3f
    const/16 v1, 0x29

    goto :goto_41

    .line 241
    :cond_8a
    :goto_40
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v6

    goto :goto_3f

    .line 242
    :goto_41
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_8b

    .line 243
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_8b
    if-eqz p1, :cond_8c

    const/16 v1, 0x5d

    .line 244
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_8c
    return-object v6

    :cond_8d
    const/4 v7, 0x0

    if-eqz v11, :cond_95

    .line 245
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v9, v5, [Ljava/lang/Long;

    :goto_42
    if-ge v7, v5, :cond_8f

    .line 246
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    if-eqz v10, :cond_8e

    .line 247
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    :cond_8e
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    .line 248
    :cond_8f
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$j;

    invoke-direct {v5, v3, v12, v9, v1}, Lcom/alibaba/fastjson/JSONPath$j;-><init>(Ljava/lang/String;Z[Ljava/lang/Long;Z)V

    .line 249
    :goto_43
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_90

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_43

    :cond_90
    if-eq v1, v8, :cond_92

    if-ne v1, v4, :cond_91

    goto :goto_45

    :cond_91
    :goto_44
    const/16 v9, 0x29

    goto :goto_46

    .line 251
    :cond_92
    :goto_45
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v5

    goto :goto_44

    .line 252
    :goto_46
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_93

    .line 253
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_93
    if-eqz p1, :cond_94

    const/16 v10, 0x5d

    .line 254
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_94
    return-object v5

    .line 255
    :cond_95
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_96
    const/4 v7, 0x0

    const/16 v9, 0x29

    const/16 v10, 0x5d

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->r()Ljava/lang/Object;

    move-result-object v11

    .line 258
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 259
    :goto_47
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_97

    move/from16 v25, v5

    goto :goto_48

    :cond_97
    move/from16 v25, v7

    .line 260
    :goto_48
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->r()Ljava/lang/Object;

    move-result-object v1

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v2

    .line 262
    const-string v4, "and"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->r()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_99

    if-eqz v2, :cond_99

    .line 264
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->m(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->m(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 265
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$h;

    check-cast v1, Ljava/lang/Number;

    .line 266
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide v21

    check-cast v2, Ljava/lang/Number;

    .line 267
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide v23

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move/from16 v20, v12

    invoke-direct/range {v18 .. v25}, Lcom/alibaba/fastjson/JSONPath$h;-><init>(Ljava/lang/String;ZJJZ)V

    return-object v4

    .line 268
    :cond_98
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_99
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_9a
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected l(J)D
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 6
    .line 7
    .line 8
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 9
    .line 10
    const/16 v2, 0x30

    .line 11
    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    const/16 v2, 0x39

    .line 15
    .line 16
    if-gt v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    long-to-double p1, p1

    .line 37
    add-double/2addr v0, p1

    .line 38
    return-wide v0
.end method

.method protected m()J
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 6
    .line 7
    const/16 v2, 0x2b

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x2d

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 19
    .line 20
    const/16 v2, 0x30

    .line 21
    .line 22
    if-lt v1, v2, :cond_2

    .line 23
    .line 24
    const/16 v2, 0x39

    .line 25
    .line 26
    if-gt v1, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    return-wide v0
.end method

.method n()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    .line 2
    .line 3
    .line 4
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 5
    .line 6
    const/16 v1, 0x5c

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "illeal jsonpath syntax. "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_5

    .line 52
    .line 53
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 54
    .line 55
    if-ne v2, v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 58
    .line 59
    .line 60
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_6

    .line 109
    .line 110
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method

.method protected o()Lcom/alibaba/fastjson/JSONPath$Operator;
    .locals 6

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 2
    .line 3
    const/16 v1, 0x3d

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 8
    .line 9
    .line 10
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 11
    .line 12
    const/16 v2, 0x7e

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->REG_MATCH:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/16 v2, 0x21

    .line 34
    .line 35
    if-ne v0, v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/16 v2, 0x3c

    .line 47
    .line 48
    if-ne v0, v2, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 51
    .line 52
    .line 53
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 54
    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    const/16 v2, 0x3e

    .line 67
    .line 68
    if-ne v0, v2, :cond_7

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 71
    .line 72
    .line 73
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 74
    .line 75
    if-ne v0, v1, :cond_6

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_7
    const/4 v0, 0x0

    .line 87
    :goto_0
    if-nez v0, :cond_12

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "not"

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const-string v2, "between"

    .line 100
    .line 101
    const-string v3, "in"

    .line 102
    .line 103
    const-string v4, "rlike"

    .line 104
    .line 105
    const-string v5, "like"

    .line 106
    .line 107
    if-eqz v1, :cond_c

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_8

    .line 121
    .line 122
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_9

    .line 130
    .line 131
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_a

    .line 139
    .line 140
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_b

    .line 148
    .line 149
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_c
    const-string v1, "nin"

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_d

    .line 165
    .line 166
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_d
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_e

    .line 174
    .line 175
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_e
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_f

    .line 183
    .line 184
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_f
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_10

    .line 192
    .line 193
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_11

    .line 201
    .line 202
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_12
    :goto_1
    return-object v0
.end method

.method p()Lcom/alibaba/fastjson/JSONPath$a0;
    .locals 9

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v1, :cond_3

    .line 14
    .line 15
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 16
    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$l;->g(C)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x30

    .line 26
    .line 27
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$b;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPath$b;-><init>(I)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 34
    .line 35
    const/16 v3, 0x61

    .line 36
    .line 37
    if-lt v0, v3, :cond_1

    .line 38
    .line 39
    const/16 v3, 0x7a

    .line 40
    .line 41
    if-le v0, v3, :cond_2

    .line 42
    .line 43
    :cond_1
    const/16 v3, 0x41

    .line 44
    .line 45
    if-lt v0, v3, :cond_3

    .line 46
    .line 47
    const/16 v3, 0x5a

    .line 48
    .line 49
    if-gt v0, v3, :cond_3

    .line 50
    .line 51
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$v;

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1d

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    .line 68
    .line 69
    .line 70
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 71
    .line 72
    const/16 v3, 0x24

    .line 73
    .line 74
    const/16 v4, 0x3f

    .line 75
    .line 76
    if-ne v0, v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    .line 82
    .line 83
    .line 84
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 85
    .line 86
    if-ne v0, v4, :cond_3

    .line 87
    .line 88
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$f;

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->k(Z)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/alibaba/fastjson/JSONPath$d;

    .line 95
    .line 96
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$f;-><init>(Lcom/alibaba/fastjson/JSONPath$d;)V

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_4
    const-string v3, "not support jsonpath : "

    .line 101
    .line 102
    const/16 v5, 0x5b

    .line 103
    .line 104
    const/16 v6, 0x2e

    .line 105
    .line 106
    if-eq v0, v6, :cond_9

    .line 107
    .line 108
    const/16 v7, 0x2f

    .line 109
    .line 110
    if-ne v0, v7, :cond_5

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    if-ne v0, v5, :cond_6

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->j(Z)Lcom/alibaba/fastjson/JSONPath$a0;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0

    .line 120
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    .line 121
    .line 122
    if-nez v1, :cond_7

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$v;

    .line 129
    .line 130
    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_7
    if-ne v0, v4, :cond_8

    .line 135
    .line 136
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$f;

    .line 137
    .line 138
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->k(Z)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lcom/alibaba/fastjson/JSONPath$d;

    .line 143
    .line 144
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$f;-><init>(Lcom/alibaba/fastjson/JSONPath$d;)V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 172
    .line 173
    .line 174
    const/16 v4, 0x2a

    .line 175
    .line 176
    if-ne v0, v6, :cond_b

    .line 177
    .line 178
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 179
    .line 180
    if-ne v0, v6, :cond_b

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 192
    .line 193
    add-int/lit8 v8, v7, 0x3

    .line 194
    .line 195
    if-le v0, v8, :cond_a

    .line 196
    .line 197
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 198
    .line 199
    if-ne v0, v5, :cond_a

    .line 200
    .line 201
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-ne v0, v4, :cond_a

    .line 208
    .line 209
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 210
    .line 211
    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 212
    .line 213
    add-int/2addr v7, v1

    .line 214
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    const/16 v7, 0x5d

    .line 219
    .line 220
    if-ne v0, v7, :cond_a

    .line 221
    .line 222
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 223
    .line 224
    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 225
    .line 226
    add-int/lit8 v7, v7, 0x2

    .line 227
    .line 228
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-ne v0, v6, :cond_a

    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 244
    .line 245
    .line 246
    :cond_a
    move v0, v1

    .line 247
    goto :goto_1

    .line 248
    :cond_b
    move v0, v2

    .line 249
    :goto_1
    iget-char v6, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 250
    .line 251
    if-eq v6, v4, :cond_18

    .line 252
    .line 253
    if-eqz v0, :cond_c

    .line 254
    .line 255
    if-ne v6, v5, :cond_c

    .line 256
    .line 257
    goto/16 :goto_3

    .line 258
    .line 259
    :cond_c
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath$l;->g(C)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_d

    .line 264
    .line 265
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->j(Z)Lcom/alibaba/fastjson/JSONPath$a0;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    return-object v0

    .line 270
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 275
    .line 276
    const/16 v4, 0x28

    .line 277
    .line 278
    if-ne v2, v4, :cond_17

    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 281
    .line 282
    .line 283
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 284
    .line 285
    const/16 v2, 0x29

    .line 286
    .line 287
    if-ne v0, v2, :cond_16

    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_e

    .line 294
    .line 295
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 296
    .line 297
    .line 298
    :cond_e
    const-string v0, "size"

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_15

    .line 305
    .line 306
    const-string v0, "length"

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_f

    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_f
    const-string v0, "max"

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_10

    .line 322
    .line 323
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$o;->a:Lcom/alibaba/fastjson/JSONPath$o;

    .line 324
    .line 325
    return-object v0

    .line 326
    :cond_10
    const-string v0, "min"

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_11

    .line 333
    .line 334
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$p;->a:Lcom/alibaba/fastjson/JSONPath$p;

    .line 335
    .line 336
    return-object v0

    .line 337
    :cond_11
    const-string v0, "keySet"

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_12

    .line 344
    .line 345
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$m;->a:Lcom/alibaba/fastjson/JSONPath$m;

    .line 346
    .line 347
    return-object v0

    .line 348
    :cond_12
    const-string v0, "type"

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-eqz v0, :cond_13

    .line 355
    .line 356
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$e0;->a:Lcom/alibaba/fastjson/JSONPath$e0;

    .line 357
    .line 358
    return-object v0

    .line 359
    :cond_13
    const-string v0, "floor"

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_14

    .line 366
    .line 367
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$g;->a:Lcom/alibaba/fastjson/JSONPath$g;

    .line 368
    .line 369
    return-object v0

    .line 370
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 371
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v0

    .line 393
    :cond_15
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$b0;->a:Lcom/alibaba/fastjson/JSONPath$b0;

    .line 394
    .line 395
    return-object v0

    .line 396
    :cond_16
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 397
    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    throw v0

    .line 419
    :cond_17
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$v;

    .line 420
    .line 421
    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    .line 422
    .line 423
    .line 424
    return-object v2

    .line 425
    :cond_18
    :goto_3
    if-ne v6, v5, :cond_19

    .line 426
    .line 427
    goto :goto_4

    .line 428
    :cond_19
    move v1, v2

    .line 429
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    if-nez v2, :cond_1a

    .line 434
    .line 435
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 436
    .line 437
    .line 438
    :cond_1a
    if-eqz v0, :cond_1c

    .line 439
    .line 440
    if-eqz v1, :cond_1b

    .line 441
    .line 442
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->e:Lcom/alibaba/fastjson/JSONPath$g0;

    .line 443
    .line 444
    return-object v0

    .line 445
    :cond_1b
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->d:Lcom/alibaba/fastjson/JSONPath$g0;

    .line 446
    .line 447
    return-object v0

    .line 448
    :cond_1c
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->c:Lcom/alibaba/fastjson/JSONPath$g0;

    .line 449
    .line 450
    return-object v0

    .line 451
    :cond_1d
    const/4 v0, 0x0

    .line 452
    return-object v0
.end method

.method q()Ljava/lang/String;
    .locals 4

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 11
    .line 12
    if-eq v2, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    .line 36
    .line 37
    add-int/lit8 v3, v3, -0x1

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method protected r()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    .line 2
    .line 3
    .line 4
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 5
    .line 6
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$l;->g(C)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->m()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 22
    .line 23
    const/16 v1, 0x22

    .line 24
    .line 25
    if-eq v0, v1, :cond_4

    .line 26
    .line 27
    const/16 v1, 0x27

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v1, 0x6e

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "null"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    return-object v0

    .line 50
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->q()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public final s()V
    .locals 2

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0xd

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x9

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/16 v1, 0xc

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method
