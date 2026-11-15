.class public final Lcom/transsion/version/update/UpdateVersionRequest;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lkotlinx/coroutines/n0;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/transsion/version/update/RemoteVersionInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "update"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->b:Lkotlinx/coroutines/n0;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/version/update/g;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/transsion/version/update/g;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->c:Lkotlin/Lazy;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/version/update/UpdateVersionRequest;->p(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/version/update/UpdateVersionRequest;->m(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Lcom/transsion/version/update/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/version/update/UpdateVersionRequest;->g()Lcom/transsion/version/update/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/version/update/UpdateVersionRequest;->n(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/version/update/UpdateVersionRequest;->o(Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f(Lcom/transsion/version/update/NoticeConfig;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/version/update/NoticeConfig;->getNotifyTimes()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x3

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/version/update/NoticeConfig;->getNotifyInterval()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    float-to-long v2, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const-wide/16 v2, 0x18

    .line 20
    .line 21
    :goto_1
    const-string v4, ""

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/version/update/NoticeConfig;->getUpdateVersionName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-nez v5, :cond_3

    .line 30
    .line 31
    :cond_2
    move-object v5, v4

    .line 32
    :cond_3
    sget-object v6, Lcom/transsion/version/update/d;->a:Lcom/transsion/version/update/d;

    .line 33
    .line 34
    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const-string v8, "showed_target_version_name"

    .line 39
    .line 40
    invoke-virtual {v7, v8, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const-string v8, "update_dialog_showed_times"

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    invoke-virtual {v7, v8, v9}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    sget-object v16, Lwf/a;->a:Lwf/a$a;

    .line 56
    .line 57
    iget-object v11, v0, Lcom/transsion/version/update/UpdateVersionRequest;->a:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v10, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v12, "checkShowUpdateDialog \u4e4b\u524d\u5df2\u5c55\u793a\u7248\u672c "

    .line 65
    .line 66
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v12, "   \u8ba1\u5212\u7248\u672c "

    .line 73
    .line 74
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v15, " \u5df2\u5c55\u793a\u6b21\u6570 "

    .line 81
    .line 82
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    const/4 v14, 0x4

    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    move-object/from16 v10, v16

    .line 97
    .line 98
    move-object/from16 v18, v15

    .line 99
    .line 100
    move-object/from16 v15, v17

    .line 101
    .line 102
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_4

    .line 110
    .line 111
    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4, v8, v9}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    .line 117
    .line 118
    move v7, v9

    .line 119
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    const-string v8, "update_dialog_show_timestamp"

    .line 128
    .line 129
    const-wide/16 v10, 0x0

    .line 130
    .line 131
    invoke-virtual {v6, v8, v10, v11}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v10

    .line 135
    const/16 v6, 0x3c

    .line 136
    .line 137
    int-to-long v12, v6

    .line 138
    mul-long v14, v2, v12

    .line 139
    .line 140
    mul-long/2addr v14, v12

    .line 141
    const/16 v6, 0x3e8

    .line 142
    .line 143
    int-to-long v12, v6

    .line 144
    mul-long/2addr v14, v12

    .line 145
    sub-long/2addr v4, v10

    .line 146
    cmp-long v4, v14, v4

    .line 147
    .line 148
    const/4 v5, 0x1

    .line 149
    if-gez v4, :cond_5

    .line 150
    .line 151
    move v4, v5

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    move v4, v9

    .line 154
    :goto_2
    if-ge v7, v1, :cond_6

    .line 155
    .line 156
    if-eqz v4, :cond_6

    .line 157
    .line 158
    move v9, v5

    .line 159
    :cond_6
    iget-object v11, v0, Lcom/transsion/version/update/UpdateVersionRequest;->a:Ljava/lang/String;

    .line 160
    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v6, "checkShowUpdateDialog \u68c0\u67e5\u7ed3\u679c\u4e3a "

    .line 167
    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    move-object/from16 v6, v18

    .line 175
    .line 176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v6, " \u63d0\u9192\u6b21\u6570 "

    .line 183
    .line 184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, " \u95f4\u9694\u65f6\u957f\u4e3a "

    .line 191
    .line 192
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, " \u5c0f\u65f6 \u95f4\u9694\u65f6\u957f\u662f\u5426\u5408\u683c "

    .line 199
    .line 200
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    const/4 v14, 0x4

    .line 211
    const/4 v15, 0x0

    .line 212
    const/4 v13, 0x0

    .line 213
    move-object/from16 v10, v16

    .line 214
    .line 215
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    return v9
.end method

.method private static final g()Lcom/transsion/version/update/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/transsion/version/update/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/version/update/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private final i()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/version/update/d;->a:Lcom/transsion/version/update/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "NEW_USER_FIRST_LAUNCH"

    .line 9
    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v3, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    :cond_0
    return v1
.end method

.method private final j(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "action"

    .line 7
    .line 8
    const-string v2, "check"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/transsion/version/update/RemoteVersionInfo;->getHasUpdate()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v1

    .line 26
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "check_result"

    .line 31
    .line 32
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/transsion/version/update/RemoteVersionInfo;->getForceUpdate()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v2, v1

    .line 47
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "force_update"

    .line 52
    .line 53
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/transsion/version/update/NoticeConfig;->getUpdateVersionName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const-string v1, "target_version_name"

    .line 73
    .line 74
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const-string p2, "page_from"

    .line 78
    .line 79
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object p1, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/transsion/version/update/e;->b(Ljava/util/Map;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private final k(Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    sget-object v0, Lcom/transsion/version/update/dialog/UpdateDialog;->h:Lcom/transsion/version/update/dialog/UpdateDialog$a;

    .line 6
    .line 7
    new-instance v1, Lcom/transsion/version/update/i;

    .line 8
    .line 9
    invoke-direct {v1, p3, p2}, Lcom/transsion/version/update/i;-><init>(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2, p4, v1}, Lcom/transsion/version/update/dialog/UpdateDialog$a;->a(Lcom/transsion/version/update/RemoteVersionInfo;ZLkotlin/jvm/functions/Function1;)Lcom/transsion/version/update/dialog/UpdateDialog;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x18

    .line 19
    .line 20
    if-lt v0, v1, :cond_0

    .line 21
    .line 22
    move-object v0, p1

    .line 23
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/transsion/version/update/f;->a(Landroidx/fragment/app/FragmentActivity;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v0, p1

    .line 35
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "getSupportFragmentManager(...)"

    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-class v2, Lcom/transsion/version/update/dialog/UpdateDialog;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_5

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->T0()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_5

    .line 82
    .line 83
    invoke-virtual {p2, p1, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    sget-object v0, Ltv/h;->g:Ltv/h$a;

    .line 88
    .line 89
    new-instance v1, Lcom/transsion/version/update/j;

    .line 90
    .line 91
    invoke-direct {v1, p3, p2}, Lcom/transsion/version/update/j;-><init>(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1, p2, p4, v1}, Ltv/h$a;->a(Landroid/content/Context;Lcom/transsion/version/update/RemoteVersionInfo;ZLkotlin/jvm/functions/Function1;)Ltv/h;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p1}, Lle/h;->a(Landroid/app/Activity;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {p2, p1}, Lkj/j;->g(Landroid/app/Activity;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_1
    sget-object p1, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    .line 109
    .line 110
    const-string p2, "mb"

    .line 111
    .line 112
    invoke-virtual {p1, p3, p4, p2, p5}, Lcom/transsion/version/update/e;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method static synthetic l(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x10

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-string p5, ""

    .line 6
    .line 7
    :cond_0
    move-object v5, p5

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move v4, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/version/update/UpdateVersionRequest;->k(Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final m(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    .line 2
    .line 3
    const-string v1, "mb"

    .line 4
    .line 5
    invoke-virtual {v0, p0, p2, v1}, Lcom/transsion/version/update/e;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    new-instance p2, Lvv/a;

    .line 11
    .line 12
    invoke-direct {p2}, Lvv/a;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2, p0, v0, p1}, Lvv/a;->a(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/version/update/RemoteVersionInfo;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final n(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    .line 2
    .line 3
    const-string v1, "mb"

    .line 4
    .line 5
    invoke-virtual {v0, p0, p2, v1}, Lcom/transsion/version/update/e;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    new-instance p2, Lvv/a;

    .line 11
    .line 12
    invoke-direct {p2}, Lvv/a;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2, p0, v0, p1}, Lvv/a;->a(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/version/update/RemoteVersionInfo;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private final o(Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)V
    .locals 14

    .line 1
    sget-object v0, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager;->d()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/version/update/NoticeConfig;->getUpdateVersionName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    move-object v5, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    :goto_1
    const-string v0, ""

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_2
    sget-object v1, Luv/a;->a:Luv/a;

    .line 32
    .line 33
    new-instance v0, Lcom/transsion/version/update/h;

    .line 34
    .line 35
    move-object v6, v0

    .line 36
    move-object v7, p0

    .line 37
    move-object v8, p1

    .line 38
    move-object/from16 v9, p3

    .line 39
    .line 40
    move-object/from16 v10, p2

    .line 41
    .line 42
    move/from16 v11, p4

    .line 43
    .line 44
    invoke-direct/range {v6 .. v11}, Lcom/transsion/version/update/h;-><init>(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    move-object/from16 v2, p2

    .line 48
    .line 49
    move/from16 v3, p4

    .line 50
    .line 51
    move-object v4, p1

    .line 52
    invoke-virtual/range {v1 .. v6}, Luv/a;->a(Ljava/lang/String;ZLandroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_2
    const/16 v12, 0x10

    .line 57
    .line 58
    const/4 v13, 0x0

    .line 59
    const/4 v11, 0x0

    .line 60
    move-object v6, p0

    .line 61
    move-object v7, p1

    .line 62
    move-object/from16 v8, p3

    .line 63
    .line 64
    move-object/from16 v9, p2

    .line 65
    .line 66
    move/from16 v10, p4

    .line 67
    .line 68
    invoke-static/range {v6 .. v13}, Lcom/transsion/version/update/UpdateVersionRequest;->l(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :goto_3
    return-void
.end method

.method private static final p(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "errorMsg"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/transsion/version/update/UpdateVersionRequest;->k(Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public final h()Lcom/transsion/version/update/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/version/update/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final q(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
