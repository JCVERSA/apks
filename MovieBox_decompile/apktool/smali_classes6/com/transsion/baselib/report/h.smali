.class public final Lcom/transsion/baselib/report/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/baselib/report/h;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/baselib/report/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/report/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    .line 7
    .line 8
    const-string v0, "cold"

    .line 9
    .line 10
    sput-object v0, Lcom/transsion/baselib/report/h;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    sput-wide v0, Lcom/transsion/baselib/report/h;->c:J

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    sput-object v0, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    .line 21
    .line 22
    sput-object v0, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(J)I
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    mul-int/lit16 p2, p2, 0x2710

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v1, p1

    .line 21
    mul-int/lit8 v1, v1, 0x64

    .line 22
    .line 23
    add-int/2addr p2, v1

    .line 24
    const/4 p1, 0x5

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    add-int/2addr p2, p1

    .line 30
    return p2
.end method

.method private final c(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "launch"

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/baselib/helper/b;->c(Landroid/net/Uri;)Lcom/transsion/baselib/helper/ReferrerBean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmSource()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "push"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "deeplink"

    .line 26
    .line 27
    :goto_0
    return-object v0
.end method

.method private final f(J)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "source"

    .line 7
    .line 8
    sget-object v2, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "channel"

    .line 14
    .line 15
    sget-object v2, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "duration"

    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 30
    .line 31
    const-string p2, "app_stop"

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Lqi/h;->r(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final g(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/h;->f:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baselib/report/h;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 10
    .line 11
    sget-object v1, Lcom/transsion/baselib/report/h;->f:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/helper/b;->c(Landroid/net/Uri;)Lcom/transsion/baselib/helper/ReferrerBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmSource()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    :cond_0
    sput-object v0, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/transsion/baselib/report/h;->f:Landroid/net/Uri;

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "type"

    .line 36
    .line 37
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string p1, "source"

    .line 41
    .line 42
    sget-object v1, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string p1, "channel"

    .line 48
    .line 49
    sget-object v1, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 55
    .line 56
    const-string v1, "app_start"

    .line 57
    .line 58
    invoke-virtual {p1, v1, v0}, Lqi/h;->r(Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    .line 62
    .line 63
    const-string v2, "launch"

    .line 64
    .line 65
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    const-string v1, "app_launch_channel"

    .line 72
    .line 73
    invoke-virtual {p1, v1, v0}, Lqi/h;->r(Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/transsion/baselib/report/h;->i(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method private final i(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "k_open_day_count"

    .line 8
    .line 9
    const-string v5, "k_last_open_time"

    .line 10
    .line 11
    :try_start_0
    sget-object v6, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 12
    .line 13
    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    const-string v8, "k_last_open_channel"

    .line 18
    .line 19
    invoke-virtual {v7, v8, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const-string v8, "0"

    .line 27
    .line 28
    invoke-virtual {v7, v5, v8}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    if-eqz v7, :cond_0

    .line 33
    .line 34
    invoke-static {v7}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-wide/16 v7, 0x0

    .line 46
    .line 47
    :goto_0
    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->isToday(J)Z

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-nez v9, :cond_2

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-virtual {v9, v4, v3}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    invoke-direct {v0, v7, v8}, Lcom/transsion/baselib/report/h;->a(J)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v10

    .line 69
    invoke-direct {v0, v10, v11}, Lcom/transsion/baselib/report/h;->a(J)I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    sub-int v10, v8, v7

    .line 74
    .line 75
    if-ne v10, v2, :cond_1

    .line 76
    .line 77
    add-int/2addr v9, v2

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v9, v2

    .line 80
    :goto_1
    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {v10, v4, v9}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 88
    .line 89
    const-string v12, "ReportLaunchManager"

    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v10, "openDayCount:"

    .line 97
    .line 98
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v9, ", lastDay:"

    .line 105
    .line 106
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v7, ", curDay:"

    .line 113
    .line 114
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    const/4 v15, 0x4

    .line 125
    const/16 v16, 0x0

    .line 126
    .line 127
    const/4 v14, 0x0

    .line 128
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget-object v4, Lqi/h;->a:Lqi/h;

    .line 132
    .line 133
    const-string v7, "app_fg_alive"

    .line 134
    .line 135
    const-string v8, "app_perf"

    .line 136
    .line 137
    const-string v9, "source"

    .line 138
    .line 139
    sget-object v10, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    const-string v10, "channel"

    .line 146
    .line 147
    invoke-static {v10, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const/4 v10, 0x2

    .line 152
    new-array v10, v10, [Lkotlin/Pair;

    .line 153
    .line 154
    aput-object v9, v10, v3

    .line 155
    .line 156
    aput-object v1, v10, v2

    .line 157
    .line 158
    invoke-static {v10}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v4, v7, v8, v1}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    .line 164
    .line 165
    :cond_2
    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 170
    .line 171
    .line 172
    move-result-wide v2

    .line 173
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v1, v5, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const-string v2, "k_last_open_version"

    .line 185
    .line 186
    invoke-static {}, Lcom/transsion/core/utils/a;->c()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 192
    .line 193
    :catch_0
    return-void
.end method


# virtual methods
.method public final b()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/h;->f:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "launch"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final e(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "warm"

    .line 4
    .line 5
    sput-object p1, Lcom/transsion/baselib/report/h;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sget-wide v2, Lcom/transsion/baselib/report/h;->c:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/transsion/baselib/report/h;->f(J)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    sput-wide v0, Lcom/transsion/baselib/report/h;->c:J

    .line 23
    .line 24
    sget-object p1, Lcom/transsion/baselib/report/h;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/baselib/report/h;->g(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "shortUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "wholeUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-direct {p0, v1}, Lcom/transsion/baselib/report/h;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sput-object v2, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    .line 33
    .line 34
    sget-object v2, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/helper/b;->c(Landroid/net/Uri;)Lcom/transsion/baselib/helper/ReferrerBean;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmSource()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    move-object v2, v0

    .line 47
    :cond_1
    sput-object v2, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v2, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "source"

    .line 55
    .line 56
    sget-object v4, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v3, "channel"

    .line 62
    .line 63
    sget-object v4, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string v3, "msgId"

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-nez v4, :cond_3

    .line 77
    .line 78
    :cond_2
    move-object v4, v0

    .line 79
    :cond_3
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string v3, "msg_type"

    .line 83
    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    move-object v0, v1

    .line 94
    :cond_5
    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string v0, "url"

    .line 98
    .line 99
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const-string p2, "surl"

    .line 103
    .line 104
    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 108
    .line 109
    const-string p2, "app_launch_channel"

    .line 110
    .line 111
    invoke-virtual {p1, p2, v2}, Lqi/h;->r(Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    .line 113
    .line 114
    sget-object p1, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {p0, p1}, Lcom/transsion/baselib/report/h;->i(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final j(Landroid/net/Uri;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/transsion/baselib/report/h;->f:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method
