.class public Lcom/bytedance/sdk/openadsdk/core/TzV;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static Sj(Landroid/content/Context;ZLorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILandroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    move-object/from16 v2, p6

    .line 8
    .line 9
    const-string v3, "landingStyle"

    .line 10
    .line 11
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string v4, "url"

    .line 16
    .line 17
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "fallback_url"

    .line 22
    .line 23
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    :try_start_0
    const-string v9, "is_activity"

    .line 28
    .line 29
    move v10, p1

    .line 30
    invoke-virtual {p2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    const/4 v9, 0x1

    .line 34
    invoke-static {v6, v7, v9, p2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const/4 v1, 0x2

    .line 45
    const/4 v10, -0x1

    .line 46
    const/4 v11, 0x0

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v6, v7, v1, v11}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_1
    invoke-static {v6, v7, v10, v11}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_2
    const/4 v2, 0x0

    .line 65
    if-eq v3, v9, :cond_7

    .line 66
    .line 67
    const/16 v12, 0x8

    .line 68
    .line 69
    if-ne v3, v12, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    if-ne v3, v1, :cond_4

    .line 73
    .line 74
    invoke-static {p0, v4, v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/dx;->sP(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_8

    .line 79
    .line 80
    new-instance v1, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    .line 81
    .line 82
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;-><init>()V

    .line 83
    .line 84
    .line 85
    sget-object v3, Lcom/bytedance/sdk/openadsdk/EjP/sP$Sj;->sP:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP(I)V

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v2, "deeplink_url"

    .line 118
    .line 119
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const-string v3, "jsb_deeplink"

    .line 130
    .line 131
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-string v2, "open_fallback_url"

    .line 135
    .line 136
    invoke-static {v6, v7, v2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 137
    .line 138
    .line 139
    sget-object v1, Lcom/bytedance/sdk/openadsdk/EjP/sP$Sj;->sP:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {p0, v8, v6, v1}, Lcom/bytedance/sdk/openadsdk/utils/dx;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    const/4 v8, 0x3

    .line 146
    if-ne v3, v8, :cond_6

    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    move-object v0, p0

    .line 150
    move-object v1, v4

    .line 151
    move-object/from16 v2, p3

    .line 152
    .line 153
    move/from16 v3, p5

    .line 154
    .line 155
    move-object/from16 v4, p4

    .line 156
    .line 157
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/fF;->sP(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;Z)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_5

    .line 162
    .line 163
    invoke-static {v6, v7, v8, v11}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    const/4 v0, -0x2

    .line 168
    invoke-static {v6, v7, v0, v11}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    move v9, v2

    .line 173
    goto :goto_1

    .line 174
    :cond_7
    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    .line 175
    .line 176
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;-><init>()V

    .line 177
    .line 178
    .line 179
    sget-object v3, Lcom/bytedance/sdk/openadsdk/EjP/sP$Sj;->sP:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP(I)V

    .line 201
    .line 202
    .line 203
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    .line 204
    .line 205
    .line 206
    sget-object v1, Lcom/bytedance/sdk/openadsdk/EjP/sP$Sj;->sP:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {p0, v4, v6, v1}, Lcom/bytedance/sdk/openadsdk/utils/dx;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    :cond_8
    :goto_1
    if-eqz p7, :cond_9

    .line 212
    .line 213
    if-eqz v9, :cond_9

    .line 214
    .line 215
    invoke-interface/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/core/widget/HiB;->Sj()V

    .line 216
    .line 217
    .line 218
    :cond_9
    return-void
.end method
