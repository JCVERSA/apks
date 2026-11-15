.class public Lcom/transsion/web/activity/WebActivity__TheRouter__Autowired;
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
    .locals 15

    .line 1
    const-string v0, "boolean"

    .line 2
    .line 3
    const-string v1, "java.lang.String"

    .line 4
    .line 5
    instance-of v2, p0, Lcom/transsion/web/activity/WebActivity;

    .line 6
    .line 7
    if-eqz v2, :cond_5

    .line 8
    .line 9
    check-cast p0, Lcom/transsion/web/activity/WebActivity;

    .line 10
    .line 11
    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_5

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lmf/a;

    .line 30
    .line 31
    :try_start_0
    new-instance v13, Lcom/therouter/router/b;

    .line 32
    .line 33
    const-string v5, "boolean"

    .line 34
    .line 35
    const-string v6, "externalBrowser"

    .line 36
    .line 37
    const-string v8, ""

    .line 38
    .line 39
    const-string v9, "com.transsion.web.activity.WebActivity"

    .line 40
    .line 41
    const-string v10, "externalBrowser"

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
    invoke-interface {v3, v0, p0, v13}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/Boolean;

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iput-boolean v4, p0, Lcom/transsion/web/activity/WebActivity;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v4

    .line 67
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_1
    :try_start_1
    new-instance v4, Lcom/therouter/router/b;

    .line 77
    .line 78
    const-string v7, "boolean"

    .line 79
    .line 80
    const-string v8, "load_url_only"

    .line 81
    .line 82
    const-string v10, ""

    .line 83
    .line 84
    const-string v11, "com.transsion.web.activity.WebActivity"

    .line 85
    .line 86
    const-string v12, "loadUrlOnly"

    .line 87
    .line 88
    const-string v14, "No desc."

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    const/4 v13, 0x0

    .line 92
    move-object v6, v4

    .line 93
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v3, v0, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Ljava/lang/Boolean;

    .line 101
    .line 102
    if-eqz v4, :cond_2

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    iput-boolean v4, p0, Lcom/transsion/web/activity/WebActivity;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_1
    move-exception v4

    .line 112
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_2

    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :cond_2
    :goto_2
    :try_start_2
    new-instance v4, Lcom/therouter/router/b;

    .line 122
    .line 123
    const-string v7, "java.lang.String"

    .line 124
    .line 125
    const-string v8, "deeplink"

    .line 126
    .line 127
    const-string v10, ""

    .line 128
    .line 129
    const-string v11, "com.transsion.web.activity.WebActivity"

    .line 130
    .line 131
    const-string v12, "deeplink"

    .line 132
    .line 133
    const-string v14, "No desc."

    .line 134
    .line 135
    const/4 v9, 0x0

    .line 136
    const/4 v13, 0x0

    .line 137
    move-object v6, v4

    .line 138
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v4, :cond_3

    .line 148
    .line 149
    iput-object v4, p0, Lcom/transsion/web/activity/WebActivity;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catch_2
    move-exception v4

    .line 153
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_3

    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    .line 161
    .line 162
    :cond_3
    :goto_3
    :try_start_3
    new-instance v4, Lcom/therouter/router/b;

    .line 163
    .line 164
    const-string v7, "java.lang.String"

    .line 165
    .line 166
    const-string v8, "page_from"

    .line 167
    .line 168
    const-string v10, ""

    .line 169
    .line 170
    const-string v11, "com.transsion.web.activity.WebActivity"

    .line 171
    .line 172
    const-string v12, "pageFrom"

    .line 173
    .line 174
    const-string v14, "No desc."

    .line 175
    .line 176
    const/4 v9, 0x0

    .line 177
    const/4 v13, 0x0

    .line 178
    move-object v6, v4

    .line 179
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v4, :cond_4

    .line 189
    .line 190
    iput-object v4, p0, Lcom/transsion/web/activity/WebActivity;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :catch_3
    move-exception v4

    .line 194
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_4

    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    .line 202
    .line 203
    :cond_4
    :goto_4
    :try_start_4
    new-instance v4, Lcom/therouter/router/b;

    .line 204
    .line 205
    const-string v7, "java.lang.String"

    .line 206
    .line 207
    const-string v8, "url"

    .line 208
    .line 209
    const-string v10, ""

    .line 210
    .line 211
    const-string v11, "com.transsion.web.activity.WebActivity"

    .line 212
    .line 213
    const-string v12, "url"

    .line 214
    .line 215
    const-string v14, "No desc."

    .line 216
    .line 217
    const/4 v9, 0x0

    .line 218
    const/4 v13, 0x0

    .line 219
    move-object v6, v4

    .line 220
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Ljava/lang/String;

    .line 228
    .line 229
    if-eqz v3, :cond_0

    .line 230
    .line 231
    iput-object v3, p0, Lcom/transsion/web/activity/WebActivity;->a:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :catch_4
    move-exception v3

    .line 236
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_0

    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_5
    return-void
.end method
