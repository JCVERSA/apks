.class public Lcom/transsion/athena/enatha/anehat;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/athena/enatha/anehat;->a:Landroid/os/Handler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "%s"

    .line 4
    .line 5
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-static {v3}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const-string v5, "athena_id"

    .line 14
    .line 15
    invoke-virtual {v4, v5}, Lm4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    :try_start_0
    invoke-static {v3}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;)Lcom/transsion/athena/taaneh/athena$aethna;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-virtual {v7}, Lcom/transsion/athena/taaneh/athena$aethna;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v7

    .line 29
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    new-array v8, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object v7, v8, v0

    .line 36
    .line 37
    invoke-static {v2, v8}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-nez v8, :cond_5

    .line 46
    .line 47
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-nez v8, :cond_5

    .line 52
    .line 53
    invoke-virtual {v4, v5, v7}, Lm4/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_4

    .line 61
    .line 62
    :try_start_1
    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 63
    .line 64
    invoke-static {v3, v4}, Lcom/transsion/athena/taaneh/anehat;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    const-string v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 71
    .line 72
    invoke-static {v3, v4}, Lcom/transsion/athena/taaneh/anehat;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    move v4, v0

    .line 80
    goto :goto_3

    .line 81
    :cond_1
    :goto_1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->S()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-static {v3}, Lcom/transsion/athena/taaneh/anehat;->c(Landroid/content/Context;)Z

    .line 89
    .line 90
    .line 91
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    xor-int/2addr v4, v1

    .line 93
    goto :goto_3

    .line 94
    :catch_1
    :goto_2
    move v4, v1

    .line 95
    :goto_3
    if-eqz v4, :cond_4

    .line 96
    .line 97
    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->c()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    const-string v5, "device_id_transfer"

    .line 106
    .line 107
    const/16 v8, 0x270f

    .line 108
    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    new-instance v4, Lcom/transsion/athena/data/TrackData;

    .line 112
    .line 113
    invoke-direct {v4}, Lcom/transsion/athena/data/TrackData;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v6, "en"

    .line 117
    .line 118
    const/4 v9, 0x2

    .line 119
    invoke-virtual {v4, v6, v5, v9}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    const-string v5, "cnt"

    .line 124
    .line 125
    invoke-virtual {v4, v5, v1, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;II)Lcom/transsion/athena/data/TrackData;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-static {v8}, Lcom/transsion/ga/AthenaAnalytics;->K(I)Lcom/transsion/ga/AthenaAnalytics;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    const-string v6, "data_discard"

    .line 134
    .line 135
    invoke-virtual {v5, v6, v4, v8}, Lcom/transsion/ga/AthenaAnalytics;->g0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_3
    new-instance v4, Lcom/transsion/athena/data/TrackData;

    .line 140
    .line 141
    invoke-direct {v4}, Lcom/transsion/athena/data/TrackData;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v9, "pre_gaid"

    .line 145
    .line 146
    invoke-virtual {v4, v9, v6}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->c()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    const-string v9, "sn"

    .line 155
    .line 156
    invoke-virtual {v4, v9, v6}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v8}, Lcom/transsion/ga/AthenaAnalytics;->K(I)Lcom/transsion/ga/AthenaAnalytics;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v6, v5, v4, v8}, Lcom/transsion/ga/AthenaAnalytics;->g0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    .line 165
    .line 166
    .line 167
    :cond_4
    :goto_4
    move-object v6, v7

    .line 168
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-nez v4, :cond_6

    .line 173
    .line 174
    invoke-static {v6}, Lcom/transsion/athena/taaneh/anehat;->b(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_8

    .line 182
    .line 183
    invoke-static {v3, v0}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-nez v3, :cond_7

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_7
    move v3, v0

    .line 195
    goto :goto_6

    .line 196
    :cond_8
    :goto_5
    move v3, v1

    .line 197
    :goto_6
    if-nez v3, :cond_9

    .line 198
    .line 199
    new-array v1, v1, [Ljava/lang/Object;

    .line 200
    .line 201
    const-string v3, "device gaid and iid are null"

    .line 202
    .line 203
    aput-object v3, v1, v0

    .line 204
    .line 205
    invoke-static {v2, v1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_9
    iget-object v0, p0, Lcom/transsion/athena/enatha/anehat;->a:Landroid/os/Handler;

    .line 209
    .line 210
    const-wide/32 v1, 0x6ddd00

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    .line 215
    .line 216
    return-void
.end method
