.class public Ldz/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcz/a;


# static fields
.field private static final w:[Ldz/a;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Z

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:B

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Z

.field private r:J

.field private s:Z

.field private t:Z

.field private final u:Ljava/io/File;

.field private final v:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ldz/a;

    .line 3
    .line 4
    sput-object v0, Ldz/a;->w:[Ldz/a;

    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Ldz/a;->a:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Ldz/a;->d:J

    .line 4
    iput-wide v1, p0, Ldz/a;->e:J

    .line 5
    iput-wide v1, p0, Ldz/a;->f:J

    .line 6
    iput-object v0, p0, Ldz/a;->j:Ljava/lang/String;

    .line 7
    const-string v1, "ustar\u0000"

    iput-object v1, p0, Ldz/a;->k:Ljava/lang/String;

    .line 8
    const-string v1, "00"

    iput-object v1, p0, Ldz/a;->l:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Ldz/a;->n:Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Ldz/a;->o:I

    .line 11
    iput v1, p0, Ldz/a;->p:I

    .line 12
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ldz/a;->v:Ljava/util/Map;

    .line 13
    const-string v2, "user.name"

    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    .line 15
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_0
    iput-object v0, p0, Ldz/a;->m:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Ldz/a;->u:Ljava/io/File;

    .line 18
    iput-boolean p1, p0, Ldz/a;->b:Z

    return-void
.end method

.method public constructor <init>([BLorg/apache/commons/compress/archivers/zip/r;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Ldz/a;-><init>(Z)V

    .line 20
    invoke-direct {p0, p1, p2, v0, p3}, Ldz/a;->q([BLorg/apache/commons/compress/archivers/zip/r;ZZ)V

    return-void
.end method

.method private b([B)I
    .locals 3

    .line 1
    const-string v0, "ustar "

    .line 2
    .line 3
    const/16 v1, 0x101

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    invoke-static {v0, p1, v1, v2}, Lez/a;->c(Ljava/lang/String;[BII)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    return p1

    .line 14
    :cond_0
    const-string v0, "ustar\u0000"

    .line 15
    .line 16
    invoke-static {v0, p1, v1, v2}, Lez/a;->c(Ljava/lang/String;[BII)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const-string v0, "tar\u0000"

    .line 23
    .line 24
    const/16 v1, 0x1fc

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-static {v0, p1, v1, v2}, Lez/a;->c(Ljava/lang/String;[BII)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    const/4 p1, 0x3

    .line 35
    return p1

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private static o(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_3

    .line 3
    .line 4
    const-string v1, "os.name"

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    const-string v2, "windows"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v3, 0x3a

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x2

    .line 33
    if-le v1, v2, :cond_3

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-ne v4, v3, :cond_3

    .line 45
    .line 46
    const/16 v3, 0x61

    .line 47
    .line 48
    if-lt v1, v3, :cond_0

    .line 49
    .line 50
    const/16 v3, 0x7a

    .line 51
    .line 52
    if-le v1, v3, :cond_1

    .line 53
    .line 54
    :cond_0
    const/16 v3, 0x41

    .line 55
    .line 56
    if-lt v1, v3, :cond_3

    .line 57
    .line 58
    const/16 v3, 0x5a

    .line 59
    .line 60
    if-gt v1, v3, :cond_3

    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string v2, "netware"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/4 v2, -0x1

    .line 80
    if-eq v1, v2, :cond_3

    .line 81
    .line 82
    add-int/2addr v1, v0

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :cond_3
    :goto_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 88
    .line 89
    const/16 v2, 0x2f

    .line 90
    .line 91
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :goto_1
    if-nez p1, :cond_4

    .line 96
    .line 97
    const-string v1, "/"

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    return-object p0
.end method

.method private p([BIIZ)J
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1, p2, p3}, Ldz/d;->h([BII)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-wide p1

    .line 8
    :catch_0
    const-wide/16 p1, -0x1

    .line 9
    .line 10
    return-wide p1

    .line 11
    :cond_0
    invoke-static {p1, p2, p3}, Ldz/d;->h([BII)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    return-wide p1
.end method

.method private q([BLorg/apache/commons/compress/archivers/zip/r;ZZ)V
    .locals 6

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    invoke-static {p1, v1, v0}, Ldz/d;->e([BII)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1, v1, v0, p2}, Ldz/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    iput-object v1, p0, Ldz/a;->a:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-direct {p0, p1, v0, v1, p4}, Ldz/a;->p([BIIZ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    long-to-int v2, v2

    .line 24
    iput v2, p0, Ldz/a;->c:I

    .line 25
    .line 26
    const/16 v2, 0x6c

    .line 27
    .line 28
    invoke-direct {p0, p1, v2, v1, p4}, Ldz/a;->p([BIIZ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    long-to-int v2, v2

    .line 33
    int-to-long v2, v2

    .line 34
    iput-wide v2, p0, Ldz/a;->d:J

    .line 35
    .line 36
    const/16 v2, 0x74

    .line 37
    .line 38
    invoke-direct {p0, p1, v2, v1, p4}, Ldz/a;->p([BIIZ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    long-to-int v2, v2

    .line 43
    int-to-long v2, v2

    .line 44
    iput-wide v2, p0, Ldz/a;->e:J

    .line 45
    .line 46
    const/16 v2, 0x7c

    .line 47
    .line 48
    const/16 v3, 0xc

    .line 49
    .line 50
    invoke-static {p1, v2, v3}, Ldz/d;->h([BII)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    iput-wide v4, p0, Ldz/a;->f:J

    .line 55
    .line 56
    const/16 v2, 0x88

    .line 57
    .line 58
    invoke-direct {p0, p1, v2, v3, p4}, Ldz/a;->p([BIIZ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    iput-wide v4, p0, Ldz/a;->g:J

    .line 63
    .line 64
    invoke-static {p1}, Ldz/d;->i([B)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput-boolean v2, p0, Ldz/a;->h:Z

    .line 69
    .line 70
    const/16 v2, 0x9c

    .line 71
    .line 72
    aget-byte v2, p1, v2

    .line 73
    .line 74
    iput-byte v2, p0, Ldz/a;->i:B

    .line 75
    .line 76
    const/16 v2, 0x9d

    .line 77
    .line 78
    if-eqz p3, :cond_1

    .line 79
    .line 80
    invoke-static {p1, v2, v0}, Ldz/d;->e([BII)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-static {p1, v2, v0, p2}, Ldz/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :goto_1
    iput-object v0, p0, Ldz/a;->j:Ljava/lang/String;

    .line 90
    .line 91
    const/16 v0, 0x101

    .line 92
    .line 93
    const/4 v2, 0x6

    .line 94
    invoke-static {p1, v0, v2}, Ldz/d;->e([BII)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Ldz/a;->k:Ljava/lang/String;

    .line 99
    .line 100
    const/16 v0, 0x107

    .line 101
    .line 102
    const/4 v2, 0x2

    .line 103
    invoke-static {p1, v0, v2}, Ldz/d;->e([BII)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Ldz/a;->l:Ljava/lang/String;

    .line 108
    .line 109
    const/16 v0, 0x20

    .line 110
    .line 111
    const/16 v4, 0x109

    .line 112
    .line 113
    if-eqz p3, :cond_2

    .line 114
    .line 115
    invoke-static {p1, v4, v0}, Ldz/d;->e([BII)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    invoke-static {p1, v4, v0, p2}, Ldz/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    :goto_2
    iput-object v4, p0, Ldz/a;->m:Ljava/lang/String;

    .line 125
    .line 126
    const/16 v4, 0x129

    .line 127
    .line 128
    if-eqz p3, :cond_3

    .line 129
    .line 130
    invoke-static {p1, v4, v0}, Ldz/d;->e([BII)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    goto :goto_3

    .line 135
    :cond_3
    invoke-static {p1, v4, v0, p2}, Ldz/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_3
    iput-object v0, p0, Ldz/a;->n:Ljava/lang/String;

    .line 140
    .line 141
    iget-byte v0, p0, Ldz/a;->i:B

    .line 142
    .line 143
    const/16 v4, 0x33

    .line 144
    .line 145
    if-eq v0, v4, :cond_4

    .line 146
    .line 147
    const/16 v4, 0x34

    .line 148
    .line 149
    if-ne v0, v4, :cond_5

    .line 150
    .line 151
    :cond_4
    const/16 v0, 0x149

    .line 152
    .line 153
    invoke-direct {p0, p1, v0, v1, p4}, Ldz/a;->p([BIIZ)J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    long-to-int v0, v4

    .line 158
    iput v0, p0, Ldz/a;->o:I

    .line 159
    .line 160
    const/16 v0, 0x151

    .line 161
    .line 162
    invoke-direct {p0, p1, v0, v1, p4}, Ldz/a;->p([BIIZ)J

    .line 163
    .line 164
    .line 165
    move-result-wide v0

    .line 166
    long-to-int p4, v0

    .line 167
    iput p4, p0, Ldz/a;->p:I

    .line 168
    .line 169
    :cond_5
    invoke-direct {p0, p1}, Ldz/a;->b([B)I

    .line 170
    .line 171
    .line 172
    move-result p4

    .line 173
    if-eq p4, v2, :cond_a

    .line 174
    .line 175
    const/4 v0, 0x4

    .line 176
    const-string v1, "/"

    .line 177
    .line 178
    const/16 v2, 0x159

    .line 179
    .line 180
    if-eq p4, v0, :cond_8

    .line 181
    .line 182
    const/16 p4, 0x9b

    .line 183
    .line 184
    if-eqz p3, :cond_6

    .line 185
    .line 186
    invoke-static {p1, v2, p4}, Ldz/d;->e([BII)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    goto :goto_4

    .line 191
    :cond_6
    invoke-static {p1, v2, p4, p2}, Ldz/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    :goto_4
    invoke-virtual {p0}, Ldz/a;->h()Z

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    if-eqz p2, :cond_7

    .line 200
    .line 201
    iget-object p2, p0, Ldz/a;->a:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-nez p2, :cond_7

    .line 208
    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-object p3, p0, Ldz/a;->a:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    iput-object p2, p0, Ldz/a;->a:Ljava/lang/String;

    .line 227
    .line 228
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-lez p2, :cond_b

    .line 233
    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Ldz/a;->a:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iput-object p1, p0, Ldz/a;->a:Ljava/lang/String;

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_8
    const/16 p4, 0x83

    .line 258
    .line 259
    if-eqz p3, :cond_9

    .line 260
    .line 261
    invoke-static {p1, v2, p4}, Ldz/d;->e([BII)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    goto :goto_5

    .line 266
    :cond_9
    invoke-static {p1, v2, p4, p2}, Ldz/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 271
    .line 272
    .line 273
    move-result p2

    .line 274
    if-lez p2, :cond_b

    .line 275
    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Ldz/a;->a:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    iput-object p1, p0, Ldz/a;->a:Ljava/lang/String;

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_a
    const/16 p2, 0x1e2

    .line 300
    .line 301
    invoke-static {p1, p2}, Ldz/d;->d([BI)Z

    .line 302
    .line 303
    .line 304
    move-result p2

    .line 305
    iput-boolean p2, p0, Ldz/a;->q:Z

    .line 306
    .line 307
    const/16 p2, 0x1e3

    .line 308
    .line 309
    invoke-static {p1, p2, v3}, Ldz/d;->g([BII)J

    .line 310
    .line 311
    .line 312
    move-result-wide p1

    .line 313
    iput-wide p1, p0, Ldz/a;->r:J

    .line 314
    .line 315
    :cond_b
    :goto_6
    return-void
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sparse-switch v1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :sswitch_0
    const-string v1, "linkpath"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    const/16 v0, 0xc

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :sswitch_1
    const-string v1, "SCHILY.filetype"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_1
    const/16 v0, 0xb

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :sswitch_2
    const-string v1, "uname"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_2
    const/16 v0, 0xa

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :sswitch_3
    const-string v1, "mtime"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_3
    const/16 v0, 0x9

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :sswitch_4
    const-string v1, "gname"

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_4

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_4
    const/16 v0, 0x8

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :sswitch_5
    const-string v1, "size"

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const/4 v0, 0x7

    .line 94
    goto :goto_0

    .line 95
    :sswitch_6
    const-string v1, "path"

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    const/4 v0, 0x6

    .line 105
    goto :goto_0

    .line 106
    :sswitch_7
    const-string v1, "uid"

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_7

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    const/4 v0, 0x5

    .line 116
    goto :goto_0

    .line 117
    :sswitch_8
    const-string v1, "gid"

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_8

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_8
    const/4 v0, 0x4

    .line 127
    goto :goto_0

    .line 128
    :sswitch_9
    const-string v1, "GNU.sparse.size"

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_9

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_9
    const/4 v0, 0x3

    .line 138
    goto :goto_0

    .line 139
    :sswitch_a
    const-string v1, "GNU.sparse.realsize"

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_a

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_a
    const/4 v0, 0x2

    .line 149
    goto :goto_0

    .line 150
    :sswitch_b
    const-string v1, "SCHILY.devminor"

    .line 151
    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_b

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_b
    const/4 v0, 0x1

    .line 160
    goto :goto_0

    .line 161
    :sswitch_c
    const-string v1, "SCHILY.devmajor"

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_c

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_c
    const/4 v0, 0x0

    .line 171
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 172
    .line 173
    .line 174
    iget-object p3, p0, Ldz/a;->v:Ljava/util/Map;

    .line 175
    .line 176
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :pswitch_0
    invoke-virtual {p0, p2}, Ldz/a;->w(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :pswitch_1
    const-string p1, "sparse"

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_d

    .line 191
    .line 192
    invoke-virtual {p0, p3}, Ldz/a;->e(Ljava/util/Map;)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :pswitch_2
    invoke-virtual {p0, p2}, Ldz/a;->B(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :pswitch_3
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 201
    .line 202
    .line 203
    move-result-wide p1

    .line 204
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    mul-double/2addr p1, v0

    .line 210
    double-to-long p1, p1

    .line 211
    invoke-virtual {p0, p1, p2}, Ldz/a;->x(J)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :pswitch_4
    invoke-virtual {p0, p2}, Ldz/a;->v(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :pswitch_5
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 220
    .line 221
    .line 222
    move-result-wide p1

    .line 223
    invoke-virtual {p0, p1, p2}, Ldz/a;->z(J)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :pswitch_6
    invoke-virtual {p0, p2}, Ldz/a;->y(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :pswitch_7
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 232
    .line 233
    .line 234
    move-result-wide p1

    .line 235
    invoke-virtual {p0, p1, p2}, Ldz/a;->A(J)V

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :pswitch_8
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 240
    .line 241
    .line 242
    move-result-wide p1

    .line 243
    invoke-virtual {p0, p1, p2}, Ldz/a;->u(J)V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :pswitch_9
    invoke-virtual {p0, p3}, Ldz/a;->c(Ljava/util/Map;)V

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :pswitch_a
    invoke-virtual {p0, p3}, Ldz/a;->d(Ljava/util/Map;)V

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :pswitch_b
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    invoke-virtual {p0, p1}, Ldz/a;->t(I)V

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :pswitch_c
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    invoke-virtual {p0, p1}, Ldz/a;->s(I)V

    .line 268
    .line 269
    .line 270
    :cond_d
    :goto_1
    return-void

    .line 271
    :sswitch_data_0
    .sparse-switch
        -0x7240fdec -> :sswitch_c
        -0x723d4bf0 -> :sswitch_b
        -0x108a42f3 -> :sswitch_a
        -0x98f3691 -> :sswitch_9
        0x18fc2 -> :sswitch_8
        0x1c450 -> :sswitch_7
        0x346425 -> :sswitch_6
        0x35e001 -> :sswitch_5
        0x5deef72 -> :sswitch_4
        0x63654ba -> :sswitch_3
        0x6a43880 -> :sswitch_2
        0x1fa1f206 -> :sswitch_1
        0x473a871f -> :sswitch_0
    .end sparse-switch

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ldz/a;->d:J

    .line 2
    .line 3
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldz/a;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method C(Ljava/util/Map;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p0, v2, v1, p1}, Ldz/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public a(Ldz/a;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ldz/a;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ldz/a;->f()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

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
.end method

.method c(Ljava/util/Map;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldz/a;->s:Z

    .line 3
    .line 4
    const-string v0, "GNU.sparse.size"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    iput-wide v0, p0, Ldz/a;->r:J

    .line 18
    .line 19
    const-string v0, "GNU.sparse.name"

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Ldz/a;->a:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method d(Ljava/util/Map;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldz/a;->s:Z

    .line 3
    .line 4
    const-string v0, "GNU.sparse.realsize"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    iput-wide v0, p0, Ldz/a;->r:J

    .line 18
    .line 19
    const-string v0, "GNU.sparse.name"

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    iput-object p1, p0, Ldz/a;->a:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method e(Ljava/util/Map;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldz/a;->t:Z

    .line 3
    .line 4
    const-string v0, "SCHILY.realsize"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Ldz/a;->r:J

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    check-cast p1, Ldz/a;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ldz/a;->a(Ldz/a;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ldz/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ldz/a;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ldz/a;->u:Ljava/io/File;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-byte v0, p0, Ldz/a;->i:B

    .line 11
    .line 12
    const/16 v1, 0x35

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    invoke-virtual {p0}, Ldz/a;->n()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Ldz/a;->l()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Ldz/a;->f()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "/"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldz/a;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldz/a;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Ldz/a;->i:B

    .line 2
    .line 3
    const/16 v1, 0x4b

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Ldz/a;->i:B

    .line 2
    .line 3
    const/16 v1, 0x4c

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Ldz/a;->i:B

    .line 2
    .line 3
    const/16 v1, 0x67

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Ldz/a;->i:B

    .line 2
    .line 3
    const/16 v1, 0x53

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Ldz/a;->i:B

    .line 2
    .line 3
    const/16 v1, 0x78

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x58

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public s(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Ldz/a;->o:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Major device number is out of range: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public t(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Ldz/a;->p:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Minor device number is out of range: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public u(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ldz/a;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldz/a;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldz/a;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public x(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p1, v0

    .line 4
    iput-wide p1, p0, Ldz/a;->g:J

    .line 5
    .line 6
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldz/a;->b:Z

    .line 2
    .line 3
    invoke-static {p1, v0}, Ldz/a;->o(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Ldz/a;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public z(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Ldz/a;->f:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Size is out of range: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method
