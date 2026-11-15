.class public Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public checkUpgradeTask(Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;)V
    .locals 10

    .line 1
    const-string v0, "check error"

    .line 2
    .line 3
    sget-object v1, Lqu/f;->o:Lqu/d;

    .line 4
    .line 5
    invoke-virtual {v1}, Lqu/d;->a()Lqu/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iput-object p1, v1, Lqu/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    .line 10
    .line 11
    iget-boolean v2, v1, Lqu/f;->h:Z

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string v1, "Not Install Palm Store"

    .line 18
    .line 19
    invoke-interface {p1, v1}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    goto :goto_2

    .line 25
    :catch_1
    move-exception v1

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    :goto_0
    const/16 v1, 0x1c

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x7

    .line 32
    invoke-static {v3, v4, v2, v2, v1}, Ltu/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_1
    const-string v5, "3"

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    const/16 v9, 0x74

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    const/4 v3, 0x1

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    invoke-static/range {v2 .. v9}, Ltu/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lqu/f;->f()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x1

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Lqu/f;->b(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iput-boolean v3, v1, Lqu/f;->l:Z

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lqu/f;->c(Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    sget-object v1, Lru/f;->f:Lkotlin/Lazy;

    .line 66
    .line 67
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lru/f;

    .line 72
    .line 73
    invoke-virtual {v1}, Lru/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_4
    return-void
.end method

.method public dismissUpgradeDialog()V
    .locals 1

    .line 1
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lqu/f;->d()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public getUpgradeSdkCallback(Z)Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;
    .locals 2

    .line 1
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lqu/e;

    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lqu/e;-><init>(Lqu/f;Z)V

    .line 10
    .line 11
    .line 12
    return-object v1
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Z)V
    .locals 11

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    const-string v1, "<set-?>"

    .line 4
    .line 5
    sget-object v2, Lqu/f;->o:Lqu/d;

    .line 6
    .line 7
    invoke-virtual {v2}, Lqu/d;->a()Lqu/f;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "init Finish: "

    .line 12
    .line 13
    :try_start_0
    const-string v5, "updatesdk"

    .line 14
    .line 15
    const/16 v6, 0x414

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-static {p1, v5, v6, v7, v7}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 19
    .line 20
    .line 21
    const/16 v5, 0x18

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    const/4 v8, 0x1

    .line 25
    const/4 v9, 0x0

    .line 26
    if-eqz p1, :cond_a

    .line 27
    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v10

    .line 32
    if-eqz v10, :cond_0

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object p1, Lpu/a;->a:Landroid/app/Application;

    .line 40
    .line 41
    iput-boolean p3, v3, Lqu/f;->d:Z

    .line 42
    .line 43
    invoke-static {p1}, Ltu/n;->f(Landroid/content/Context;)Lnu/b;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object p3, v3, Lqu/f;->a:Lnu/b;

    .line 51
    .line 52
    invoke-virtual {v3}, Lqu/f;->e()Lnu/b;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    iget-object p3, p3, Lnu/b;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-eqz p3, :cond_1

    .line 63
    .line 64
    const-string p1, "2"

    .line 65
    .line 66
    invoke-static {v8, v6, p1, v9, v5}, Ltu/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :cond_1
    invoke-static {}, Ltu/n;->d()Z

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-nez p3, :cond_2

    .line 76
    .line 77
    iput-boolean v7, v3, Lqu/f;->h:Z

    .line 78
    .line 79
    const-string p1, "3"

    .line 80
    .line 81
    invoke-static {v8, v6, p1, v9, v5}, Ltu/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_2
    sget-object p3, Ltu/i;->b:Ltu/h;

    .line 87
    .line 88
    sget-object v5, Lpu/a;->a:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    const-string v6, "application"

    .line 91
    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    :try_start_1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    move-object v5, v9

    .line 99
    :goto_0
    invoke-virtual {p3, v5}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const-string v10, "KV_UPGRADE_LAST_POP"

    .line 104
    .line 105
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v5, v5, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 109
    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    invoke-virtual {v5, v10, v7}, Lcom/tencent/mmkv/MMKV;->d(Ljava/lang/String;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    goto :goto_1

    .line 117
    :cond_4
    move v5, v7

    .line 118
    :goto_1
    iput-boolean v5, v3, Lqu/f;->c:Z

    .line 119
    .line 120
    sget-object v5, Lqu/c;->d:Lqu/a;

    .line 121
    .line 122
    invoke-virtual {v5}, Lqu/a;->a()Lqu/c;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5, p1}, Lqu/c;->b(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lpu/a;->a:Landroid/app/Application;

    .line 130
    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    move-object v9, p1

    .line 134
    goto :goto_2

    .line 135
    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    invoke-virtual {p3, v9}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string p3, "KV_UPGRADE_IS_FORCE"

    .line 143
    .line 144
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p1, Ltu/i;->a:Lcom/tencent/mmkv/MMKV;

    .line 148
    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    invoke-virtual {p1, p3, v7}, Lcom/tencent/mmkv/MMKV;->d(Ljava/lang/String;Z)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    :cond_6
    iput-boolean v7, v3, Lqu/f;->e:Z

    .line 156
    .line 157
    invoke-virtual {v3}, Lqu/f;->e()Lnu/b;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iput-object p2, p1, Lnu/b;->g:Ljava/lang/String;

    .line 171
    .line 172
    const-string p1, "UpgradeSdkManager"

    .line 173
    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lqu/f;->e()Lnu/b;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    const-string p3, "tag"

    .line 191
    .line 192
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string p1, "msg"

    .line 196
    .line 197
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 201
    .line 202
    .line 203
    move-result-wide p1

    .line 204
    sget-boolean p3, Ltu/g;->a:Z

    .line 205
    .line 206
    if-eqz p3, :cond_7

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_7
    sget-wide v0, Ltu/g;->b:J

    .line 210
    .line 211
    sub-long v0, p1, v0

    .line 212
    .line 213
    const-wide/16 v4, 0x1388

    .line 214
    .line 215
    cmp-long v0, v0, v4

    .line 216
    .line 217
    if-gez v0, :cond_8

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_8
    sput-wide p1, Ltu/g;->b:J

    .line 221
    .line 222
    const-string p1, "upgradeSdkLog"

    .line 223
    .line 224
    const/4 p2, 0x3

    .line 225
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-eqz p1, :cond_9

    .line 230
    .line 231
    sput-boolean v8, Ltu/g;->a:Z

    .line 232
    .line 233
    :cond_9
    sget-boolean p3, Ltu/g;->a:Z

    .line 234
    .line 235
    :goto_3
    invoke-virtual {v2}, Lqu/d;->a()Lqu/f;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-boolean p1, p1, Lqu/f;->d:Z

    .line 240
    .line 241
    invoke-virtual {v3}, Lqu/f;->a()V

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_a
    :goto_4
    const-string p1, "1"

    .line 246
    .line 247
    invoke-static {v8, v6, p1, v9, v5}, Ltu/l;->a(IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    .line 249
    .line 250
    :catch_0
    :goto_5
    return-void
.end method

.method public showUpgradeDialog(Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;)V
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "dialogStyle"

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->getActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_12

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    sget-object v3, Lqu/f;->o:Lqu/d;

    .line 20
    .line 21
    invoke-virtual {v3}, Lqu/d;->a()Lqu/f;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-boolean v4, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->isManualClick:Z

    .line 26
    .line 27
    iget-object v5, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->callback:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    .line 28
    .line 29
    iget v6, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->dialogStyle:I

    .line 30
    .line 31
    iget-object v7, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->cancelButtonTextColor:Ljava/lang/Integer;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->confirmButtonTextColor:Ljava/lang/Integer;

    .line 34
    .line 35
    const-string v8, "\u521b\u5efa\u65b0\u7684\u5347\u7ea7\u5f39\u7a97V4\u5b9e\u4f8b\uff0c\u6837\u5f0f: "

    .line 36
    .line 37
    const-string v9, "\u521b\u5efa\u65b0\u7684\u5347\u7ea7\u5f39\u7a97\u5b9e\u4f8b\uff0c\u6837\u5f0f: "

    .line 38
    .line 39
    const-string v10, "\u8c03\u7528\u5f00\u59cb\u663e\u793a\u5347\u7ea7\u5f39\u7a97"

    .line 40
    .line 41
    const-string v11, "UpgradeSdkManager"

    .line 42
    .line 43
    invoke-static {v11, v10}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v12, 0x4

    .line 47
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v13

    .line 51
    move-object/from16 p1, v11

    .line 52
    .line 53
    iget-wide v10, v3, Lqu/f;->n:J

    .line 54
    .line 55
    sub-long v10, v13, v10

    .line 56
    .line 57
    const-wide/16 v16, 0x1f4

    .line 58
    .line 59
    cmp-long v10, v10, v16

    .line 60
    .line 61
    if-gez v10, :cond_1

    .line 62
    .line 63
    const-string v0, "\u5347\u7ea7\u5f39\u7a97\u963b\u585e - \u5feb\u901f\u70b9\u51fb"

    .line 64
    .line 65
    move-object/from16 v10, p1

    .line 66
    .line 67
    invoke-static {v10, v0}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_1
    move-object/from16 v10, p1

    .line 76
    .line 77
    iput-wide v13, v3, Lqu/f;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .line 79
    const-string v11, "2"

    .line 80
    .line 81
    const-string v13, "1"

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    move-object v14, v13

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move-object v14, v11

    .line 88
    :goto_0
    :try_start_1
    sget-object v15, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    .line 89
    .line 90
    const/16 v22, 0x0

    .line 91
    .line 92
    const/16 v23, 0x64

    .line 93
    .line 94
    const/16 v16, 0x4

    .line 95
    .line 96
    const/16 v17, 0x1

    .line 97
    .line 98
    const/16 v18, 0x0

    .line 99
    .line 100
    const/16 v21, 0x0

    .line 101
    .line 102
    move-object/from16 v19, v14

    .line 103
    .line 104
    move-object/from16 v20, v15

    .line 105
    .line 106
    invoke-static/range {v16 .. v23}, Ltu/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 110
    .line 111
    .line 112
    move-result v16

    .line 113
    if-eqz v16, :cond_3

    .line 114
    .line 115
    const-string v0, "\u5347\u7ea7\u5f39\u7a97\u963b\u585e - \u975e\u5f53\u524d\u9875\u9762\u663e\u793a"

    .line 116
    .line 117
    invoke-static {v10, v0}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 v1, 0x3

    .line 121
    invoke-static {v12, v1, v13, v14, v15}, Ltu/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :cond_3
    iget-boolean v13, v3, Lqu/f;->h:Z

    .line 127
    .line 128
    if-nez v13, :cond_4

    .line 129
    .line 130
    const-string v0, "3"

    .line 131
    .line 132
    const/4 v1, 0x3

    .line 133
    invoke-static {v12, v1, v0, v14, v15}, Ltu/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_4
    iput-object v5, v3, Lqu/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    .line 139
    .line 140
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 141
    .line 142
    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object v5, v3, Lqu/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 146
    .line 147
    if-eqz v5, :cond_12

    .line 148
    .line 149
    iget-boolean v5, v3, Lqu/f;->e:Z

    .line 150
    .line 151
    if-nez v5, :cond_6

    .line 152
    .line 153
    iget-boolean v5, v3, Lqu/f;->c:Z

    .line 154
    .line 155
    if-eqz v5, :cond_5

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    const/4 v5, 0x3

    .line 159
    invoke-static {v12, v5, v11, v14, v15}, Ltu/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 160
    .line 161
    .line 162
    const-string v0, "\u65e0\u65b0\u7248\u672c\uff0c\u4e0d\u663e\u793a\u5347\u7ea7\u5f39\u7a97"

    .line 163
    .line 164
    invoke-static {v10, v0}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_3

    .line 168
    .line 169
    :cond_6
    :goto_1
    new-instance v11, Landroid/os/Bundle;

    .line 170
    .line 171
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v13, "isManualClick"

    .line 175
    .line 176
    invoke-virtual {v11, v13, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    if-eqz v7, :cond_7

    .line 183
    .line 184
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    const-string v7, "cancelButtonTextColor"

    .line 189
    .line 190
    invoke-virtual {v11, v7, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    :cond_7
    if-eqz v0, :cond_8

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    const-string v4, "confirmButtonTextColor"

    .line 200
    .line 201
    invoke-virtual {v11, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    :cond_8
    instance-of v0, v2, Landroidx/fragment/app/FragmentActivity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    .line 206
    const-string v4, "4"

    .line 207
    .line 208
    const-string v7, "\u5347\u7ea7\u5f39\u7a97  -  \u5df2\u5c55\u793a"

    .line 209
    .line 210
    const-string v13, "\u5347\u7ea7\u5f39\u7a97  -  \u5f00\u59cb\u5c55\u793a\u5347\u7ea7\u5f39\u7a97"

    .line 211
    .line 212
    const/4 v5, 0x0

    .line 213
    const/4 v12, 0x1

    .line 214
    if-eqz v0, :cond_d

    .line 215
    .line 216
    :try_start_2
    iget-object v0, v3, Lqu/f;->i:Lcom/transsion/upgradesdk/page/f;

    .line 217
    .line 218
    if-eqz v0, :cond_9

    .line 219
    .line 220
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    if-eqz v0, :cond_9

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-ne v0, v6, :cond_9

    .line 231
    .line 232
    iget-object v0, v3, Lqu/f;->i:Lcom/transsion/upgradesdk/page/f;

    .line 233
    .line 234
    if-eqz v0, :cond_b

    .line 235
    .line 236
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-ne v0, v12, :cond_b

    .line 241
    .line 242
    :cond_9
    iget-object v0, v3, Lqu/f;->i:Lcom/transsion/upgradesdk/page/f;

    .line 243
    .line 244
    if-eqz v0, :cond_a

    .line 245
    .line 246
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 247
    .line 248
    .line 249
    :cond_a
    iput-object v5, v3, Lqu/f;->i:Lcom/transsion/upgradesdk/page/f;

    .line 250
    .line 251
    new-instance v0, Lcom/transsion/upgradesdk/page/f;

    .line 252
    .line 253
    invoke-direct {v0}, Lcom/transsion/upgradesdk/page/f;-><init>()V

    .line 254
    .line 255
    .line 256
    iput-object v0, v3, Lqu/f;->i:Lcom/transsion/upgradesdk/page/f;

    .line 257
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v10, v0}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :cond_b
    iget-object v0, v3, Lqu/f;->i:Lcom/transsion/upgradesdk/page/f;

    .line 274
    .line 275
    if-eqz v0, :cond_12

    .line 276
    .line 277
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-nez v1, :cond_c

    .line 282
    .line 283
    invoke-static {v10, v13}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v11}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 287
    .line 288
    .line 289
    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 290
    .line 291
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    const-string v2, "getSupportFragmentManager(...)"

    .line 296
    .line 297
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v1}, Lcom/transsion/upgradesdk/page/f;->Z(Landroidx/fragment/app/FragmentManager;)V

    .line 301
    .line 302
    .line 303
    const/16 v22, 0x0

    .line 304
    .line 305
    const/16 v23, 0x64

    .line 306
    .line 307
    const/16 v16, 0x4

    .line 308
    .line 309
    const/16 v17, 0x2

    .line 310
    .line 311
    const/16 v18, 0x0

    .line 312
    .line 313
    const/16 v21, 0x0

    .line 314
    .line 315
    move-object/from16 v19, v14

    .line 316
    .line 317
    move-object/from16 v20, v15

    .line 318
    .line 319
    invoke-static/range {v16 .. v23}, Ltu/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :cond_c
    invoke-static {v10, v7}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const/4 v1, 0x3

    .line 328
    const/4 v2, 0x4

    .line 329
    invoke-static {v2, v1, v4, v14, v15}, Ltu/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_3

    .line 333
    .line 334
    :cond_d
    iget-object v0, v3, Lqu/f;->j:Lsu/i;

    .line 335
    .line 336
    if-eqz v0, :cond_e

    .line 337
    .line 338
    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    if-eqz v0, :cond_e

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-ne v0, v6, :cond_e

    .line 349
    .line 350
    iget-object v0, v3, Lqu/f;->j:Lsu/i;

    .line 351
    .line 352
    if-eqz v0, :cond_10

    .line 353
    .line 354
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-ne v0, v12, :cond_10

    .line 359
    .line 360
    :cond_e
    iget-object v0, v3, Lqu/f;->j:Lsu/i;

    .line 361
    .line 362
    if-eqz v0, :cond_f

    .line 363
    .line 364
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 365
    .line 366
    .line 367
    :cond_f
    iput-object v5, v3, Lqu/f;->j:Lsu/i;

    .line 368
    .line 369
    new-instance v0, Lsu/i;

    .line 370
    .line 371
    invoke-direct {v0}, Lsu/i;-><init>()V

    .line 372
    .line 373
    .line 374
    iput-object v0, v3, Lqu/f;->j:Lsu/i;

    .line 375
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v10, v0}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    :cond_10
    iget-object v0, v3, Lqu/f;->j:Lsu/i;

    .line 392
    .line 393
    if-eqz v0, :cond_12

    .line 394
    .line 395
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-nez v1, :cond_11

    .line 400
    .line 401
    invoke-static {v10, v13}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v11}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const/16 v22, 0x0

    .line 419
    .line 420
    const/16 v23, 0x64

    .line 421
    .line 422
    const/16 v16, 0x4

    .line 423
    .line 424
    const/16 v17, 0x2

    .line 425
    .line 426
    const/16 v18, 0x0

    .line 427
    .line 428
    const/16 v21, 0x0

    .line 429
    .line 430
    move-object/from16 v19, v14

    .line 431
    .line 432
    move-object/from16 v20, v15

    .line 433
    .line 434
    invoke-static/range {v16 .. v23}, Ltu/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 435
    .line 436
    .line 437
    goto :goto_3

    .line 438
    :cond_11
    invoke-static {v10, v7}, Ltu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const/4 v1, 0x3

    .line 442
    const/4 v2, 0x4

    .line 443
    invoke-static {v2, v1, v4, v14, v15}, Ltu/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 444
    .line 445
    .line 446
    goto :goto_3

    .line 447
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    .line 452
    .line 453
    const-string v2, "5"

    .line 454
    .line 455
    const/4 v3, 0x3

    .line 456
    const/4 v4, 0x4

    .line 457
    invoke-static {v4, v3, v2, v0, v1}, Ltu/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 458
    .line 459
    .line 460
    :catch_1
    :cond_12
    :goto_3
    return-void
.end method
