.class public Lcom/mbridge/msdk/tracker/u;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile g:Lcom/mbridge/msdk/tracker/u;


# instance fields
.field private a:Lcom/mbridge/msdk/tracker/m;

.field private b:Lcom/mbridge/msdk/tracker/x;

.field private volatile c:Z

.field private d:I

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/u;->c:Z

    .line 6
    .line 7
    const/16 v0, 0x7530

    .line 8
    .line 9
    iput v0, p0, Lcom/mbridge/msdk/tracker/u;->d:I

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mbridge/msdk/tracker/u;->e:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Lcom/mbridge/msdk/tracker/u$a;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/tracker/u$a;-><init>(Lcom/mbridge/msdk/tracker/u;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/mbridge/msdk/tracker/u;->f:Landroid/os/Handler;

    .line 28
    .line 29
    return-void
.end method

.method public static a()Lcom/mbridge/msdk/tracker/u;
    .locals 2

    .line 8
    sget-object v0, Lcom/mbridge/msdk/tracker/u;->g:Lcom/mbridge/msdk/tracker/u;

    if-nez v0, :cond_1

    .line 9
    const-class v0, Lcom/mbridge/msdk/tracker/u;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/tracker/u;->g:Lcom/mbridge/msdk/tracker/u;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/mbridge/msdk/tracker/u;

    invoke-direct {v1}, Lcom/mbridge/msdk/tracker/u;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/tracker/u;->g:Lcom/mbridge/msdk/tracker/u;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 13
    :cond_1
    :goto_2
    sget-object v0, Lcom/mbridge/msdk/tracker/u;->g:Lcom/mbridge/msdk/tracker/u;

    return-object v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/tracker/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/u;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/u;->f:Landroid/os/Handler;

    .line 2
    .line 3
    iget v1, p0, Lcom/mbridge/msdk/tracker/u;->d:I

    .line 4
    .line 5
    int-to-long v1, v1

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mbridge/msdk/tracker/x;ILorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lcom/mbridge/msdk/tracker/u;->b:Lcom/mbridge/msdk/tracker/x;

    .line 3
    iput p3, p0, Lcom/mbridge/msdk/tracker/u;->d:I

    .line 4
    const-string p3, "monitor"

    invoke-static {p3, p1, p2}, Lcom/mbridge/msdk/tracker/m;->a(Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/tracker/x;)Lcom/mbridge/msdk/tracker/m;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/u;->a:Lcom/mbridge/msdk/tracker/m;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p4}, Lcom/mbridge/msdk/tracker/m;->a(Lorg/json/JSONObject;)V

    .line 6
    iget-object p1, p0, Lcom/mbridge/msdk/tracker/u;->a:Lcom/mbridge/msdk/tracker/m;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/m;->h()Ljava/lang/String;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/u;->c()V

    return-void
.end method

.method public b()V
    .locals 14

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/tracker/m;->b()[Lcom/mbridge/msdk/tracker/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_4

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/mbridge/msdk/tracker/m;->f()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const-string v6, "monitor"

    .line 21
    .line 22
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-nez v6, :cond_3

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/mbridge/msdk/tracker/m;->d()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/tracker/m;->e()[J

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/4 v7, 0x1

    .line 37
    aget-wide v8, v4, v7

    .line 38
    .line 39
    const-wide/16 v10, 0x0

    .line 40
    .line 41
    cmp-long v10, v8, v10

    .line 42
    .line 43
    if-nez v10, :cond_1

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_1
    aget-wide v10, v4, v2

    .line 48
    .line 49
    iget-object v4, p0, Lcom/mbridge/msdk/tracker/u;->e:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const-string v12, ""

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    :try_start_1
    iget-object v4, p0, Lcom/mbridge/msdk/tracker/u;->e:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/String;

    .line 66
    .line 67
    new-instance v13, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    iget-object v4, p0, Lcom/mbridge/msdk/tracker/u;->e:Ljava/util/HashMap;

    .line 92
    .line 93
    new-instance v13, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    invoke-virtual {v4, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-object v4, p0, Lcom/mbridge/msdk/tracker/u;->a:Lcom/mbridge/msdk/tracker/m;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    if-eqz v4, :cond_3

    .line 114
    .line 115
    :try_start_2
    new-instance v4, Lcom/mbridge/msdk/tracker/e;

    .line 116
    .line 117
    const-string v12, "event_lib_monitor"

    .line 118
    .line 119
    invoke-direct {v4, v12}, Lcom/mbridge/msdk/tracker/e;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v7}, Lcom/mbridge/msdk/tracker/e;->a(I)V

    .line 123
    .line 124
    .line 125
    new-instance v7, Lorg/json/JSONObject;

    .line 126
    .line 127
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v12, "key"

    .line 131
    .line 132
    const-string v13, "m_report_rate"

    .line 133
    .line 134
    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    const-string v12, "task_name"

    .line 138
    .line 139
    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    const-string v5, "task_count"

    .line 143
    .line 144
    invoke-virtual {v7, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    const-string v5, "task_session_id"

    .line 148
    .line 149
    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    const-string v5, "task_ts"

    .line 153
    .line 154
    invoke-virtual {v7, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v7}, Lcom/mbridge/msdk/tracker/e;->a(Lorg/json/JSONObject;)V

    .line 158
    .line 159
    .line 160
    iget-object v5, p0, Lcom/mbridge/msdk/tracker/u;->a:Lcom/mbridge/msdk/tracker/m;

    .line 161
    .line 162
    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/tracker/m;->d(Lcom/mbridge/msdk/tracker/e;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_1
    move-exception v4

    .line 167
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 168
    .line 169
    .line 170
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    :cond_4
    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/u;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/u;->c:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/u;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    throw v0
.end method
