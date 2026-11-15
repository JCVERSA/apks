.class public abstract Lx6/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lx6/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 2
    .line 3
    new-instance v1, Lx6/a;

    .line 4
    .line 5
    invoke-direct {v1}, Lx6/a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static b(J)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lx6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    sget-object v2, Lx6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v2, v0, v1}, Lx6/z;->setRequestTime(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v2, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-direct {v2, v4, v3, v4}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p0, p1}, Lx6/z;->setLayerId(J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0, v1}, Lx6/z;->setRequestTime(J)V

    .line 47
    .line 48
    .line 49
    sget-object v3, Lx6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :goto_0
    const-string v2, "ADSDK"

    .line 59
    .line 60
    const/4 v3, 0x3

    .line 61
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v4, "ABMemoryCache upsertRequestTimeToMemoryCache onlineLayerMap = "

    .line 74
    .line 75
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v4, Lx6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v4, "ABTEST"

    .line 88
    .line 89
    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    sget-object v2, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 93
    .line 94
    new-instance v3, Lx6/d;

    .line 95
    .line 96
    invoke-direct {v3, p0, p1, v0, v1}, Lx6/d;-><init>(JJ)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public static final c(JJ)V
    .locals 10

    .line 1
    sget-object v0, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v9, Lx6/z;

    .line 12
    .line 13
    const/4 v7, 0x7

    .line 14
    const/4 v8, 0x0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v1, v9

    .line 21
    invoke-direct/range {v1 .. v8}, Lx6/z;-><init>(JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v9, p0, p1}, Lx6/z;->setLayerId(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v9, p2, p3}, Lx6/z;->setRequestTime(J)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Landroid/content/ContentValues;

    .line 31
    .line 32
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string p1, "abData"

    .line 36
    .line 37
    invoke-static {v9}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-virtual {v0, p1, p0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string p3, "ABDiskCache upsertRequestTimeToDiskCache fail, reason = "

    .line 59
    .line 60
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p2, "ABTEST"

    .line 75
    .line 76
    invoke-virtual {p1, p2, p0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method public static d(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V
    .locals 12

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    const-string v1, "ABTEST"

    .line 4
    .line 5
    sget-object v2, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 6
    .line 7
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    sget-object v6, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-eqz v4, :cond_8

    .line 32
    .line 33
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_7

    .line 38
    .line 39
    const-string v5, "layer_id"

    .line 40
    .line 41
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const-string v6, "request_time"

    .line 46
    .line 47
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const-string v7, "ab_info"

    .line 52
    .line 53
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    :cond_0
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    if-ltz v5, :cond_1

    .line 61
    .line 62
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_1
    move-object v8, v3

    .line 75
    :goto_0
    if-eqz v8, :cond_6

    .line 76
    .line 77
    new-instance v9, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    .line 78
    .line 79
    const/4 v10, 0x1

    .line 80
    invoke-direct {v9, v3, v10, v3}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v10

    .line 87
    invoke-virtual {v9, v10, v11}, Lx6/z;->setLayerId(J)V

    .line 88
    .line 89
    .line 90
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    if-ltz v6, :cond_2

    .line 94
    .line 95
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 96
    .line 97
    .line 98
    move-result-wide v10

    .line 99
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move-object v10, v3

    .line 105
    :goto_1
    if-eqz v10, :cond_3

    .line 106
    .line 107
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v10

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    const-wide/16 v10, 0x0

    .line 113
    .line 114
    :goto_2
    invoke-virtual {v9, v10, v11}, Lx6/z;->setRequestTime(J)V

    .line 115
    .line 116
    .line 117
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    if-ltz v7, :cond_4

    .line 121
    .line 122
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    goto :goto_3

    .line 127
    :cond_4
    move-object v10, v3

    .line 128
    :goto_3
    if-eqz v10, :cond_5

    .line 129
    .line 130
    invoke-virtual {v9, v10}, Lx6/z;->setInfo(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9, v10}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->convertLayerInfo(Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v9, v10}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->setAbLayerInfo(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-nez v8, :cond_0

    .line 148
    .line 149
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v6, "ABDiskCache queryAllFromDiskCache success, onlineLayerMap size = "

    .line 159
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v0, v1, v5}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    :try_start_2
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :catch_0
    move-exception v0

    .line 184
    goto :goto_5

    .line 185
    :goto_4
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    :catchall_1
    move-exception v5

    .line 187
    :try_start_4
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 191
    :goto_5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v6, "ABDiskCache queryAllFromDiskCache fail, reason = "

    .line 198
    .line 199
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v4, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_8
    :goto_6
    sget-object v0, Lx6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 217
    .line 218
    const-string v0, "map"

    .line 219
    .line 220
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    sget-object v0, Lx6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 226
    .line 227
    .line 228
    sput-object v2, Lx6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 229
    .line 230
    sget-object v0, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 231
    .line 232
    const-string v0, "ABDiskCache queryFromAssets from localABDataJson, localLayerMap size = "

    .line 233
    .line 234
    :try_start_5
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    const-string v4, "key_local_ab_data_version_code"

    .line 239
    .line 240
    invoke-virtual {v2, v4}, Ll7/a;->f(Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    invoke-static {}, Lk7/c;->m()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eq v2, v4, :cond_9

    .line 249
    .line 250
    invoke-static {}, Lcom/cloud/hisavana/abtestkit/d;->b()Ljava/util/concurrent/ConcurrentHashMap;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    goto/16 :goto_a

    .line 255
    .line 256
    :catch_1
    move-exception v0

    .line 257
    goto :goto_9

    .line 258
    :cond_9
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v4}, Ll7/a;->n()Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_a

    .line 267
    .line 268
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    const-string v4, "key_local_ab_data_json"

    .line 273
    .line 274
    invoke-virtual {v2, v4}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    goto :goto_7

    .line 279
    :cond_a
    int-to-long v4, v2

    .line 280
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-static {v2}, Lcom/cloud/hisavana/abtestkit/d;->a(Ljava/lang/Long;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    :goto_7
    if-eqz v2, :cond_d

    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-nez v4, :cond_b

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_b
    new-instance v4, Lcom/cloud/hisavana/abtestkit/c;

    .line 298
    .line 299
    invoke-direct {v4}, Lcom/cloud/hisavana/abtestkit/c;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-static {v2, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 311
    .line 312
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    if-eqz v2, :cond_c

    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    goto :goto_8

    .line 332
    :cond_c
    move-object v0, v3

    .line 333
    :goto_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v4, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 341
    .line 342
    .line 343
    move-object v3, v2

    .line 344
    goto :goto_a

    .line 345
    :goto_9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v5, "ABDiskCache queryFromAssets fail, reason = "

    .line 352
    .line 353
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :cond_d
    :goto_a
    sget-object v0, Lx6/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 371
    .line 372
    if-eqz v0, :cond_e

    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 375
    .line 376
    .line 377
    :cond_e
    sput-object v3, Lx6/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 378
    .line 379
    if-eqz p0, :cond_f

    .line 380
    .line 381
    invoke-interface {p0}, Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;->onInitComplete()V

    .line 382
    .line 383
    .line 384
    :cond_f
    return-void
.end method

.method public static e(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V
    .locals 3

    .line 1
    sget-object v0, Lx6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Lx6/z;->getLayerId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lx6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v2, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    .line 18
    .line 19
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 20
    .line 21
    new-instance v1, Lx6/c;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lx6/c;-><init>(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final f()V
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/cloud/hisavana/abtestkit/d;->b:Landroid/net/Uri;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "ABDiskCache deleteTable fail, reason = "

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v2, "ABTEST"

    .line 55
    .line 56
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public static g(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V
    .locals 2

    .line 1
    sget-object v0, Lx6/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "ABTEST"

    .line 14
    .line 15
    const-string v1, "ABMemoryCache queryAllData Initialization has been completed"

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->c()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    new-instance v1, Lx6/b;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lx6/b;-><init>(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p0}, Lx6/e;->d(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public static final h(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lx6/z;->getLayerId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    :try_start_0
    new-instance v10, Lx6/z;

    .line 10
    .line 11
    const/4 v8, 0x7

    .line 12
    const/4 v9, 0x0

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v2, v10

    .line 19
    invoke-direct/range {v2 .. v9}, Lx6/z;-><init>(JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v10, v0, v1}, Lx6/z;->setLayerId(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lx6/z;->getRequestTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {v10, v0, v1}, Lx6/z;->setRequestTime(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lx6/z;->getInfo()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v10, p0}, Lx6/z;->setInfo(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Landroid/content/ContentValues;

    .line 40
    .line 41
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v0, "abData"

    .line 45
    .line 46
    invoke-static {v10}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v1, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 62
    .line 63
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "ABDiskCache upsertToDiskCache fail, reason = "

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string v1, "ABTEST"

    .line 91
    .line 92
    invoke-virtual {v0, v1, p0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    :cond_0
    :goto_0
    return-void
.end method

.method public static final i(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lx6/e;->d(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
