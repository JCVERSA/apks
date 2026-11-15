.class public Lcom/transsion/athena/hatnea/athaen;
.super Lcom/transsion/athena/hatnea/anateh;
.source "source.java"


# instance fields
.field private final c:Lcom/transsion/athena/config/data/model/athena;

.field private d:J

.field private final e:I

.field private final f:Lcom/transsion/athena/aethna/aethna;


# direct methods
.method public constructor <init>(Lcom/transsion/athena/config/data/model/athena;JLcom/transsion/athena/aethna/aethna;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/transsion/athena/hatnea/anateh;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->b(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/transsion/athena/hatnea/athaen;->e:I

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/athena;->k()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    cmp-long v1, v1, v3

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/athena;->d()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    const-string v0, "dimensionChanged, so set appConfig version to 0"

    .line 31
    .line 32
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3, v4}, Lcom/transsion/athena/config/data/model/athena;->c(J)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iput-object p1, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 39
    .line 40
    iput-wide p2, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    .line 41
    .line 42
    iput-object p4, p0, Lcom/transsion/athena/hatnea/athaen;->f:Lcom/transsion/athena/aethna/aethna;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    const-string v3, "sname"

    .line 12
    .line 13
    :try_start_1
    iget-object v4, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/athena;->b()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    .line 25
    .line 26
    const-string v3, "sdkver"

    .line 27
    .line 28
    :try_start_2
    iget-object v4, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/athena;->b()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {v4}, Lcom/transsion/athena/config/data/model/ehanat;->a(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v2, ""

    .line 55
    .line 56
    :goto_0
    iget-object v3, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/athena;->c()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v4, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/athena;->k()J

    .line 69
    .line 70
    .line 71
    move-result-wide v4

    .line 72
    iget-object v6, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 73
    .line 74
    invoke-virtual {v6}, Lcom/transsion/athena/config/data/model/athena;->b()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    invoke-static {v3, v2, v4, v5, v6}, Lcom/transsion/athena/hatnea/anehat;->a(Ljava/lang/String;Ljava/lang/String;JI)Lcom/transsion/athena/hatnea/ehanat;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget v3, v2, Lcom/transsion/athena/hatnea/ehanat;->a:I

    .line 83
    .line 84
    const-string v4, "<-- appIdConfig:%s"

    .line 85
    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    if-eq v3, v1, :cond_0

    .line 89
    .line 90
    iget-object v2, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->g()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    add-int/2addr v3, v1

    .line 97
    invoke-virtual {v2, v3}, Lcom/transsion/athena/config/data/model/athena;->e(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 102
    .line 103
    const-string v2, "NOT_MODIFIED"

    .line 104
    .line 105
    aput-object v2, v1, v0

    .line 106
    .line 107
    invoke-static {v4, v1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 111
    .line 112
    iget v2, p0, Lcom/transsion/athena/hatnea/athaen;->e:I

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/transsion/athena/config/data/model/athena;->b(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 118
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    iget-wide v4, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    .line 124
    .line 125
    add-long/2addr v2, v4

    .line 126
    invoke-virtual {v1, v2, v3}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    iget-object v2, v2, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v2, Ljava/lang/String;

    .line 133
    .line 134
    new-array v3, v1, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v2, v3, v0

    .line 137
    .line 138
    invoke-static {v4, v3}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v3, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 146
    .line 147
    invoke-virtual {v0, v3, v2}, Lcom/transsion/athena/aethna/athena;->a(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 151
    .line 152
    iget v2, p0, Lcom/transsion/athena/hatnea/athaen;->e:I

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Lcom/transsion/athena/config/data/model/athena;->b(I)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->e()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-lez v0, :cond_2

    .line 164
    .line 165
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->e()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    int-to-long v2, v0

    .line 172
    const-wide/32 v4, 0x36ee80

    .line 173
    .line 174
    .line 175
    mul-long/2addr v2, v4

    .line 176
    iput-wide v2, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    .line 177
    .line 178
    :cond_2
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 179
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide v2

    .line 184
    iget-wide v4, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    .line 185
    .line 186
    add-long/2addr v2, v4

    .line 187
    invoke-virtual {v0, v2, v3}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    .line 188
    .line 189
    .line 190
    move v0, v1

    .line 191
    :goto_1
    iget-object v1, p0, Lcom/transsion/athena/hatnea/athaen;->f:Lcom/transsion/athena/aethna/aethna;

    .line 192
    .line 193
    if-eqz v1, :cond_3

    .line 194
    .line 195
    iget-object v2, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->b()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-virtual {v1, v2, v0}, Lcom/transsion/athena/aethna/aethna;->a(IZ)V

    .line 202
    .line 203
    .line 204
    :cond_3
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Retrieve-"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/athena;->b()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "-Config"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
