.class public final Landroidx/room/support/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lz3/e;
.implements Landroidx/room/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/io/File;

.field private final d:Ljava/util/concurrent/Callable;

.field private final e:I

.field private final f:Lz3/e;

.field private g:Landroidx/room/c;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;ILz3/e;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "delegate"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/room/support/m;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/room/support/m;->b:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, p0, Landroidx/room/support/m;->c:Ljava/io/File;

    .line 19
    .line 20
    iput-object p4, p0, Landroidx/room/support/m;->d:Ljava/util/concurrent/Callable;

    .line 21
    .line 22
    iput p5, p0, Landroidx/room/support/m;->e:I

    .line 23
    .line 24
    iput-object p6, p0, Landroidx/room/support/m;->f:Lz3/e;

    .line 25
    .line 26
    return-void
.end method

.method private final b(Ljava/io/File;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/room/support/m;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/room/support/m;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/room/support/m;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/room/support/m;->c:Ljava/io/File;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Ljava/io/FileInputStream;

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/room/support/m;->c:Ljava/io/File;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Landroidx/room/support/m;->d:Ljava/util/concurrent/Callable;

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    iget-object v1, p0, Landroidx/room/support/m;->a:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "room-copy-helper"

    .line 59
    .line 60
    const-string v3, ".tmp"

    .line 61
    .line 62
    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 67
    .line 68
    .line 69
    new-instance v2, Ljava/io/FileOutputStream;

    .line 70
    .line 71
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v2}, Landroidx/room/util/d;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    new-instance p2, Ljava/io/IOException;

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v1, "Failed to create directories for "

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p2

    .line 130
    :cond_3
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v1, p2}, Landroidx/room/support/m;->f(Ljava/io/File;Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_4

    .line 141
    .line 142
    return-void

    .line 143
    :cond_4
    new-instance p2, Ljava/io/IOException;

    .line 144
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v2, "Failed to move intermediate file ("

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ") to destination ("

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string p1, ")."

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p2

    .line 187
    :catch_0
    move-exception p1

    .line 188
    new-instance p2, Ljava/io/IOException;

    .line 189
    .line 190
    const-string v0, "inputStreamCallable exception on call"

    .line 191
    .line 192
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    throw p2

    .line 196
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 197
    .line 198
    const-string p2, "copyFromAssetPath, copyFromFile and copyFromInputStream are all null!"

    .line 199
    .line 200
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p1
.end method

.method private final d(Ljava/io/File;)Lz3/e;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Landroidx/room/util/b;->h(Ljava/io/File;)I

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance v1, La4/h;

    .line 6
    .line 7
    invoke-direct {v1}, La4/h;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lz3/e$b;->f:Lz3/e$b$b;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/room/support/m;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lz3/e$b$b;->a(Landroid/content/Context;)Lz3/e$b$a;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v2, p1}, Lz3/e$b$a;->d(Ljava/lang/String;)Lz3/e$b$a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    new-instance v3, Landroidx/room/support/m$a;

    .line 32
    .line 33
    invoke-direct {v3, v0, v2}, Landroidx/room/support/m$a;-><init>(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v3}, Lz3/e$b$a;->c(Lz3/e$a;)Lz3/e$b$a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lz3/e$b$a;->b()Lz3/e$b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, La4/h;->a(Lz3/e$b;)Lz3/e;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    .line 51
    .line 52
    const-string v1, "Malformed database file, unable to read version."

    .line 53
    .line 54
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method private final f(Ljava/io/File;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/support/m;->g:Landroidx/room/c;

    .line 2
    .line 3
    const-string v1, "databaseConfiguration"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    iget-object v0, v0, Landroidx/room/c;->q:Landroidx/room/RoomDatabase$e;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-direct {p0, p1}, Landroidx/room/support/m;->d(Ljava/io/File;)Lz3/e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    :try_start_0
    invoke-interface {p1}, Lz3/e;->getWritableDatabase()Lz3/d;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p2

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-interface {p1}, Lz3/e;->getReadableDatabase()Lz3/d;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :goto_0
    iget-object v0, p0, Landroidx/room/support/m;->g:Landroidx/room/c;

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    move-object v0, v2

    .line 42
    :cond_3
    iget-object v0, v0, Landroidx/room/c;->q:Landroidx/room/RoomDatabase$e;

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Landroidx/room/RoomDatabase$e;->a(Lz3/d;)V

    .line 48
    .line 49
    .line 50
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method private final j(Z)V
    .locals 9

    .line 1
    const-string v0, "ROOM"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/room/support/m;->getDatabaseName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/room/support/m;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Landroidx/room/support/m;->g:Landroidx/room/c;

    .line 16
    .line 17
    const-string v4, "databaseConfiguration"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object v3, v5

    .line 26
    :cond_0
    iget-boolean v3, v3, Landroidx/room/c;->w:Z

    .line 27
    .line 28
    new-instance v6, Lc4/a;

    .line 29
    .line 30
    iget-object v7, p0, Landroidx/room/support/m;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-direct {v6, v1, v7, v3}, Lc4/a;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v7, 0x1

    .line 41
    :try_start_0
    invoke-static {v6, v3, v7, v5}, Lc4/a;->c(Lc4/a;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const-string v7, "Unable to copy database file."

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    :try_start_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v2, p1}, Landroidx/room/support/m;->b(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Lc4/a;->d()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    :catch_0
    move-exception p1

    .line 65
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    invoke-direct {v0, v7, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :cond_1
    :try_start_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Landroidx/room/util/b;->h(Ljava/io/File;)I

    .line 75
    .line 76
    .line 77
    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :try_start_4
    iget v8, p0, Landroidx/room/support/m;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    .line 80
    if-ne v3, v8, :cond_2

    .line 81
    .line 82
    invoke-virtual {v6}, Lc4/a;->d()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    :try_start_5
    iget-object v8, p0, Landroidx/room/support/m;->g:Landroidx/room/c;

    .line 87
    .line 88
    if-nez v8, :cond_3

    .line 89
    .line 90
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move-object v5, v8

    .line 95
    :goto_0
    iget v4, p0, Landroidx/room/support/m;->e:I

    .line 96
    .line 97
    invoke-virtual {v5, v3, v4}, Landroidx/room/c;->e(II)Z

    .line 98
    .line 99
    .line 100
    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    if-eqz v3, :cond_4

    .line 102
    .line 103
    invoke-virtual {v6}, Lc4/a;->d()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    :try_start_6
    iget-object v3, p0, Landroidx/room/support/m;->a:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v3, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 113
    if-eqz v3, :cond_5

    .line 114
    .line 115
    :try_start_7
    invoke-direct {p0, v2, p1}, Landroidx/room/support/m;->b(Ljava/io/File;Z)V

    .line 116
    .line 117
    .line 118
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catch_1
    move-exception p1

    .line 122
    :try_start_8
    invoke-static {v0, v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v2, "Failed to delete database file ("

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ") for a copy destructive migration."

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-virtual {v6}, Lc4/a;->d()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :catch_2
    move-exception p1

    .line 156
    :try_start_9
    const-string v1, "Unable to read database version."

    .line 157
    .line 158
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Lc4/a;->d()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :goto_2
    invoke-virtual {v6}, Lc4/a;->d()V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    const-string v0, "Required value was null."

    .line 172
    .line 173
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/room/support/m;->getDelegate()Lz3/e;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Lz3/e;->close()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/room/support/m;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/support/m;->getDelegate()Lz3/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lz3/e;->getDatabaseName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDelegate()Lz3/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/m;->f:Lz3/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReadableDatabase()Lz3/d;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/room/support/m;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Landroidx/room/support/m;->j(Z)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/room/support/m;->h:Z

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/room/support/m;->getDelegate()Lz3/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lz3/e;->getReadableDatabase()Lz3/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getWritableDatabase()Lz3/d;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/room/support/m;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Landroidx/room/support/m;->j(Z)V

    .line 7
    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/room/support/m;->h:Z

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/room/support/m;->getDelegate()Lz3/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lz3/e;->getWritableDatabase()Lz3/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final h(Landroidx/room/c;)V
    .locals 1

    .line 1
    const-string v0, "databaseConfiguration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/room/support/m;->g:Landroidx/room/c;

    .line 7
    .line 8
    return-void
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/support/m;->getDelegate()Lz3/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lz3/e;->setWriteAheadLoggingEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
