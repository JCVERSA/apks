.class public Lcom/mbridge/msdk/advanced/common/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/common/a;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->t()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/common/a;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->q()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/common/a;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->d()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/common/a;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/mbridge/msdk/advanced/common/a;->e:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/common/a;->f:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/common/a;->g:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->c()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/common/a;->h:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/common/a;->i:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/common/a;->j:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/t0;->f(Landroid/content/Context;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/common/a;->k:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/t0;->d(Landroid/content/Context;)F

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/common/a;->m:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 107
    .line 108
    const/4 v0, 0x2

    .line 109
    if-ne p1, v0, :cond_0

    .line 110
    .line 111
    const-string p1, "landscape"

    .line 112
    .line 113
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/common/a;->l:Ljava/lang/String;

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const-string p1, "portrait"

    .line 117
    .line 118
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/common/a;->l:Ljava/lang/String;

    .line 119
    .line 120
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->u()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/common/a;->n:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->e()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/common/a;->o:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->a()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iput p1, p0, Lcom/mbridge/msdk/advanced/common/a;->p:I

    .line 137
    .line 138
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->j()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iput p1, p0, Lcom/mbridge/msdk/advanced/common/a;->q:I

    .line 143
    .line 144
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->m()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "authority_general_data"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->c(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const-string v2, "device"

    .line 21
    .line 22
    iget-object v3, p0, Lcom/mbridge/msdk/advanced/common/a;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v2, "system_version"

    .line 28
    .line 29
    iget-object v3, p0, Lcom/mbridge/msdk/advanced/common/a;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v2, "network_type"

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mbridge/msdk/advanced/common/a;->e:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v2, "network_type_str"

    .line 42
    .line 43
    iget-object v3, p0, Lcom/mbridge/msdk/advanced/common/a;->f:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v2, "device_ua"

    .line 49
    .line 50
    iget-object v3, p0, Lcom/mbridge/msdk/advanced/common/a;->g:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v2, "has_wx"

    .line 56
    .line 57
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/k0;->D(Landroid/content/Context;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    const-string v2, "integrated_wx"

    .line 73
    .line 74
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->D()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    const-string v2, "opensdk_ver"

    .line 82
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->B()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    const-string v2, "wx_api_ver"

    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->i()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/k0;->e(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    const-string v0, "mnc"

    .line 138
    .line 139
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->r(Landroid/content/Context;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    const-string v0, "mcc"

    .line 155
    .line 156
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    const-string v0, "adid_limit"

    .line 172
    .line 173
    iget v2, p0, Lcom/mbridge/msdk/advanced/common/a;->p:I

    .line 174
    .line 175
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    const-string v0, "adid_limit_dev"

    .line 179
    .line 180
    iget v2, p0, Lcom/mbridge/msdk/advanced/common/a;->q:I

    .line 181
    .line 182
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    goto :goto_1

    .line 188
    :cond_0
    :goto_0
    const-string v0, "plantform"

    .line 189
    .line 190
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/common/a;->c:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->m()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v2, "authority_device_id"

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->c(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_1

    .line 206
    .line 207
    const-string v0, "google_ad_id"

    .line 208
    .line 209
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/common/a;->d:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    .line 213
    .line 214
    const-string v0, "az_aid_info"

    .line 215
    .line 216
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/common/a;->o:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    :cond_1
    const-string v0, "appkey"

    .line 222
    .line 223
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/common/a;->h:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    .line 227
    .line 228
    const-string v0, "appId"

    .line 229
    .line 230
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/common/a;->i:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    .line 234
    .line 235
    const-string v0, "screen_width"

    .line 236
    .line 237
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/common/a;->j:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    .line 241
    .line 242
    const-string v0, "screen_height"

    .line 243
    .line 244
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/common/a;->k:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    .line 248
    .line 249
    const-string v0, "orientation"

    .line 250
    .line 251
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/common/a;->l:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    const-string v0, "scale"

    .line 257
    .line 258
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/common/a;->m:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    .line 262
    .line 263
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->y()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_2

    .line 268
    .line 269
    const-string v0, "tun"

    .line 270
    .line 271
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->y()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    .line 277
    .line 278
    :cond_2
    const-string v0, "f"

    .line 279
    .line 280
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/common/a;->n:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->isExcludeCNDomain()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_3

    .line 294
    .line 295
    const-string v0, "re_domain"

    .line 296
    .line 297
    const-string v2, "1"

    .line 298
    .line 299
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    const-string v2, "BaseDeviceInfo"

    .line 308
    .line 309
    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    :cond_3
    :goto_2
    return-object v1
.end method
