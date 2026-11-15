.class public Lcom/transsion/home/activity/UGCHashTagActivity__TheRouter__Autowired;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static autowiredInject(Ljava/lang/Object;)V
    .locals 14

    .line 1
    const-string v0, "java.lang.String"

    .line 2
    .line 3
    instance-of v1, p0, Lcom/transsion/home/activity/UGCHashTagActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    check-cast p0, Lcom/transsion/home/activity/UGCHashTagActivity;

    .line 8
    .line 9
    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_6

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lmf/a;

    .line 28
    .line 29
    :try_start_0
    const-string v3, "com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag"

    .line 30
    .line 31
    new-instance v13, Lcom/therouter/router/b;

    .line 32
    .line 33
    const-string v5, "com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag"

    .line 34
    .line 35
    const-string v6, "titleHashTag"

    .line 36
    .line 37
    const-string v8, ""

    .line 38
    .line 39
    const-string v9, "com.transsion.home.activity.UGCHashTagActivity"

    .line 40
    .line 41
    const-string v10, "mainHasTag"

    .line 42
    .line 43
    const-string v12, "No desc."

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    move-object v4, v13

    .line 48
    invoke-direct/range {v4 .. v12}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v3, p0, v13}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    iput-object v3, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception v3

    .line 63
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_1
    :try_start_1
    const-string v3, "int"

    .line 73
    .line 74
    new-instance v13, Lcom/therouter/router/b;

    .line 75
    .line 76
    const-string v5, "int"

    .line 77
    .line 78
    const-string v6, "tabId"

    .line 79
    .line 80
    const-string v8, ""

    .line 81
    .line 82
    const-string v9, "com.transsion.home.activity.UGCHashTagActivity"

    .line 83
    .line 84
    const-string v10, "tabId"

    .line 85
    .line 86
    const-string v12, "No desc."

    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v11, 0x0

    .line 90
    move-object v4, v13

    .line 91
    invoke-direct/range {v4 .. v12}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v2, v3, p0, v13}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Ljava/lang/Integer;

    .line 99
    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    iput v3, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catch_1
    move-exception v3

    .line 110
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_2

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_2
    :try_start_2
    new-instance v3, Lcom/therouter/router/b;

    .line 120
    .line 121
    const-string v6, "java.lang.String"

    .line 122
    .line 123
    const-string v7, "UGCVideoId"

    .line 124
    .line 125
    const-string v9, ""

    .line 126
    .line 127
    const-string v10, "com.transsion.home.activity.UGCHashTagActivity"

    .line 128
    .line 129
    const-string v11, "ugcVideoId"

    .line 130
    .line 131
    const-string v13, "No desc."

    .line 132
    .line 133
    const/4 v8, 0x0

    .line 134
    const/4 v12, 0x0

    .line 135
    move-object v5, v3

    .line 136
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v3, :cond_3

    .line 146
    .line 147
    iput-object v3, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :catch_2
    move-exception v3

    .line 151
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_3

    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_3
    :try_start_3
    new-instance v3, Lcom/therouter/router/b;

    .line 161
    .line 162
    const-string v6, "java.lang.String"

    .line 163
    .line 164
    const-string v7, "fromOptId"

    .line 165
    .line 166
    const-string v9, ""

    .line 167
    .line 168
    const-string v10, "com.transsion.home.activity.UGCHashTagActivity"

    .line 169
    .line 170
    const-string v11, "fromOptId"

    .line 171
    .line 172
    const-string v13, "No desc."

    .line 173
    .line 174
    const/4 v8, 0x0

    .line 175
    const/4 v12, 0x0

    .line 176
    move-object v5, v3

    .line 177
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Ljava/lang/String;

    .line 185
    .line 186
    if-eqz v3, :cond_4

    .line 187
    .line 188
    iput-object v3, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :catch_3
    move-exception v3

    .line 192
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_4

    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    .line 200
    .line 201
    :cond_4
    :goto_4
    :try_start_4
    new-instance v3, Lcom/therouter/router/b;

    .line 202
    .line 203
    const-string v6, "java.lang.String"

    .line 204
    .line 205
    const-string v7, "hashtag"

    .line 206
    .line 207
    const-string v9, ""

    .line 208
    .line 209
    const-string v10, "com.transsion.home.activity.UGCHashTagActivity"

    .line 210
    .line 211
    const-string v11, "mHashtagJson"

    .line 212
    .line 213
    const-string v13, "No desc."

    .line 214
    .line 215
    const/4 v8, 0x0

    .line 216
    const/4 v12, 0x0

    .line 217
    move-object v5, v3

    .line 218
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    check-cast v3, Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v3, :cond_5

    .line 228
    .line 229
    iput-object v3, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->f:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :catch_4
    move-exception v3

    .line 233
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_5

    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    .line 241
    .line 242
    :cond_5
    :goto_5
    :try_start_5
    const-string v3, "java.util.ArrayList<com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag>"

    .line 243
    .line 244
    new-instance v13, Lcom/therouter/router/b;

    .line 245
    .line 246
    const-string v5, "java.util.ArrayList<com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag>"

    .line 247
    .line 248
    const-string v6, "hashTagList"

    .line 249
    .line 250
    const-string v8, ""

    .line 251
    .line 252
    const-string v9, "com.transsion.home.activity.UGCHashTagActivity"

    .line 253
    .line 254
    const-string v10, "hasTagList"

    .line 255
    .line 256
    const-string v12, "No desc."

    .line 257
    .line 258
    const/4 v7, 0x0

    .line 259
    const/4 v11, 0x0

    .line 260
    move-object v4, v13

    .line 261
    invoke-direct/range {v4 .. v12}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {v2, v3, p0, v13}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Ljava/util/ArrayList;

    .line 269
    .line 270
    if-eqz v2, :cond_0

    .line 271
    .line 272
    iput-object v2, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->b:Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :catch_5
    move-exception v2

    .line 277
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v3, :cond_0

    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_6
    return-void
.end method
