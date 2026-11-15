.class public Lcom/mbridge/msdk/setting/g;
.super Lcom/mbridge/msdk/setting/b;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/setting/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static C(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/mbridge/msdk/setting/b;->b(Lorg/json/JSONObject;)Lcom/mbridge/msdk/setting/g;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "Setting"

    .line 25
    .line 26
    const-string v2, "parseSetting"

    .line 27
    .line 28
    invoke-static {v0, v2, p0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object v1
.end method


# virtual methods
.method public L0()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cc"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->k()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "cfc"

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->m()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "cfb"

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->B0()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v1, "plct"

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->Z()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string v1, "awct"

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->i()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v1, "rurl"

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->I0()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string v1, "ujds"

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->J0()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "plctb"

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->a0()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    const-string v1, "tcto"

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->o0()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string v1, "mv_wildcard"

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->P()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    const-string v1, "is_startup_crashsystem"

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->E()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    const-string v1, "sfct"

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->l0()J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    const-string v1, "pcrn"

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->W()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    const-string v1, "adct"

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->e()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    const-string v1, "atrqt"

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->h()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    const-string v1, "omsdkjs_url"

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->U()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    const-string v1, "mcs"

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->N()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    const-string v1, "GDPR_area"

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->E0()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    const-string v1, "alrbs"

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->f()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    const-string v1, "ct"

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->t()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    .line 185
    .line 186
    const-string v1, "isDefault"

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->D()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    const-string v1, "st_net"

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->n0()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    .line 203
    .line 204
    const-string v1, "vtag"

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/mbridge/msdk/setting/b;->v0()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 220
    .line 221
    if-eqz v1, :cond_0

    .line 222
    .line 223
    const-string v1, "Setting"

    .line 224
    .line 225
    const-string v2, "toJSON"

    .line 226
    .line 227
    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0
.end method
