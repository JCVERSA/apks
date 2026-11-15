.class public Lcom/transsion/athena/config/data/model/TidConfigBean;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final REASON_ATHENA_DISABLE:I = 0x64

.field public static final REASON_CONFIG_NOT_READY:I = 0x66

.field public static final REASON_DB_EXCEPTION:I = 0x6a

.field public static final REASON_INITIALIZING:I = 0x65

.field public static final REASON_NONE:I = 0x0

.field public static final REASON_SAMPLING_RATE:I = 0x69

.field public static final REASON_TID_DISABLE:I = 0x68

.field public static final REASON_TID_NOT_EXIST:I = 0x67


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcom/transsion/athena/config/data/model/aatnhe;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/aatnhe;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/transsion/athena/config/data/model/aatnhe;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/aatnhe;-><init>()V

    .line 5
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->a:J

    .line 6
    iput-object p3, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->b:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/transsion/athena/config/data/model/TidConfigBean;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Lcom/transsion/athena/config/data/model/TidConfigBean;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/TidConfigBean;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "tid"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setTid(J)V

    .line 15
    .line 16
    .line 17
    const-string v1, "tidConfig"

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/transsion/athena/config/data/model/aatnhe;->a(Lorg/json/JSONObject;)Lcom/transsion/athena/config/data/model/aatnhe;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setTidConfig(Lcom/transsion/athena/config/data/model/aatnhe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method


# virtual methods
.method public allowTrack(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->d:J

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->b()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    add-long/2addr v2, v4

    .line 24
    cmp-long p1, p1, v2

    .line 25
    .line 26
    if-ltz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_0
    return v1
.end method

.method public allowUpload(J)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->j()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/aatnhe;->i()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide/16 v4, -0x1

    .line 14
    .line 15
    cmp-long v6, v0, v4

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    if-eqz v6, :cond_5

    .line 19
    .line 20
    cmp-long v4, v2, v4

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    sub-long/2addr p1, v0

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    cmp-long p1, p1, v2

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    if-ltz p1, :cond_1

    .line 34
    .line 35
    move p1, p2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move p1, v7

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->f()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-lez v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->f()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/aatnhe;->a()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-gt v0, v1, :cond_2

    .line 59
    .line 60
    move v0, p2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v0, v7

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/aatnhe;->g()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    if-ne v1, p2, :cond_5

    .line 72
    .line 73
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aatnhe;->d(Landroid/content/Context;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    :cond_3
    if-nez p1, :cond_4

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    :cond_4
    move v7, p2

    .line 88
    :cond_5
    :goto_2
    return v7
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 2
    .line 3
    return-object v0
.end method

.method public inSamplingRange()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/aatnhe;->c()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/aatnhe;->e()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/aatnhe;->m()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/aatnhe;->l()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x1

    .line 32
    const/16 v6, 0x64

    .line 33
    .line 34
    if-ne v3, v6, :cond_0

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    if-ne v1, v6, :cond_0

    .line 39
    .line 40
    if-ne v2, v5, :cond_0

    .line 41
    .line 42
    if-ne v4, v5, :cond_0

    .line 43
    .line 44
    return v5

    .line 45
    :cond_0
    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->a()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_1

    .line 54
    .line 55
    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-static {v7}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const/4 v9, 0x0

    .line 73
    if-nez v8, :cond_3

    .line 74
    .line 75
    mul-int/2addr v2, v6

    .line 76
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    rem-int/2addr v7, v2

    .line 85
    if-lt v7, v0, :cond_2

    .line 86
    .line 87
    if-gt v7, v1, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v2, v9

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    :goto_1
    move v2, v5

    .line 93
    :goto_2
    sget-object v7, Lcom/transsion/athena/aethna/athena;->b:Ljava/security/SecureRandom;

    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    mul-int/2addr v4, v6

    .line 104
    rem-int/2addr v7, v4

    .line 105
    if-ge v7, v3, :cond_4

    .line 106
    .line 107
    move v3, v5

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    move v3, v9

    .line 110
    :goto_3
    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->b()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_5

    .line 115
    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v6, "gaidHashHit: "

    .line 122
    .line 123
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v6, " eventHashHit: "

    .line 130
    .line 131
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v6, " gmin = "

    .line 138
    .line 139
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v0, " gmax = "

    .line 146
    .line 147
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    if-eqz v2, :cond_6

    .line 161
    .line 162
    if-eqz v3, :cond_6

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_6
    move v5, v9

    .line 166
    :goto_4
    return v5
.end method

.method public isCacheEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public isEnable()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/aatnhe;->i()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLastTTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->d:J

    .line 2
    .line 3
    return-void
.end method

.method public setTid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->a:J

    .line 2
    .line 3
    return-void
.end method

.method public setTidConfig(Lcom/transsion/athena/config/data/model/aatnhe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 2
    .line 3
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const-string v1, "tid"

    .line 7
    .line 8
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    const-string v1, "tidConfig"

    .line 17
    .line 18
    :try_start_2
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/aatnhe;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/aatnhe;->n()Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    return-object v0
.end method
