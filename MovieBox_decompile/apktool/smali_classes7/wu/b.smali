.class public final Lwu/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lwu/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lwu/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lwu/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwu/b;->a:Lwu/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Lkotlin/jvm/functions/Function1;)V
    .locals 18

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v9, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "parentFile.listFiles()"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    move-object v10, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-array v1, v9, [Ljava/io/File;

    .line 24
    .line 25
    aput-object p1, v1, v9

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    const/16 v11, 0x400

    .line 29
    .line 30
    new-array v12, v11, [B

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    :try_start_0
    array-length v13, v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 34
    move-object v14, v1

    .line 35
    move-object v15, v14

    .line 36
    move v7, v9

    .line 37
    :goto_2
    if-ge v7, v13, :cond_3

    .line 38
    .line 39
    :try_start_1
    aget-object v2, v10, v7

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 42
    .line 43
    .line 44
    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    const-string v3, "this as java.lang.String).substring(startIndex)"

    .line 46
    .line 47
    const-string v4, "it.path"

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, "/"

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    new-instance v3, Lorg/apache/tools/zip/ZipEntry;

    .line 89
    .line 90
    invoke-direct {v3, v1}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->putNextEntry(Lorg/apache/tools/zip/ZipEntry;)V

    .line 94
    .line 95
    .line 96
    sget-object v1, Lwu/b;->a:Lwu/b;

    .line 97
    .line 98
    const/16 v6, 0x8

    .line 99
    .line 100
    const/16 v16, 0x0

    .line 101
    .line 102
    const/4 v5, 0x0

    .line 103
    move-object/from16 v3, p2

    .line 104
    .line 105
    move-object/from16 v4, p3

    .line 106
    .line 107
    move/from16 v17, v7

    .line 108
    .line 109
    move-object/from16 v7, v16

    .line 110
    .line 111
    invoke-static/range {v1 .. v7}, Lwu/b;->c(Lwu/b;Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :catch_0
    move-exception v0

    .line 116
    move-object v1, v14

    .line 117
    goto :goto_6

    .line 118
    :cond_1
    move/from16 v17, v7

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance v3, Ljava/io/FileInputStream;

    .line 141
    .line 142
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .line 144
    .line 145
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 146
    .line 147
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 148
    .line 149
    .line 150
    :try_start_4
    new-instance v4, Lorg/apache/tools/zip/ZipEntry;

    .line 151
    .line 152
    invoke-direct {v4, v1}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->putNextEntry(Lorg/apache/tools/zip/ZipEntry;)V

    .line 156
    .line 157
    .line 158
    :goto_3
    invoke-virtual {v2, v12, v9, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    const/4 v4, -0x1

    .line 163
    if-ne v1, v4, :cond_2

    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    .line 170
    .line 171
    move-object v15, v2

    .line 172
    move-object v14, v3

    .line 173
    :goto_4
    add-int/lit8 v7, v17, 0x1

    .line 174
    .line 175
    goto/16 :goto_2

    .line 176
    .line 177
    :catch_1
    move-exception v0

    .line 178
    move-object v15, v2

    .line 179
    :goto_5
    move-object v1, v3

    .line 180
    goto :goto_6

    .line 181
    :cond_2
    invoke-virtual {v0, v12, v9, v1}, Lorg/apache/tools/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :catch_2
    move-exception v0

    .line 186
    goto :goto_5

    .line 187
    :cond_3
    if-eqz v8, :cond_6

    .line 188
    .line 189
    :try_start_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 190
    .line 191
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 192
    .line 193
    .line 194
    goto :goto_7

    .line 195
    :catch_3
    move-exception v0

    .line 196
    move-object v15, v1

    .line 197
    :goto_6
    if-eqz v8, :cond_4

    .line 198
    .line 199
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 200
    .line 201
    invoke-interface {v8, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    .line 206
    .line 207
    if-eqz v1, :cond_5

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 210
    .line 211
    .line 212
    :cond_5
    if-eqz v15, :cond_6

    .line 213
    .line 214
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V

    .line 215
    .line 216
    .line 217
    :cond_6
    :goto_7
    return-void
.end method

.method static synthetic c(Lwu/b;Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lwu/b;->b(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    const-string v0, "zipFilePath"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 13
    .line 14
    .line 15
    :try_start_1
    new-instance p2, Ljava/io/BufferedOutputStream;

    .line 16
    .line 17
    invoke-direct {p2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 18
    .line 19
    .line 20
    :try_start_2
    new-instance v2, Lorg/apache/tools/zip/ZipOutputStream;

    .line 21
    .line 22
    invoke-direct {v2, p2}, Lorg/apache/tools/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 23
    .line 24
    .line 25
    :try_start_3
    const-string v0, "GBK"

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Lorg/apache/tools/zip/ZipOutputStream;->setEncoding(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    move-object v0, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    const-string v3, "basePath"

    .line 54
    .line 55
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0, p1, v2, p3}, Lwu/b;->b(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipOutputStream;->close()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_1
    move-exception p1

    .line 75
    goto :goto_1

    .line 76
    :catch_2
    move-exception p1

    .line 77
    move-object p2, v0

    .line 78
    goto :goto_1

    .line 79
    :catch_3
    move-exception p1

    .line 80
    move-object p2, v0

    .line 81
    move-object v1, p2

    .line 82
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry()V

    .line 88
    .line 89
    .line 90
    :cond_2
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipOutputStream;->close()V

    .line 93
    .line 94
    .line 95
    :cond_3
    if-eqz p2, :cond_4

    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 98
    .line 99
    .line 100
    :cond_4
    if-eqz v1, :cond_5

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 103
    .line 104
    .line 105
    :cond_5
    if-eqz p3, :cond_6

    .line 106
    .line 107
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_6
    :goto_2
    return-void
.end method
