.class public Lcom/mbridge/msdk/foundation/tools/d;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public a:I

.field public b:I

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

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->q:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->t()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->i:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->q()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->u:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->d()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->l:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/tools/d;->n:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->o:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->j:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->e:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->d:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->t:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->s:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->r:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->j()Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->v:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->s()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->g:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->a()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->m:I

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 133
    .line 134
    const/4 v0, 0x2

    .line 135
    if-ne p1, v0, :cond_0

    .line 136
    .line 137
    const-string p1, "landscape"

    .line 138
    .line 139
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/d;->p:Ljava/lang/String;

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_0
    const-string p1, "portrait"

    .line 143
    .line 144
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/d;->p:Ljava/lang/String;

    .line 145
    .line 146
    :goto_0
    sget-object p1, Lcom/mbridge/msdk/foundation/same/a;->V:Ljava/lang/String;

    .line 147
    .line 148
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/d;->f:Ljava/lang/String;

    .line 149
    .line 150
    sget-object p1, Lcom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    .line 151
    .line 152
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/d;->h:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->u()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/d;->k:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->e()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/d;->c:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->a()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    iput p1, p0, Lcom/mbridge/msdk/foundation/tools/d;->a:I

    .line 171
    .line 172
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->j()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    iput p1, p0, Lcom/mbridge/msdk/foundation/tools/d;->b:I

    .line 177
    .line 178
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 8

    .line 1
    const-string v0, "authority_general_data"

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
    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->c(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const-string v3, "adid_limit_dev"

    .line 17
    .line 18
    const-string v4, "adid_limit"

    .line 19
    .line 20
    const-string v5, ""

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    :try_start_1
    const-string v2, "device"

    .line 25
    .line 26
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->i:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v2, "system_version"

    .line 32
    .line 33
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->u:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string v2, "network_type"

    .line 39
    .line 40
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->n:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    const-string v2, "network_type_str"

    .line 46
    .line 47
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->o:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v2, "device_ua"

    .line 53
    .line 54
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->j:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string v2, "has_wx"

    .line 60
    .line 61
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-static {v6}, Lcom/mbridge/msdk/foundation/tools/k0;->D(Landroid/content/Context;)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v2, "integrated_wx"

    .line 77
    .line 78
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->D()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    const-string v2, "opensdk_ver"

    .line 86
    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->B()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    const-string v2, "wx_api_ver"

    .line 110
    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/controller/a;->i()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-static {v7}, Lcom/mbridge/msdk/foundation/tools/k0;->e(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    const-string v2, "brand"

    .line 142
    .line 143
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->g:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    const-string v2, "mnc"

    .line 149
    .line 150
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-static {v6}, Lcom/mbridge/msdk/foundation/tools/k0;->r(Landroid/content/Context;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    const-string v2, "mcc"

    .line 166
    .line 167
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-static {v6}, Lcom/mbridge/msdk/foundation/tools/k0;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    .line 181
    .line 182
    iget v2, p0, Lcom/mbridge/msdk/foundation/tools/d;->a:I

    .line 183
    .line 184
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    iget v2, p0, Lcom/mbridge/msdk/foundation/tools/d;->b:I

    .line 188
    .line 189
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    goto/16 :goto_1

    .line 195
    .line 196
    :cond_0
    :goto_0
    const-string v2, "plantform"

    .line 197
    .line 198
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->q:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->m()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    const-string v6, "authority_device_id"

    .line 208
    .line 209
    invoke-virtual {v2, v6}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->c(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_1

    .line 214
    .line 215
    const-string v2, "google_ad_id"

    .line 216
    .line 217
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->l:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    const-string v2, "az_aid_info"

    .line 223
    .line 224
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->c:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    .line 228
    .line 229
    :cond_1
    const-string v2, "appkey"

    .line 230
    .line 231
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->e:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    const-string v2, "appId"

    .line 237
    .line 238
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->d:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    const-string v2, "screen_width"

    .line 244
    .line 245
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->t:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    .line 249
    .line 250
    const-string v2, "screen_height"

    .line 251
    .line 252
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->s:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    .line 256
    .line 257
    const-string v2, "orientation"

    .line 258
    .line 259
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->p:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    const-string v2, "scale"

    .line 265
    .line 266
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->r:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    const-string v2, "b"

    .line 272
    .line 273
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->f:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    .line 277
    .line 278
    const-string v2, "c"

    .line 279
    .line 280
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->h:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    .line 284
    .line 285
    const-string v2, "web_env"

    .line 286
    .line 287
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->v:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    .line 291
    .line 292
    const-string v2, "f"

    .line 293
    .line 294
    iget-object v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->k:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    .line 298
    .line 299
    const-string v2, "misk_spt"

    .line 300
    .line 301
    iget v6, p0, Lcom/mbridge/msdk/foundation/tools/d;->m:I

    .line 302
    .line 303
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    .line 305
    .line 306
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->y()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_2

    .line 311
    .line 312
    const-string v2, "tun"

    .line 313
    .line 314
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->y()I

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    .line 320
    .line 321
    :cond_2
    sget-object v2, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->f:Ljava/lang/String;

    .line 322
    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->m()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->c()I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    .line 348
    .line 349
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->m()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->c(Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_3

    .line 358
    .line 359
    new-instance v0, Lorg/json/JSONObject;

    .line 360
    .line 361
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 362
    .line 363
    .line 364
    iget v2, p0, Lcom/mbridge/msdk/foundation/tools/d;->a:I

    .line 365
    .line 366
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 367
    .line 368
    .line 369
    iget v2, p0, Lcom/mbridge/msdk/foundation/tools/d;->b:I

    .line 370
    .line 371
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    .line 373
    .line 374
    const-string v2, "dvi"

    .line 375
    .line 376
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    .line 386
    .line 387
    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->i()Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-nez v0, :cond_4

    .line 392
    .line 393
    const-string v0, "dev_source"

    .line 394
    .line 395
    const-string v2, "2"

    .line 396
    .line 397
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    .line 399
    .line 400
    :cond_4
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->isExcludeCNDomain()Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_5

    .line 409
    .line 410
    const-string v0, "re_domain"

    .line 411
    .line 412
    const-string v2, "1"

    .line 413
    .line 414
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 415
    .line 416
    .line 417
    goto :goto_2

    .line 418
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 419
    .line 420
    .line 421
    :cond_5
    :goto_2
    return-object v1
.end method
