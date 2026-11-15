.class Lcom/bytedance/sdk/openadsdk/core/Yf$9;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/net/Uri;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Yf;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->Sj:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    const-string v0, "ad_extra_data"

    .line 2
    .line 3
    const-string v1, "extra"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->Sj:Landroid/net/Uri;

    .line 6
    .line 7
    const-string v3, "category"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->Sj:Landroid/net/Uri;

    .line 14
    .line 15
    const-string v3, "tag"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 22
    .line 23
    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->Sj:Landroid/net/Uri;

    .line 27
    .line 28
    const-string v4, "label"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 35
    .line 36
    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    :try_start_0
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->Sj:Landroid/net/Uri;

    .line 46
    .line 47
    const-string v8, "value"

    .line 48
    .line 49
    invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-wide v8, v3

    .line 59
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->Sj:Landroid/net/Uri;

    .line 60
    .line 61
    const-string v10, "ext_value"

    .line 62
    .line 63
    invoke-virtual {v6, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :catch_1
    move-wide v10, v3

    .line 72
    const/4 v3, 0x0

    .line 73
    :try_start_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->Sj:Landroid/net/Uri;

    .line 74
    .line 75
    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_1

    .line 84
    .line 85
    new-instance v6, Lorg/json/JSONObject;

    .line 86
    .line 87
    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    .line 89
    .line 90
    :try_start_3
    const-string v3, "ua_policy"

    .line 91
    .line 92
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 93
    .line 94
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Lcom/bytedance/sdk/openadsdk/core/Yf;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    .line 104
    .line 105
    :catchall_0
    move-object v3, v6

    .line 106
    :catchall_1
    :cond_1
    const-string v4, "click"

    .line 107
    .line 108
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 115
    .line 116
    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Lcom/bytedance/sdk/openadsdk/core/Yf;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    :cond_2
    const-string v4, "landing_perf_error"

    .line 121
    .line 122
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_4

    .line 127
    .line 128
    const-string v4, "landing_perf_stats"

    .line 129
    .line 130
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_3

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 138
    .line 139
    invoke-static {v0, v2, v7}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    move-object v6, v0

    .line 144
    move-object v12, v3

    .line 145
    goto :goto_3

    .line 146
    :cond_4
    :goto_1
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    .line 147
    .line 148
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .line 150
    .line 151
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->Sj:Landroid/net/Uri;

    .line 152
    .line 153
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    :catch_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_6

    .line 166
    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    check-cast v4, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 172
    .line 173
    :try_start_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_5

    .line 178
    .line 179
    new-instance v6, Lorg/json/JSONObject;

    .line 180
    .line 181
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->Sj:Landroid/net/Uri;

    .line 182
    .line 183
    invoke-virtual {v12, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_5
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->Sj:Landroid/net/Uri;

    .line 199
    .line 200
    invoke-virtual {v6, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 209
    .line 210
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Lcom/bytedance/sdk/openadsdk/core/Yf;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 214
    move-object v6, v0

    .line 215
    move-object v12, v2

    .line 216
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 217
    .line 218
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Lcom/bytedance/sdk/openadsdk/core/Yf;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$9;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 223
    .line 224
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Lcom/bytedance/sdk/openadsdk/core/Yf;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    invoke-static/range {v4 .. v13}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;Z)V

    .line 233
    .line 234
    .line 235
    :catch_3
    return-void
.end method
