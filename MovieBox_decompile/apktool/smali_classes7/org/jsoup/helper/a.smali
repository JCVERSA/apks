.class public abstract Lorg/jsoup/helper/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jsoup/helper/a;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/jsoup/helper/a;->b:[C

    .line 16
    .line 17
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/a$a;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lt v2, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    aget-byte v0, v1, p0

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    const/4 v3, 0x2

    .line 24
    const/4 v4, -0x1

    .line 25
    const/4 v5, -0x2

    .line 26
    const/4 v6, 0x1

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    aget-byte v7, v1, v6

    .line 30
    .line 31
    if-nez v7, :cond_1

    .line 32
    .line 33
    aget-byte v7, v1, v3

    .line 34
    .line 35
    if-ne v7, v5, :cond_1

    .line 36
    .line 37
    aget-byte v7, v1, v2

    .line 38
    .line 39
    if-eq v7, v4, :cond_2

    .line 40
    .line 41
    :cond_1
    if-ne v0, v4, :cond_3

    .line 42
    .line 43
    aget-byte v7, v1, v6

    .line 44
    .line 45
    if-ne v7, v5, :cond_3

    .line 46
    .line 47
    aget-byte v7, v1, v3

    .line 48
    .line 49
    if-nez v7, :cond_3

    .line 50
    .line 51
    aget-byte v2, v1, v2

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    :cond_2
    new-instance v0, Lorg/jsoup/helper/a$a;

    .line 56
    .line 57
    const-string v1, "UTF-32"

    .line 58
    .line 59
    invoke-direct {v0, v1, p0}, Lorg/jsoup/helper/a$a;-><init>(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_3
    if-ne v0, v5, :cond_4

    .line 64
    .line 65
    aget-byte v2, v1, v6

    .line 66
    .line 67
    if-eq v2, v4, :cond_5

    .line 68
    .line 69
    :cond_4
    if-ne v0, v4, :cond_6

    .line 70
    .line 71
    aget-byte v2, v1, v6

    .line 72
    .line 73
    if-ne v2, v5, :cond_6

    .line 74
    .line 75
    :cond_5
    new-instance v0, Lorg/jsoup/helper/a$a;

    .line 76
    .line 77
    const-string v1, "UTF-16"

    .line 78
    .line 79
    invoke-direct {v0, v1, p0}, Lorg/jsoup/helper/a$a;-><init>(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_6
    const/16 p0, -0x11

    .line 84
    .line 85
    if-ne v0, p0, :cond_7

    .line 86
    .line 87
    aget-byte p0, v1, v6

    .line 88
    .line 89
    const/16 v0, -0x45

    .line 90
    .line 91
    if-ne p0, v0, :cond_7

    .line 92
    .line 93
    aget-byte p0, v1, v3

    .line 94
    .line 95
    const/16 v0, -0x41

    .line 96
    .line 97
    if-ne p0, v0, :cond_7

    .line 98
    .line 99
    new-instance p0, Lorg/jsoup/helper/a$a;

    .line 100
    .line 101
    const-string v0, "UTF-8"

    .line 102
    .line 103
    invoke-direct {p0, v0, v6}, Lorg/jsoup/helper/a$a;-><init>(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_7
    const/4 p0, 0x0

    .line 108
    return-object p0
.end method

.method static b()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lorg/jsoup/helper/a;->a:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "charset="

    .line 27
    .line 28
    const-string v1, ""

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lorg/jsoup/helper/a;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    return-object v0
.end method

.method static d()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/Random;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_0

    .line 15
    .line 16
    sget-object v4, Lorg/jsoup/helper/a;->b:[C

    .line 17
    .line 18
    array-length v5, v4

    .line 19
    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    aget-char v4, v4, v5

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method static e(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/nodes/Document;
    .locals 12

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lorg/jsoup/nodes/Document;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const v0, 0x8000

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v0, v1}, Lsz/a;->j(Ljava/io/InputStream;II)Lsz/a;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x13ff

    .line 21
    .line 22
    invoke-static {p0, v2}, Lorg/jsoup/helper/a;->f(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, -0x1

    .line 31
    if-ne v3, v4, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v3, v1

    .line 36
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lorg/jsoup/helper/a;->a(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/a$a;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-static {v4}, Lorg/jsoup/helper/a$a;->a(Lorg/jsoup/helper/a$a;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_2
    const-string v5, "UTF-8"

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    if-nez p1, :cond_a

    .line 53
    .line 54
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v7, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p3, v2, p2}, Lorg/jsoup/parser/e;->f(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v7, "meta[http-equiv=content-type], meta[charset]"

    .line 71
    .line 72
    invoke-virtual {v2, v7}, Lorg/jsoup/nodes/Element;->R0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    move-object v8, v6

    .line 81
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_6

    .line 86
    .line 87
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 92
    .line 93
    const-string v10, "http-equiv"

    .line 94
    .line 95
    invoke-virtual {v9, v10}, Lorg/jsoup/nodes/j;->w(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-eqz v10, :cond_4

    .line 100
    .line 101
    const-string v8, "content"

    .line 102
    .line 103
    invoke-virtual {v9, v8}, Lorg/jsoup/nodes/j;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-static {v8}, Lorg/jsoup/helper/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    :cond_4
    if-nez v8, :cond_5

    .line 112
    .line 113
    const-string v10, "charset"

    .line 114
    .line 115
    invoke-virtual {v9, v10}, Lorg/jsoup/nodes/j;->w(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-eqz v11, :cond_5

    .line 120
    .line 121
    invoke-virtual {v9, v10}, Lorg/jsoup/nodes/j;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    :cond_5
    if-eqz v8, :cond_3

    .line 126
    .line 127
    :cond_6
    if-nez v8, :cond_7

    .line 128
    .line 129
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->n()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-lez v7, :cond_7

    .line 134
    .line 135
    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/j;->m(I)Lorg/jsoup/nodes/j;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    instance-of v7, v7, Lorg/jsoup/nodes/m;

    .line 140
    .line 141
    if-eqz v7, :cond_7

    .line 142
    .line 143
    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/j;->m(I)Lorg/jsoup/nodes/j;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lorg/jsoup/nodes/m;

    .line 148
    .line 149
    invoke-virtual {v1}, Lorg/jsoup/nodes/m;->d0()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    const-string v9, "xml"

    .line 154
    .line 155
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-eqz v7, :cond_7

    .line 160
    .line 161
    const-string v7, "encoding"

    .line 162
    .line 163
    invoke-virtual {v1, v7}, Lorg/jsoup/nodes/m;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    :cond_7
    invoke-static {v8}, Lorg/jsoup/helper/a;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-eqz v1, :cond_8

    .line 172
    .line 173
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_8

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string v1, "[\"\']"

    .line 184
    .line 185
    const-string v2, ""

    .line 186
    .line 187
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    goto :goto_1

    .line 192
    :cond_8
    if-nez v3, :cond_9

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_9
    move-object v6, v2

    .line 196
    goto :goto_1

    .line 197
    :cond_a
    const-string v1, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    .line 198
    .line 199
    invoke-static {p1, v1}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_1
    if-nez v6, :cond_d

    .line 203
    .line 204
    if-nez p1, :cond_b

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_b
    move-object v5, p1

    .line 208
    :goto_2
    new-instance p1, Ljava/io/BufferedReader;

    .line 209
    .line 210
    new-instance v1, Ljava/io/InputStreamReader;

    .line 211
    .line 212
    invoke-direct {v1, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-direct {p1, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 216
    .line 217
    .line 218
    if-eqz v4, :cond_c

    .line 219
    .line 220
    invoke-static {v4}, Lorg/jsoup/helper/a$a;->b(Lorg/jsoup/helper/a$a;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_c

    .line 225
    .line 226
    const-wide/16 v0, 0x1

    .line 227
    .line 228
    invoke-virtual {p1, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    .line 229
    .line 230
    .line 231
    :cond_c
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lorg/jsoup/parser/e;->e(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 232
    .line 233
    .line 234
    move-result-object v6
    :try_end_0
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    invoke-virtual {v6}, Lorg/jsoup/nodes/Document;->g1()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1, v5}, Lorg/jsoup/nodes/Document$OutputSettings;->b(Ljava/lang/String;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 240
    .line 241
    .line 242
    goto :goto_3

    .line 243
    :catch_0
    move-exception p0

    .line 244
    invoke-virtual {p0}, Lorg/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    throw p0

    .line 249
    :cond_d
    :goto_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 250
    .line 251
    .line 252
    return-object v6
.end method

.method public static f(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    const-string v1, "maxSize must be 0 (unlimited) or larger"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x8000

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, p1}, Lsz/a;->j(Ljava/io/InputStream;II)Lsz/a;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p1}, Lsz/a;->f(I)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "[\"\']"

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    return-object p0

    .line 43
    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method
