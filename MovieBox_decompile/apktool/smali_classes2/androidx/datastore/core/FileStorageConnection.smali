.class public final Landroidx/datastore/core/FileStorageConnection;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/datastore/core/x;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Landroidx/datastore/core/t;

.field private final c:Landroidx/datastore/core/m;

.field private final d:Lkotlin/jvm/functions/Function0;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Lkotlinx/coroutines/sync/a;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroidx/datastore/core/t;Landroidx/datastore/core/m;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "coordinator"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onClose"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/datastore/core/FileStorageConnection;->b:Landroidx/datastore/core/t;

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/datastore/core/FileStorageConnection;->c:Landroidx/datastore/core/m;

    .line 29
    .line 30
    iput-object p4, p0, Landroidx/datastore/core/FileStorageConnection;->d:Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroidx/datastore/core/FileStorageConnection;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-static {p2, p1, p3}, Lkotlinx/coroutines/sync/g;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Landroidx/datastore/core/FileStorageConnection;->f:Lkotlinx/coroutines/sync/a;

    .line 47
    .line 48
    return-void
.end method

.method private final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/FileStorageConnection;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "StorageConnection has already been disposed."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method private final g(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Unable to create parent directories of "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/FileStorageConnection$writeScope$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/FileStorageConnection$writeScope$1;-><init>(Landroidx/datastore/core/FileStorageConnection;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$3:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Landroidx/datastore/core/c;

    .line 45
    .line 46
    iget-object v1, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Ljava/io/File;

    .line 49
    .line 50
    iget-object v2, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lkotlinx/coroutines/sync/a;

    .line 53
    .line 54
    iget-object v0, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Landroidx/datastore/core/FileStorageConnection;

    .line 57
    .line 58
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :catchall_0
    move-exception p2

    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_2
    iget-object p1, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Lkotlinx/coroutines/sync/a;

    .line 77
    .line 78
    iget-object v2, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 81
    .line 82
    iget-object v4, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v4, Landroidx/datastore/core/FileStorageConnection;

    .line 85
    .line 86
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object v8, v2

    .line 90
    move-object v2, p1

    .line 91
    move-object p1, v8

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Landroidx/datastore/core/FileStorageConnection;->f()V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;

    .line 100
    .line 101
    invoke-direct {p0, p2}, Landroidx/datastore/core/FileStorageConnection;->g(Ljava/io/File;)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Landroidx/datastore/core/FileStorageConnection;->f:Lkotlinx/coroutines/sync/a;

    .line 105
    .line 106
    iput-object p0, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object p1, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object p2, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    .line 111
    .line 112
    iput v4, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->label:I

    .line 113
    .line 114
    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/a;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-ne v2, v1, :cond_4

    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_4
    move-object v4, p0

    .line 122
    move-object v2, p2

    .line 123
    :goto_1
    :try_start_1
    new-instance p2, Ljava/io/File;

    .line 124
    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    iget-object v7, v4, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;

    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v7, ".tmp"

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-direct {p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 149
    .line 150
    .line 151
    :try_start_2
    new-instance v6, Landroidx/datastore/core/FileWriteScope;

    .line 152
    .line 153
    iget-object v7, v4, Landroidx/datastore/core/FileStorageConnection;->b:Landroidx/datastore/core/t;

    .line 154
    .line 155
    invoke-direct {v6, p2, v7}, Landroidx/datastore/core/FileWriteScope;-><init>(Ljava/io/File;Landroidx/datastore/core/t;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 156
    .line 157
    .line 158
    :try_start_3
    iput-object v4, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object v2, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object p2, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object v6, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$3:Ljava/lang/Object;

    .line 165
    .line 166
    iput v3, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->label:I

    .line 167
    .line 168
    invoke-interface {p1, v6, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 172
    if-ne p1, v1, :cond_5

    .line 173
    .line 174
    return-object v1

    .line 175
    :cond_5
    move-object v1, p2

    .line 176
    move-object v0, v4

    .line 177
    move-object p1, v6

    .line 178
    :goto_2
    :try_start_4
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    .line 180
    :try_start_5
    invoke-interface {p1}, Landroidx/datastore/core/c;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    .line 182
    .line 183
    move-object p1, v5

    .line 184
    goto :goto_3

    .line 185
    :catchall_1
    move-exception p1

    .line 186
    :goto_3
    if-nez p1, :cond_8

    .line 187
    .line 188
    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_7

    .line 193
    .line 194
    iget-object p1, v0, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;

    .line 195
    .line 196
    invoke-static {v1, p1}, Landroidx/datastore/core/j;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_6

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 204
    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v3, "Unable to rename "

    .line 211
    .line 212
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v3, " to "

    .line 219
    .line 220
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v0, v0, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;

    .line 224
    .line 225
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v0, ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    .line 229
    .line 230
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 241
    :catchall_2
    move-exception p1

    .line 242
    goto :goto_8

    .line 243
    :catch_0
    move-exception p1

    .line 244
    move-object p2, v1

    .line 245
    goto :goto_7

    .line 246
    :cond_7
    :goto_4
    :try_start_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 247
    .line 248
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 252
    .line 253
    return-object p1

    .line 254
    :cond_8
    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 255
    :catchall_3
    move-exception p1

    .line 256
    move-object v1, p2

    .line 257
    move-object p2, p1

    .line 258
    move-object p1, v6

    .line 259
    :goto_5
    :try_start_9
    invoke-interface {p1}, Landroidx/datastore/core/c;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 260
    .line 261
    .line 262
    goto :goto_6

    .line 263
    :catchall_4
    move-exception p1

    .line 264
    :try_start_a
    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    :goto_6
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 268
    :catch_1
    move-exception p1

    .line 269
    :goto_7
    :try_start_b
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_9

    .line 274
    .line 275
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 276
    .line 277
    .line 278
    :cond_9
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 279
    :goto_8
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/FileStorageConnection;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/datastore/core/FileStorageConnection;->d:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public d(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/FileStorageConnection$readScope$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/FileStorageConnection$readScope$1;-><init>(Landroidx/datastore/core/FileStorageConnection;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-boolean p1, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->Z$0:Z

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Landroidx/datastore/core/c;

    .line 44
    .line 45
    iget-object v0, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Landroidx/datastore/core/FileStorageConnection;

    .line 48
    .line 49
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p2

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Landroidx/datastore/core/FileStorageConnection;->f()V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Landroidx/datastore/core/FileStorageConnection;->f:Lkotlinx/coroutines/sync/a;

    .line 70
    .line 71
    invoke-static {p2, v4, v3, v4}, Lkotlinx/coroutines/sync/a$a;->b(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    :try_start_1
    new-instance v2, Landroidx/datastore/core/FileReadScope;

    .line 76
    .line 77
    iget-object v5, p0, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;

    .line 78
    .line 79
    iget-object v6, p0, Landroidx/datastore/core/FileStorageConnection;->b:Landroidx/datastore/core/t;

    .line 80
    .line 81
    invoke-direct {v2, v5, v6}, Landroidx/datastore/core/FileReadScope;-><init>(Ljava/io/File;Landroidx/datastore/core/t;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 82
    .line 83
    .line 84
    :try_start_2
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iput-object p0, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object v2, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    iput-boolean p2, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->Z$0:Z

    .line 93
    .line 94
    iput v3, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->label:I

    .line 95
    .line 96
    invoke-interface {p1, v2, v5, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 100
    if-ne p1, v1, :cond_3

    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_3
    move-object v0, p0

    .line 104
    move-object v1, v2

    .line 105
    move v7, p2

    .line 106
    move-object p2, p1

    .line 107
    move p1, v7

    .line 108
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroidx/datastore/core/c;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    .line 110
    .line 111
    move-object v1, v4

    .line 112
    goto :goto_2

    .line 113
    :catchall_1
    move-exception v1

    .line 114
    :goto_2
    if-nez v1, :cond_5

    .line 115
    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    iget-object p1, v0, Landroidx/datastore/core/FileStorageConnection;->f:Lkotlinx/coroutines/sync/a;

    .line 119
    .line 120
    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/sync/a$a;->c(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    return-object p2

    .line 124
    :cond_5
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 125
    :catchall_2
    move-exception p2

    .line 126
    goto :goto_5

    .line 127
    :catchall_3
    move-exception p1

    .line 128
    move-object v0, p0

    .line 129
    move-object v1, v2

    .line 130
    move v7, p2

    .line 131
    move-object p2, p1

    .line 132
    move p1, v7

    .line 133
    :goto_3
    :try_start_5
    invoke-interface {v1}, Landroidx/datastore/core/c;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :catchall_4
    move-exception v1

    .line 138
    :try_start_6
    invoke-static {p2, v1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    :goto_4
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 142
    :catchall_5
    move-exception p1

    .line 143
    move-object v0, p0

    .line 144
    move v7, p2

    .line 145
    move-object p2, p1

    .line 146
    move p1, v7

    .line 147
    :goto_5
    if-eqz p1, :cond_6

    .line 148
    .line 149
    iget-object p1, v0, Landroidx/datastore/core/FileStorageConnection;->f:Lkotlinx/coroutines/sync/a;

    .line 150
    .line 151
    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/sync/a$a;->c(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    throw p2
.end method

.method public e()Landroidx/datastore/core/m;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/FileStorageConnection;->c:Landroidx/datastore/core/m;

    .line 2
    .line 3
    return-object v0
.end method
