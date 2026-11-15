.class Lcom/facebook/biddingkit/logging/f;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile b:Lcom/facebook/biddingkit/logging/f;


# instance fields
.field private final a:Lcom/facebook/biddingkit/logging/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/facebook/biddingkit/logging/d;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "EventLogsDatabase.db"

    .line 9
    .line 10
    invoke-direct {v0, p1, v3, v1, v2}, Lcom/facebook/biddingkit/logging/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/facebook/biddingkit/logging/f;->a:Lcom/facebook/biddingkit/logging/d;

    .line 14
    .line 15
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/biddingkit/logging/f;->d()Lcom/facebook/biddingkit/logging/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/facebook/biddingkit/logging/f;->c()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "EVENT_LOGS"

    .line 10
    .line 11
    const-string v2, "ID=?"

    .line 12
    .line 13
    filled-new-array {p0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, v1, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    const-string v0, "EventLogDatabaseAdapter"

    .line 23
    .line 24
    const-string v1, "Failed deleting entry"

    .line 25
    .line 26
    invoke-static {v0, v1, p0}, Lcom/facebook/biddingkit/logging/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public static d()Lcom/facebook/biddingkit/logging/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/biddingkit/logging/f;->b:Lcom/facebook/biddingkit/logging/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public static e(I)Ljava/util/List;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/facebook/biddingkit/logging/f;->d()Lcom/facebook/biddingkit/logging/f;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/facebook/biddingkit/logging/f;->c()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "EVENT_LOGS"

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "exception"

    .line 28
    .line 29
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const-string v3, "auction_id"

    .line 34
    .line 35
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const-string v4, "ID"

    .line 40
    .line 41
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const-string v5, "bidder_data"

    .line 46
    .line 47
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    if-lez p0, :cond_1

    .line 58
    .line 59
    new-instance v6, Lcom/facebook/biddingkit/logging/e;

    .line 60
    .line 61
    invoke-direct {v6}, Lcom/facebook/biddingkit/logging/e;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v6, v7}, Lcom/facebook/biddingkit/logging/e;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v6, v7}, Lcom/facebook/biddingkit/logging/e;->a(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v6, v7}, Lcom/facebook/biddingkit/logging/e;->c(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v7, Lorg/json/JSONObject;

    .line 86
    .line 87
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_0

    .line 103
    .line 104
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    check-cast v9, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    const-string v11, "result"

    .line 115
    .line 116
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v6, v9, v11}, Lcom/facebook/biddingkit/logging/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v11, "cpm_cents"

    .line 124
    .line 125
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v6, v9, v11}, Lcom/facebook/biddingkit/logging/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v11, "error"

    .line 133
    .line 134
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-virtual {v6, v9, v11}, Lcom/facebook/biddingkit/logging/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v11, "latency_ms"

    .line 142
    .line 143
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-virtual {v6, v9, v10}, Lcom/facebook/biddingkit/logging/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    goto :goto_2

    .line 153
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    add-int/lit8 p0, p0, -0x1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :goto_2
    const-string v1, "EventLogDatabaseAdapter"

    .line 164
    .line 165
    const-string v2, "Failed getting rows"

    .line 166
    .line 167
    invoke-static {v1, v2, p0}, Lcom/facebook/biddingkit/logging/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    :goto_3
    return-object v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/biddingkit/logging/f;->b:Lcom/facebook/biddingkit/logging/f;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/facebook/biddingkit/logging/f;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/facebook/biddingkit/logging/f;->b:Lcom/facebook/biddingkit/logging/f;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/facebook/biddingkit/logging/f;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/facebook/biddingkit/logging/f;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/facebook/biddingkit/logging/f;->b:Lcom/facebook/biddingkit/logging/f;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    return-void
.end method

.method public static g(Lcom/facebook/biddingkit/logging/e;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "auction_id"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/e;->i()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "exception"

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/e;->l()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "bidder_data"

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/e;->h()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/facebook/biddingkit/logging/f;->d()Lcom/facebook/biddingkit/logging/f;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/f;->c()Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v1, "EVENT_LOGS"

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    const-string v0, "EventLogDatabaseAdapter"

    .line 57
    .line 58
    const-string v1, "Failed inserting an entry"

    .line 59
    .line 60
    invoke-static {v0, v1, p0}, Lcom/facebook/biddingkit/logging/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/f;->c()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/f;->a:Lcom/facebook/biddingkit/logging/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    const-string v1, "EventLogDatabaseAdapter"

    .line 10
    .line 11
    const-string v2, "Failed getting Writable Database"

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Lcom/facebook/biddingkit/logging/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/f;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
