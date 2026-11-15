.class final Lcom/bytedance/sdk/openadsdk/core/Ym$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym;->sP(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym$1;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->sef()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v1, "url is null"

    .line 17
    .line 18
    invoke-static {v3, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/Sj;->sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lorg/json/JSONObject;

    .line 38
    .line 39
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v5, "connect_type"

    .line 43
    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-wide/16 v7, 0x0

    .line 49
    .line 50
    invoke-static {v6, v7, v8}, Lcom/bytedance/sdk/component/utils/wE;->Sj(Landroid/content/Context;J)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Ym$1;->Sj:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    const-string v5, "device_id"

    .line 66
    .line 67
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Ym$1;->Sj:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_1
    :goto_0
    const-string v5, "header"

    .line 81
    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->sP()Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    sget-object v6, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    .line 98
    .line 99
    invoke-interface {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    .line 100
    .line 101
    .line 102
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const-string v6, "application/json; charset=utf-8"

    .line 104
    .line 105
    const-string v7, "Content-Type"

    .line 106
    .line 107
    if-eqz v5, :cond_3

    .line 108
    .line 109
    :try_start_1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/dx;

    .line 110
    .line 111
    sget-object v8, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->DUAL_EVENT:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    .line 112
    .line 113
    invoke-direct {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/dx;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    if-eqz v5, :cond_2

    .line 121
    .line 122
    const-string v8, "cypher"

    .line 123
    .line 124
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    const/4 v9, 0x4

    .line 129
    if-ne v8, v9, :cond_2

    .line 130
    .line 131
    const/4 v8, 0x1

    .line 132
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/zR;->sP(Z)V

    .line 133
    .line 134
    .line 135
    const-string v8, "x-pgli18n"

    .line 136
    .line 137
    const-string v9, "4"

    .line 138
    .line 139
    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v7, v6}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/zR;->sP(Z)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/Sj;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/Ym;->Sj(Lorg/json/JSONObject;)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-eqz v8, :cond_4

    .line 159
    .line 160
    const-string v8, "Content-Encoding"

    .line 161
    .line 162
    const-string v9, "union_sdk_encode"

    .line 163
    .line 164
    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    :goto_1
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/Ym;->Sj(Lorg/json/JSONObject;)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    if-nez v8, :cond_5

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    move-object v4, v5

    .line 175
    :goto_2
    invoke-virtual {v2, v7, v6}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v5, "User-Agent"

    .line 179
    .line 180
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lorg/json/JSONObject;)V

    .line 188
    .line 189
    .line 190
    const/4 v4, 0x6

    .line 191
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    .line 192
    .line 193
    .line 194
    const-string v4, "send_i_p_v6"

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/Ym$1$1;

    .line 200
    .line 201
    invoke-direct {v4, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym$1;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :goto_3
    const/4 v4, -0x2

    .line 209
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-static {v3, v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(ILjava/lang/String;ILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v3, "build ipv6 request failed:"

    .line 219
    .line 220
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-array v1, v1, [Ljava/lang/Object;

    .line 235
    .line 236
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    return-void
.end method
