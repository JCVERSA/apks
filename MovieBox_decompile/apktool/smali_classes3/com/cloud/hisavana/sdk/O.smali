.class public Lcom/cloud/hisavana/sdk/O;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/O$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".HisavanaContentProvider/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/O;->a:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/O$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/O;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/O;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/O;->a:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getDate()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    sub-long v0, v2, v0

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const-wide/32 v4, 0x5265c00

    .line 23
    .line 24
    .line 25
    cmp-long v0, v0, v4

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/common/util/k0;->c(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setDate(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCurrentShowTimes(I)V

    .line 42
    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public static g()Lcom/cloud/hisavana/sdk/O;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/O$c;->a()Lcom/cloud/hisavana/sdk/O;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public b(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getJson()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getJson()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-class v2, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    :try_end_0
    .catch Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil$GsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    move-object v0, v1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "CloudProviderManager"

    .line 34
    .line 35
    const-string v3, ""

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_1
    return-object v0

    .line 52
    :cond_2
    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    .locals 5

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "getConfigById "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v3, "CloudProviderManager"

    .line 23
    .line 24
    invoke-virtual {v0, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/O;->l()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/O;->d()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    :cond_1
    return-object v1

    .line 55
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/O;->b(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1, v1}, Lcom/cloud/hisavana/sdk/O;->e(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, v3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v1
.end method

.method public d()Ljava/util/Map;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/O;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "CloudProviderManager"

    .line 6
    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "getAllConfig, memory cache is null, query from disk"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v6, "select * from cloudList_room"

    .line 28
    .line 29
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/O;->a:Landroid/net/Uri;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_5

    .line 45
    .line 46
    const-string v2, "code_seat_bean"

    .line 47
    .line 48
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const-string v3, ""

    .line 53
    .line 54
    if-ltz v2, :cond_0

    .line 55
    .line 56
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    goto :goto_4

    .line 63
    :catch_0
    move-exception v2

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance v2, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 73
    .line 74
    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setJson(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v3, "codeSeatId"

    .line 81
    .line 82
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-ltz v3, :cond_2

    .line 87
    .line 88
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCodeSeatId(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    const-string v3, "current_codeseat_show_times"

    .line 96
    .line 97
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-ltz v3, :cond_3

    .line 102
    .line 103
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCurrentShowTimes(I)V

    .line 108
    .line 109
    .line 110
    :cond_3
    const-string v3, "datetime"

    .line 111
    .line 112
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-ltz v3, :cond_4

    .line 117
    .line 118
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setDate(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    if-eqz v0, :cond_8

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :goto_2
    :try_start_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v3, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    .line 149
    if-eqz v0, :cond_8

    .line 150
    .line 151
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :goto_4
    if-eqz v0, :cond_6

    .line 156
    .line 157
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    .line 159
    .line 160
    :cond_6
    throw v1

    .line 161
    :cond_7
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v2, "getAllConfig, memory cache has value"

    .line 166
    .line 167
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_8
    :goto_5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v3, "getAllConfig, size="

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 185
    .line 186
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 201
    .line 202
    return-object v0
.end method

.method public f(Ljava/util/List;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_a

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/O;->d()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    if-eqz v1, :cond_7

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_6

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 50
    .line 51
    if-nez v5, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_2

    .line 63
    .line 64
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 69
    .line 70
    if-eqz v7, :cond_4

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0, v7}, Lcom/cloud/hisavana/sdk/O;->b(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getDate()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v7

    .line 98
    sub-long v7, v2, v7

    .line 99
    .line 100
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v7

    .line 104
    const-wide/32 v9, 0x5265c00

    .line 105
    .line 106
    .line 107
    cmp-long v7, v7, v9

    .line 108
    .line 109
    if-ltz v7, :cond_5

    .line 110
    .line 111
    invoke-virtual {v5, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCurrentShowTimes(I)V

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/common/util/k0;->c(J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v7

    .line 118
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v5, v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setDate(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catch_0
    move-exception p1

    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :cond_5
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getDate()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v5, v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setDate(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCurrentShowTimes()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    invoke-virtual {v5, v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setCurrentShowTimes(I)V

    .line 141
    .line 142
    .line 143
    :goto_1
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLastRequestAdTime()J

    .line 144
    .line 145
    .line 146
    move-result-wide v7

    .line 147
    invoke-virtual {v5, v7, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLastRequestAdTime(J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isAdRequestFail()Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-virtual {v5, v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdRequestFail(Z)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLastShowAdTime()J

    .line 158
    .line 159
    .line 160
    move-result-wide v7

    .line 161
    invoke-virtual {v5, v7, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLastShowAdTime(J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdRequestVer()I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    invoke-virtual {v5, v7}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdRequestVer(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLocalOfflineAdCacheCount()I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    invoke-virtual {v5, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLocalOfflineAdCacheCount(I)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_6
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 181
    .line 182
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 183
    .line 184
    .line 185
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_9

    .line 194
    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 200
    .line 201
    if-eqz v2, :cond_8

    .line 202
    .line 203
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 204
    .line 205
    if-eqz v3, :cond_8

    .line 206
    .line 207
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    new-instance v2, Landroid/content/ContentValues;

    .line 224
    .line 225
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v3, "CloudConfig"

    .line 229
    .line 230
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/O;->a:Landroid/net/Uri;

    .line 238
    .line 239
    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    const-string v1, "true"

    .line 248
    .line 249
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 250
    .line 251
    .line 252
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_4

    .line 254
    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    const-string v2, "CloudProviderManager"

    .line 263
    .line 264
    invoke-virtual {v1, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :cond_a
    :goto_4
    return v0
.end method

.method public h(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 8
    .line 9
    return-object p1
.end method

.method public i(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "1"

    .line 13
    .line 14
    filled-new-array {v0, v2, v1, v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string v1, "CloudProviderManager"

    .line 23
    .line 24
    const-string v6, "SELECT ad_bean FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ? AND ad_request_ver = ( SELECT MAX(ad_request_ver) FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ?);"

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "update config offline ad count------> code seat id:"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, ", selection: "

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ", selectionArgs: "

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/O;->a:Landroid/net/Uri;

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception p1

    .line 101
    goto :goto_5

    .line 102
    :cond_2
    :goto_0
    return-void

    .line 103
    :cond_3
    const/4 v2, 0x0

    .line 104
    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_5

    .line 109
    .line 110
    const-string v3, "ad_bean"

    .line 111
    .line 112
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-ltz v3, :cond_4

    .line 117
    .line 118
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    if-nez v4, :cond_4

    .line 127
    .line 128
    :try_start_2
    const-class v4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 129
    .line 130
    invoke-static {v3, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catchall_0
    const/4 v3, 0x0

    .line 138
    :goto_2
    if-eqz v3, :cond_4

    .line 139
    .line 140
    :try_start_3
    invoke-static {v3}, Lcom/cloud/hisavana/sdk/common/util/g;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_4

    .line 145
    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catchall_1
    move-exception p1

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v5, "updateCodeOfflineAdCount ----> offline ad count is "

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v3, v1, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLocalOfflineAdCacheCount(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    .line 177
    .line 178
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 179
    .line 180
    .line 181
    goto :goto_6

    .line 182
    :goto_3
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :catchall_2
    move-exception v0

    .line 187
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    :goto_4
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 191
    :goto_5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v3, "updateCodeOfflineAdCount error: "

    .line 201
    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :goto_6
    return-void
.end method

.method public j(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isDefaultConfig()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "CloudConfig"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 37
    .line 38
    new-instance v1, Lcom/cloud/hisavana/sdk/O$b;

    .line 39
    .line 40
    invoke-direct {v1, p0, v0}, Lcom/cloud/hisavana/sdk/O$b;-><init>(Lcom/cloud/hisavana/sdk/O;Landroid/content/ContentValues;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/sdk/O$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/O$a;-><init>(Lcom/cloud/hisavana/sdk/O;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/O;->b:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

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
