.class public Lru/zdevs/zarchiver/provider/PluginFileProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "_display_name"

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, "_size"

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    sput-object v0, Lru/zdevs/zarchiver/provider/PluginFileProvider;->a:[Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ln0/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No support updates"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, La0/c;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    const-string p1, "application/octet-stream"

    .line 27
    .line 28
    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No support inserts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreate()Z
    .locals 1

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-static {v0}, Ll0/c;->i(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    const/4 v0, 0x1

    .line 35
    return v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8

    .line 1
    invoke-static {p1}, Lru/zdevs/zarchiver/provider/PluginFileProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Lh1/c;->b(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x10000000

    .line 10
    .line 11
    invoke-static {v1, v2}, La0/c;->K(II)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/high16 v3, 0x20000000

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-static {v1, v3}, La0/c;->K(II)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-eqz v2, :cond_1

    .line 30
    .line 31
    new-instance p1, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    invoke-static {v1, v3}, La0/c;->K(II)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_a

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "/"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    const-string v0, ":/"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x0

    .line 64
    if-gez v0, :cond_2

    .line 65
    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_2
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    add-int/lit8 v0, v0, 0x2

    .line 73
    .line 74
    const/16 v2, 0x2f

    .line 75
    .line 76
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-le v2, v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    move v7, v2

    .line 87
    move-object v2, v0

    .line 88
    move v0, v7

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move-object v2, v1

    .line 91
    :goto_1
    const/16 v3, 0x23

    .line 92
    .line 93
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    const/16 v5, 0x24

    .line 98
    .line 99
    if-gez v3, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    add-int/lit8 v6, v3, 0x1

    .line 107
    .line 108
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(II)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    :goto_2
    if-le v3, v0, :cond_6

    .line 113
    .line 114
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-le v5, v3, :cond_5

    .line 119
    .line 120
    add-int/2addr v3, v4

    .line 121
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    goto :goto_5

    .line 130
    :cond_5
    add-int/2addr v3, v4

    .line 131
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :goto_3
    move-object v7, v1

    .line 136
    move-object v1, p1

    .line 137
    move-object p1, v7

    .line 138
    goto :goto_5

    .line 139
    :cond_6
    if-le v5, v0, :cond_7

    .line 140
    .line 141
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    goto :goto_4

    .line 150
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    move-object v0, p1

    .line 155
    :goto_4
    const-string p1, ""

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :goto_5
    new-instance v3, Lh0/h;

    .line 159
    .line 160
    invoke-direct {v3, p2, v0, v1, v2}, Lh0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iput-object p1, v3, Lh0/h;->d:Ljava/lang/String;

    .line 164
    .line 165
    move-object v1, v3

    .line 166
    :goto_6
    if-eqz v1, :cond_9

    .line 167
    .line 168
    invoke-static {v1}, Ll0/c;->d(Lh0/h;)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    const/16 p2, 0x100

    .line 173
    .line 174
    invoke-static {p1, p2}, La0/c;->K(II)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_8

    .line 179
    .line 180
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 181
    .line 182
    const-string p2, "ZArchiver: Remote storage is read only"

    .line 183
    .line 184
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 189
    .line 190
    const-string p2, "ZArchiver: Edit file is supported only in Donation/Pro version"

    .line 191
    .line 192
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :cond_9
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 197
    .line 198
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 203
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v1, "Invalid mode: "

    .line 207
    .line 208
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_8

    .line 222
    :goto_7
    throw p1

    .line 223
    :goto_8
    goto :goto_7
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    .line 1
    const-string v0, "_size"

    .line 2
    .line 3
    const-string v1, "_display_name"

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lru/zdevs/zarchiver/provider/PluginFileProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    sget-object v3, Lru/zdevs/zarchiver/provider/PluginFileProvider;->a:[Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object/from16 v3, p2

    .line 15
    .line 16
    :goto_0
    const/4 v4, 0x0

    .line 17
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-nez v6, :cond_1

    .line 27
    .line 28
    return-object v4

    .line 29
    :cond_1
    array-length v6, v3

    .line 30
    new-array v7, v6, [Ljava/lang/String;

    .line 31
    .line 32
    array-length v8, v3

    .line 33
    new-array v9, v8, [Ljava/lang/Object;

    .line 34
    .line 35
    array-length v10, v3

    .line 36
    const/4 v11, 0x0

    .line 37
    const/4 v12, 0x0

    .line 38
    const/4 v13, 0x0

    .line 39
    :goto_1
    if-ge v12, v10, :cond_4

    .line 40
    .line 41
    aget-object v14, v3, v12

    .line 42
    .line 43
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v15

    .line 47
    if-eqz v15, :cond_2

    .line 48
    .line 49
    aput-object v1, v7, v13

    .line 50
    .line 51
    add-int/lit8 v14, v13, 0x1

    .line 52
    .line 53
    invoke-static {v2}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v15

    .line 57
    aput-object v15, v9, v13

    .line 58
    .line 59
    :goto_2
    move v13, v14

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    if-eqz v14, :cond_3

    .line 66
    .line 67
    aput-object v0, v7, v13

    .line 68
    .line 69
    add-int/lit8 v14, v13, 0x1

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 72
    .line 73
    .line 74
    move-result-wide v15

    .line 75
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    aput-object v15, v9, v13

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    if-ne v6, v13, :cond_5

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_5
    new-array v0, v13, [Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v7, v11, v0, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .line 92
    .line 93
    move-object v7, v0

    .line 94
    :goto_4
    if-ne v8, v13, :cond_6

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_6
    new-array v0, v13, [Ljava/lang/Object;

    .line 98
    .line 99
    invoke-static {v9, v11, v0, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    move-object v9, v0

    .line 103
    :goto_5
    new-instance v0, Landroid/database/MatrixCursor;

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-direct {v0, v7, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :catch_0
    return-object v4
.end method

.method public final shutdown()V
    .locals 0

    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No support updates"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
