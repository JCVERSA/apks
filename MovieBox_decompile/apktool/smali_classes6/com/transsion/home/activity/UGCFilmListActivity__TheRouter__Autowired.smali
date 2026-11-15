.class public Lcom/transsion/home/activity/UGCFilmListActivity__TheRouter__Autowired;
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
    instance-of v1, p0, Lcom/transsion/home/activity/UGCFilmListActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    check-cast p0, Lcom/transsion/home/activity/UGCFilmListActivity;

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
    if-eqz v2, :cond_5

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
    const-string v3, "int"

    .line 30
    .line 31
    new-instance v13, Lcom/therouter/router/b;

    .line 32
    .line 33
    const-string v5, "int"

    .line 34
    .line 35
    const-string v6, "tabId"

    .line 36
    .line 37
    const-string v8, ""

    .line 38
    .line 39
    const-string v9, "com.transsion.home.activity.UGCFilmListActivity"

    .line 40
    .line 41
    const-string v10, "tabId"

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
    check-cast v3, Ljava/lang/Integer;

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iput v3, p0, Lcom/transsion/home/activity/UGCFilmListActivity;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v3

    .line 67
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_1
    :try_start_1
    new-instance v3, Lcom/therouter/router/b;

    .line 77
    .line 78
    const-string v6, "java.lang.String"

    .line 79
    .line 80
    const-string v7, "filmListTitle"

    .line 81
    .line 82
    const-string v9, ""

    .line 83
    .line 84
    const-string v10, "com.transsion.home.activity.UGCFilmListActivity"

    .line 85
    .line 86
    const-string v11, "filmListTitle"

    .line 87
    .line 88
    const-string v13, "No desc."

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    move-object v5, v3

    .line 93
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v3, :cond_2

    .line 103
    .line 104
    iput-object v3, p0, Lcom/transsion/home/activity/UGCFilmListActivity;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_1
    move-exception v3

    .line 108
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_2
    :try_start_2
    new-instance v3, Lcom/therouter/router/b;

    .line 118
    .line 119
    const-string v6, "java.lang.String"

    .line 120
    .line 121
    const-string v7, "filmType"

    .line 122
    .line 123
    const-string v9, ""

    .line 124
    .line 125
    const-string v10, "com.transsion.home.activity.UGCFilmListActivity"

    .line 126
    .line 127
    const-string v11, "filmType"

    .line 128
    .line 129
    const-string v13, "No desc."

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    const/4 v12, 0x0

    .line 133
    move-object v5, v3

    .line 134
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Ljava/lang/String;

    .line 142
    .line 143
    if-eqz v3, :cond_3

    .line 144
    .line 145
    iput-object v3, p0, Lcom/transsion/home/activity/UGCFilmListActivity;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catch_2
    move-exception v3

    .line 149
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_3

    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    :cond_3
    :goto_3
    :try_start_3
    new-instance v3, Lcom/therouter/router/b;

    .line 159
    .line 160
    const-string v6, "java.lang.String"

    .line 161
    .line 162
    const-string v7, "fromOptId"

    .line 163
    .line 164
    const-string v9, ""

    .line 165
    .line 166
    const-string v10, "com.transsion.home.activity.UGCFilmListActivity"

    .line 167
    .line 168
    const-string v11, "fromOptId"

    .line 169
    .line 170
    const-string v13, "No desc."

    .line 171
    .line 172
    const/4 v8, 0x0

    .line 173
    const/4 v12, 0x0

    .line 174
    move-object v5, v3

    .line 175
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Ljava/lang/String;

    .line 183
    .line 184
    if-eqz v3, :cond_4

    .line 185
    .line 186
    iput-object v3, p0, Lcom/transsion/home/activity/UGCFilmListActivity;->e:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :catch_3
    move-exception v3

    .line 190
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_4

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    .line 198
    .line 199
    :cond_4
    :goto_4
    :try_start_4
    new-instance v3, Lcom/therouter/router/b;

    .line 200
    .line 201
    const-string v6, "java.lang.String"

    .line 202
    .line 203
    const-string v7, "videoType"

    .line 204
    .line 205
    const-string v9, ""

    .line 206
    .line 207
    const-string v10, "com.transsion.home.activity.UGCFilmListActivity"

    .line 208
    .line 209
    const-string v11, "videoType"

    .line 210
    .line 211
    const-string v13, "No desc."

    .line 212
    .line 213
    const/4 v8, 0x0

    .line 214
    const/4 v12, 0x0

    .line 215
    move-object v5, v3

    .line 216
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Ljava/lang/String;

    .line 224
    .line 225
    if-eqz v2, :cond_0

    .line 226
    .line 227
    iput-object v2, p0, Lcom/transsion/home/activity/UGCFilmListActivity;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :catch_4
    move-exception v2

    .line 232
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_0

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_5
    return-void
.end method
