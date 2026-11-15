.class public final Landroidx/media3/exoplayer/offline/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/a$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;

.field private static final g:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lv1/a;

.field private final d:Ljava/lang/Object;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    filled-new-array {v0, v1}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/media3/exoplayer/offline/a;->p([I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/media3/exoplayer/offline/a;->f:Ljava/lang/String;

    .line 12
    .line 13
    const-string v14, "bytes_downloaded"

    .line 14
    .line 15
    const-string v15, "key_set_id"

    .line 16
    .line 17
    const-string v1, "id"

    .line 18
    .line 19
    const-string v2, "mime_type"

    .line 20
    .line 21
    const-string v3, "uri"

    .line 22
    .line 23
    const-string v4, "stream_keys"

    .line 24
    .line 25
    const-string v5, "custom_cache_key"

    .line 26
    .line 27
    const-string v6, "data"

    .line 28
    .line 29
    const-string v7, "state"

    .line 30
    .line 31
    const-string v8, "start_time_ms"

    .line 32
    .line 33
    const-string v9, "update_time_ms"

    .line 34
    .line 35
    const-string v10, "content_length"

    .line 36
    .line 37
    const-string v11, "stop_reason"

    .line 38
    .line 39
    const-string v12, "failure_reason"

    .line 40
    .line 41
    const-string v13, "percent_downloaded"

    .line 42
    .line 43
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Landroidx/media3/exoplayer/offline/a;->g:[Ljava/lang/String;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Lv1/a;)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/offline/a;-><init>(Lv1/a;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lv1/a;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/a;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/a;->c:Lv1/a;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ExoPlayerDownloads"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/a;->d:Ljava/lang/Object;

    return-void
.end method

.method static synthetic i(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/c;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/a;->n(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static j(Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const-string v1, ","

    .line 14
    .line 15
    invoke-static {p0, v1}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    array-length v1, p0

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    if-ge v3, v1, :cond_2

    .line 23
    .line 24
    aget-object v4, p0, v3

    .line 25
    .line 26
    const-string v5, "\\."

    .line 27
    .line 28
    invoke-static {v4, v5}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    array-length v5, v4

    .line 33
    const/4 v6, 0x3

    .line 34
    const/4 v7, 0x1

    .line 35
    if-ne v5, v6, :cond_1

    .line 36
    .line 37
    move v5, v7

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v5, v2

    .line 40
    :goto_1
    invoke-static {v5}, Landroidx/media3/common/util/a;->g(Z)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Landroidx/media3/common/StreamKey;

    .line 44
    .line 45
    aget-object v6, v4, v2

    .line 46
    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    aget-object v7, v4, v7

    .line 52
    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const/4 v8, 0x2

    .line 58
    aget-object v4, v4, v8

    .line 59
    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-direct {v5, v6, v7, v4}, Landroidx/media3/common/StreamKey;-><init>(III)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return-object v0
.end method

.method static k(Ljava/util/List;)Ljava/lang/String;
    .locals 5

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
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/media3/common/StreamKey;

    .line 18
    .line 19
    iget v3, v2, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v3, 0x2e

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v4, v2, Landroidx/media3/common/StreamKey;->groupIndex:I

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v2, v2, Landroidx/media3/common/StreamKey;->streamIndex:I

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v2, 0x2c

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-lez p0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    add-int/lit8 p0, p0, -0x1

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method private l()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/offline/a;->e:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/a;->c:Lv1/a;

    .line 14
    .line 15
    invoke-interface {v1}, Lv1/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/a;->a:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v1, v3, v2}, Lv1/c;->b(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x3

    .line 27
    if-eq v1, v2, :cond_3

    .line 28
    .line 29
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/a;->c:Lv1/a;

    .line 30
    .line 31
    invoke-interface {v4}, Lv1/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_2
    iget-object v5, p0, Landroidx/media3/exoplayer/offline/a;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v4, v3, v5, v2}, Lv1/c;->d(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    if-ne v1, v2, :cond_1

    .line 45
    .line 46
    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/offline/a;->r(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :catchall_1
    move-exception v1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v3, "DROP TABLE IF EXISTS "

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "CREATE TABLE "

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, " "

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v3, "(id TEXT PRIMARY KEY NOT NULL,mime_type TEXT,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL,key_set_id BLOB NOT NULL)"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Landroidx/media3/exoplayer/offline/c;

    .line 127
    .line 128
    invoke-direct {p0, v2, v4}, Landroidx/media3/exoplayer/offline/a;->s(Landroidx/media3/exoplayer/offline/c;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    .line 134
    .line 135
    :try_start_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catch_0
    move-exception v1

    .line 140
    goto :goto_4

    .line 141
    :goto_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 142
    .line 143
    .line 144
    throw v1

    .line 145
    :cond_3
    :goto_3
    const/4 v1, 0x1

    .line 146
    iput-boolean v1, p0, Landroidx/media3/exoplayer/offline/a;->e:Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    .line 148
    :try_start_4
    monitor-exit v0

    .line 149
    return-void

    .line 150
    :goto_4
    new-instance v2, Landroidx/media3/database/DatabaseIOException;

    .line 151
    .line 152
    invoke-direct {v2, v1}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    .line 153
    .line 154
    .line 155
    throw v2

    .line 156
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    throw v1
.end method

.method private m(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 1
    :try_start_0
    const-string v7, "start_time_ms ASC"

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a;->c:Lv1/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lv1/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Landroidx/media3/exoplayer/offline/a;->g:[Ljava/lang/String;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v3, p1

    .line 16
    move-object v4, p2

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    new-instance p2, Landroidx/media3/database/DatabaseIOException;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    .line 26
    .line 27
    .line 28
    throw p2
.end method

.method private static n(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/c;
    .locals 15

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {v1, v3, v4}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->e(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v3, 0x3

    .line 48
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Landroidx/media3/exoplayer/offline/a;->j(Ljava/lang/String;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->f(Ljava/util/List;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    array-length v3, v0

    .line 61
    if-lez v3, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->d([B)Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x4

    .line 70
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->b(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v3, 0x5

    .line 79
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->c([B)Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->a()Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    new-instance v14, Landroidx/media3/exoplayer/offline/l;

    .line 92
    .line 93
    invoke-direct {v14}, Landroidx/media3/exoplayer/offline/l;-><init>()V

    .line 94
    .line 95
    .line 96
    const/16 v0, 0xd

    .line 97
    .line 98
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    iput-wide v5, v14, Landroidx/media3/exoplayer/offline/l;->a:J

    .line 103
    .line 104
    const/16 v0, 0xc

    .line 105
    .line 106
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iput v0, v14, Landroidx/media3/exoplayer/offline/l;->b:F

    .line 111
    .line 112
    const/4 v0, 0x6

    .line 113
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-ne v5, v1, :cond_1

    .line 118
    .line 119
    const/16 v0, 0xb

    .line 120
    .line 121
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    :cond_1
    move v13, v2

    .line 126
    new-instance v0, Landroidx/media3/exoplayer/offline/c;

    .line 127
    .line 128
    const/4 v1, 0x7

    .line 129
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 130
    .line 131
    .line 132
    move-result-wide v6

    .line 133
    const/16 v1, 0x8

    .line 134
    .line 135
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 136
    .line 137
    .line 138
    move-result-wide v8

    .line 139
    const/16 v1, 0x9

    .line 140
    .line 141
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 142
    .line 143
    .line 144
    move-result-wide v10

    .line 145
    const/16 v1, 0xa

    .line 146
    .line 147
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    move-object v3, v0

    .line 152
    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/offline/c;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/l;)V

    .line 153
    .line 154
    .line 155
    return-object v0
.end method

.method private static o(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/c;
    .locals 15

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Landroidx/media3/exoplayer/offline/a;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->e(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Landroidx/media3/exoplayer/offline/a;->j(Ljava/lang/String;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->f(Ljava/util/List;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v2, 0x4

    .line 59
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->b(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v3, 0x5

    .line 68
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->c([B)Landroidx/media3/exoplayer/offline/DownloadRequest$b;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->a()Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    new-instance v14, Landroidx/media3/exoplayer/offline/l;

    .line 81
    .line 82
    invoke-direct {v14}, Landroidx/media3/exoplayer/offline/l;-><init>()V

    .line 83
    .line 84
    .line 85
    const/16 v0, 0xd

    .line 86
    .line 87
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    iput-wide v5, v14, Landroidx/media3/exoplayer/offline/l;->a:J

    .line 92
    .line 93
    const/16 v0, 0xc

    .line 94
    .line 95
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput v0, v14, Landroidx/media3/exoplayer/offline/l;->b:F

    .line 100
    .line 101
    const/4 v0, 0x6

    .line 102
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-ne v5, v2, :cond_0

    .line 107
    .line 108
    const/16 v0, 0xb

    .line 109
    .line 110
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    :cond_0
    move v13, v1

    .line 115
    new-instance v0, Landroidx/media3/exoplayer/offline/c;

    .line 116
    .line 117
    const/4 v1, 0x7

    .line 118
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 119
    .line 120
    .line 121
    move-result-wide v6

    .line 122
    const/16 v1, 0x8

    .line 123
    .line 124
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 125
    .line 126
    .line 127
    move-result-wide v8

    .line 128
    const/16 v1, 0x9

    .line 129
    .line 130
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 131
    .line 132
    .line 133
    move-result-wide v10

    .line 134
    const/16 v1, 0xa

    .line 135
    .line 136
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    move-object v3, v0

    .line 141
    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/offline/c;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/l;)V

    .line 142
    .line 143
    .line 144
    return-object v0
.end method

.method private static varargs p([I)Ljava/lang/String;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    const-string p0, "1"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "state"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " IN ("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    array-length v2, p0

    .line 24
    if-ge v1, v2, :cond_2

    .line 25
    .line 26
    if-lez v1, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x2c

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_1
    aget v2, p0, v1

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/16 p0, 0x29

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method private static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "dash"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "application/dash+xml"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "hls"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string p0, "application/x-mpegURL"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string v0, "ss"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    const-string p0, "application/vnd.ms-sstr+xml"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string p0, "video/x-unknown"

    .line 35
    .line 36
    return-object p0
.end method

.method private r(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 9
    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    invoke-static {v3, v2}, Landroidx/media3/common/util/a1;->t1(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const-string v16, "percent_downloaded"

    .line 20
    .line 21
    const-string v17, "bytes_downloaded"

    .line 22
    .line 23
    const-string v4, "id"

    .line 24
    .line 25
    const-string v5, "title"

    .line 26
    .line 27
    const-string v6, "uri"

    .line 28
    .line 29
    const-string v7, "stream_keys"

    .line 30
    .line 31
    const-string v8, "custom_cache_key"

    .line 32
    .line 33
    const-string v9, "data"

    .line 34
    .line 35
    const-string v10, "state"

    .line 36
    .line 37
    const-string v11, "start_time_ms"

    .line 38
    .line 39
    const-string v12, "update_time_ms"

    .line 40
    .line 41
    const-string v13, "content_length"

    .line 42
    .line 43
    const-string v14, "stop_reason"

    .line 44
    .line 45
    const-string v15, "failure_reason"

    .line 46
    .line 47
    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v4, v1, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    move-object/from16 v3, p1

    .line 59
    .line 60
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-static {v2}, Landroidx/media3/exoplayer/offline/a;->o(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/c;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    move-object v3, v0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :goto_1
    if-eqz v2, :cond_2

    .line 86
    .line 87
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    move-object v2, v0

    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_2
    throw v3
.end method

.method private s(Landroidx/media3/exoplayer/offline/c;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadRequest;->keySetId:[B

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/media3/common/util/a1;->f:[B

    .line 8
    .line 9
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 15
    .line 16
    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "id"

    .line 19
    .line 20
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 24
    .line 25
    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->mimeType:Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, "mime_type"

    .line 28
    .line 29
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 33
    .line 34
    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "uri"

    .line 41
    .line 42
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 46
    .line 47
    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->streamKeys:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {v2}, Landroidx/media3/exoplayer/offline/a;->k(Ljava/util/List;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "stream_keys"

    .line 54
    .line 55
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 59
    .line 60
    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    .line 61
    .line 62
    const-string v3, "custom_cache_key"

    .line 63
    .line 64
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 68
    .line 69
    iget-object v2, v2, Landroidx/media3/exoplayer/offline/DownloadRequest;->data:[B

    .line 70
    .line 71
    const-string v3, "data"

    .line 72
    .line 73
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 74
    .line 75
    .line 76
    iget v2, p1, Landroidx/media3/exoplayer/offline/c;->b:I

    .line 77
    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v3, "state"

    .line 83
    .line 84
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    .line 86
    .line 87
    iget-wide v2, p1, Landroidx/media3/exoplayer/offline/c;->c:J

    .line 88
    .line 89
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v3, "start_time_ms"

    .line 94
    .line 95
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    .line 97
    .line 98
    iget-wide v2, p1, Landroidx/media3/exoplayer/offline/c;->d:J

    .line 99
    .line 100
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v3, "update_time_ms"

    .line 105
    .line 106
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    .line 108
    .line 109
    iget-wide v2, p1, Landroidx/media3/exoplayer/offline/c;->e:J

    .line 110
    .line 111
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "content_length"

    .line 116
    .line 117
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    .line 119
    .line 120
    iget v2, p1, Landroidx/media3/exoplayer/offline/c;->f:I

    .line 121
    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const-string v3, "stop_reason"

    .line 127
    .line 128
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    .line 130
    .line 131
    iget v2, p1, Landroidx/media3/exoplayer/offline/c;->g:I

    .line 132
    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const-string v3, "failure_reason"

    .line 138
    .line 139
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/c;->b()F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const-string v3, "percent_downloaded"

    .line 151
    .line 152
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/c;->a()J

    .line 156
    .line 157
    .line 158
    move-result-wide v2

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const-string v2, "bytes_downloaded"

    .line 164
    .line 165
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    .line 167
    .line 168
    const-string p1, "key_set_id"

    .line 169
    .line 170
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 174
    .line 175
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 177
    .line 178
    .line 179
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/a;->l()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "stop_reason"

    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Landroidx/media3/exoplayer/offline/a;->c:Lv1/a;

    .line 19
    .line 20
    invoke-interface {p2}, Lv1/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    sget-object v3, Landroidx/media3/exoplayer/offline/a;->f:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, " AND "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, "id = ?"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    filled-new-array {p1}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catch_0
    move-exception p1

    .line 59
    new-instance p2, Landroidx/media3/database/DatabaseIOException;

    .line 60
    .line 61
    invoke-direct {p2, p1}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    .line 62
    .line 63
    .line 64
    throw p2
.end method

.method public b(Landroidx/media3/exoplayer/offline/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/a;->l()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a;->c:Lv1/a;

    .line 5
    .line 6
    invoke-interface {v0}, Lv1/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/offline/a;->s(Landroidx/media3/exoplayer/offline/c;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Landroidx/media3/database/DatabaseIOException;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/a;->l()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a;->c:Lv1/a;

    .line 5
    .line 6
    invoke-interface {v0}, Lv1/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "id = ?"

    .line 13
    .line 14
    filled-new-array {p1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Landroidx/media3/database/DatabaseIOException;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public d(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/a;->l()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "stop_reason"

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/a;->c:Lv1/a;

    .line 19
    .line 20
    invoke-interface {p1}, Lv1/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 25
    .line 26
    sget-object v2, Landroidx/media3/exoplayer/offline/a;->f:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p1

    .line 34
    new-instance v0, Landroidx/media3/database/DatabaseIOException;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public varargs e([I)Landroidx/media3/exoplayer/offline/e;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/a;->l()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/a;->p([I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/offline/a;->m(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Landroidx/media3/exoplayer/offline/a$b;

    .line 14
    .line 15
    invoke-direct {v1, p1, v0}, Landroidx/media3/exoplayer/offline/a$b;-><init>(Landroid/database/Cursor;Landroidx/media3/exoplayer/offline/a$a;)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public f()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/a;->l()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "state"

    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "failure_reason"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/a;->c:Lv1/a;

    .line 30
    .line 31
    invoke-interface {v1}, Lv1/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Landroidx/media3/database/DatabaseIOException;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    .line 46
    .line 47
    .line 48
    throw v1
.end method

.method public g()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/a;->l()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "state"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/a;->c:Lv1/a;

    .line 20
    .line 21
    invoke-interface {v1}, Lv1/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/a;->b:Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, "state = 2"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Landroidx/media3/database/DatabaseIOException;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method

.method public h(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/c;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/a;->l()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "id = ?"

    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/offline/a;->m(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/a;->n(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/c;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception p1

    .line 46
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    throw v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 50
    :goto_1
    new-instance v0, Landroidx/media3/database/DatabaseIOException;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method
