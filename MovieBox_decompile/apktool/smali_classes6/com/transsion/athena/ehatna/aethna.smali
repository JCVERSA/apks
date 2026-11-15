.class public Lcom/transsion/athena/ehatna/aethna;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile a:Lcom/transsion/athena/ehatna/aethna;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/transsion/athena/ehatna/athena;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private volatile f:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/transsion/athena/ehatna/aethna;->e:J

    .line 7
    .line 8
    return-void
.end method

.method public static b()Lcom/transsion/athena/ehatna/aethna;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/athena/ehatna/aethna;->a:Lcom/transsion/athena/ehatna/aethna;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/transsion/athena/ehatna/aethna;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/transsion/athena/ehatna/aethna;->a:Lcom/transsion/athena/ehatna/aethna;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/transsion/athena/ehatna/aethna;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/transsion/athena/ehatna/aethna;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/transsion/athena/ehatna/aethna;->a:Lcom/transsion/athena/ehatna/aethna;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

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
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/athena/ehatna/aethna;->a:Lcom/transsion/athena/ehatna/aethna;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public a(JJ)J
    .locals 2

    .line 8
    iget-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    iget-wide v0, p1, Lcom/transsion/athena/ehatna/athena;->a:J

    add-long/2addr v0, p3

    iget-wide p1, p1, Lcom/transsion/athena/ehatna/athena;->b:J

    sub-long/2addr v0, p1

    return-wide v0

    :cond_0
    return-wide p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/transsion/athena/data/Track;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    iget-wide v0, v0, Lcom/transsion/athena/ehatna/athena;->a:J

    .line 3
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackErTs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    iget-wide v4, v4, Lcom/transsion/athena/ehatna/athena;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide v2, 0x17c376f1800L

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v0

    .line 5
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/transsion/athena/data/Track;->setTrackTs(J)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/athena/data/Track;->setBootId(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 11
    iput-boolean p1, p0, Lcom/transsion/athena/ehatna/aethna;->f:Z

    if-eqz p1, :cond_0

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/athena/ehatna/aethna;->e:J

    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 9

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->f:Z

    const-wide/16 v1, -0x1

    .line 14
    iput-wide v1, p0, Lcom/transsion/athena/ehatna/aethna;->e:J

    const-wide v1, 0x17c376f1800L

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    new-instance v8, Lcom/transsion/athena/ehatna/athena;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    move-object v2, v8

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/athena/ehatna/athena;-><init>(JJLjava/lang/String;)V

    iput-object v8, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    sub-long/2addr v0, p1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 v0, 0x927c0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    .line 19
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 20
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "base_time"

    :try_start_1
    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-wide v2, v0, Lcom/transsion/athena/ehatna/athena;->a:J

    const-string v4, "serverTime"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget-wide v2, v0, Lcom/transsion/athena/ehatna/athena;->b:J

    const-string v4, "elapsedRealtime"

    .line 23
    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, v0, Lcom/transsion/athena/ehatna/athena;->c:Ljava/lang/String;

    const-string v2, "bootId"

    .line 24
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1, p2, v0}, Lm4/a;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 28
    new-instance p1, Lcom/transsion/athena/ehatna/athena;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/athena/ehatna/athena;-><init>(JJLjava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    .line 29
    iput-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    .line 30
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    return p1
.end method

.method public c()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/transsion/athena/ehatna/athena;->a:J

    .line 6
    .line 7
    iget-wide v3, v0, Lcom/transsion/athena/ehatna/athena;->b:J

    .line 8
    .line 9
    sub-long/2addr v1, v3

    .line 10
    return-wide v1

    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0
.end method

.method public d()V
    .locals 8

    .line 1
    const-string v0, "base_time"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lm4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "baseTimeJs = "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    new-instance v2, Lcom/transsion/athena/ehatna/athena;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Lcom/transsion/athena/ehatna/athena;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 58
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    .line 59
    .line 60
    const-string v3, "/proc/sys/kernel/random/boot_id"

    .line 61
    .line 62
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .line 64
    .line 65
    const/16 v3, 0x400

    .line 66
    .line 67
    :try_start_2
    new-array v3, v3, [B

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-lez v4, :cond_2

    .line 74
    .line 75
    new-instance v5, Ljava/lang/String;

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    move-object v1, v2

    .line 91
    goto :goto_1

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    :goto_1
    if-eqz v1, :cond_1

    .line 94
    .line 95
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 96
    .line 97
    .line 98
    :catch_1
    :cond_1
    throw v0

    .line 99
    :catch_2
    move-object v2, v1

    .line 100
    :catch_3
    if-eqz v2, :cond_3

    .line 101
    .line 102
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 103
    .line 104
    .line 105
    :catch_4
    :cond_3
    move-object v3, v1

    .line 106
    :catch_5
    :goto_2
    iput-object v3, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    .line 109
    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_5

    .line 117
    .line 118
    iget-object v2, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    .line 121
    .line 122
    iget-object v3, v3, Lcom/transsion/athena/ehatna/athena;->c:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    iget-object v2, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    .line 135
    .line 136
    iget-wide v2, v2, Lcom/transsion/athena/ehatna/athena;->a:J

    .line 137
    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 139
    .line 140
    .line 141
    move-result-wide v4

    .line 142
    iget-object v6, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    .line 143
    .line 144
    iget-wide v6, v6, Lcom/transsion/athena/ehatna/athena;->b:J

    .line 145
    .line 146
    sub-long/2addr v4, v6

    .line 147
    add-long/2addr v2, v4

    .line 148
    sub-long/2addr v2, v0

    .line 149
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    const-wide/32 v2, 0x927c0

    .line 154
    .line 155
    .line 156
    cmp-long v0, v0, v2

    .line 157
    .line 158
    if-lez v0, :cond_5

    .line 159
    .line 160
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    iput-object v1, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    .line 165
    .line 166
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v1}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const-string v2, ""

    .line 175
    .line 176
    invoke-virtual {v1, v0, v2}, Lm4/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_5
    :goto_3
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public f()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/ehatna/aethna;->e:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-wide v4, p0, Lcom/transsion/athena/ehatna/aethna;->e:J

    .line 15
    .line 16
    sub-long/2addr v2, v4

    .line 17
    const-wide/32 v4, 0xea60

    .line 18
    .line 19
    .line 20
    cmp-long v0, v2, v4

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lcom/transsion/athena/ehatna/athena;->c:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    :cond_1
    const/4 v1, 0x1

    .line 40
    :cond_2
    return v1
.end method
