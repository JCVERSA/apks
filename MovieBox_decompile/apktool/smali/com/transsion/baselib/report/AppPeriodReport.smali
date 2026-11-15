.class public final Lcom/transsion/baselib/report/AppPeriodReport;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/f;


# static fields
.field public static final a:Lcom/transsion/baselib/report/AppPeriodReport;

.field private static b:Ljava/util/Timer;

.field private static c:Ljava/util/TimerTask;

.field private static final d:Z

.field private static e:J

.field private static f:Z

.field private static g:Ljava/lang/Long;

.field private static h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/baselib/report/AppPeriodReport;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/report/AppPeriodReport;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->a:Lcom/transsion/baselib/report/AppPeriodReport;

    .line 7
    .line 8
    const-string v1, "app_period_report_debug"

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/transsion/baselib/report/AppPeriodReport;->c(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/transsion/baselib/report/AppPeriodReport;->d:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-wide/16 v1, 0x1388

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/32 v1, 0x493e0

    .line 23
    .line 24
    .line 25
    :goto_0
    sput-wide v1, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    sput-boolean v1, Lcom/transsion/baselib/report/AppPeriodReport;->f:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-wide/16 v0, 0x12c

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-wide/16 v0, 0xbb8

    .line 36
    .line 37
    :goto_1
    sput-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->h:J

    .line 38
    .line 39
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

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private final c(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return p1

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public static synthetic e(Lcom/transsion/baselib/report/AppPeriodReport;Ljava/lang/Long;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/report/AppPeriodReport;->d(Ljava/lang/Long;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "key_app_period_report"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 34
    .line 35
    :goto_0
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    cmp-long v4, v0, v2

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    sget-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 42
    .line 43
    :cond_1
    sput-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 44
    .line 45
    cmp-long v0, v0, v2

    .line 46
    .line 47
    if-gtz v0, :cond_2

    .line 48
    .line 49
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 50
    .line 51
    sget-wide v2, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "event close period "

    .line 59
    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, " "

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const/4 v5, 0x4

    .line 76
    const/4 v6, 0x0

    .line 77
    const-string v2, "AppPeriodReport"

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0$b;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/lifecycle/g0$b;->a()Landroidx/lifecycle/u;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sget-object v1, Lcom/transsion/baselib/report/AppPeriodReport;->a:Lcom/transsion/baselib/report/AppPeriodReport;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Lcom/transsion/baselib/report/AppPeriodReport;->f(Z)V

    .line 101
    .line 102
    .line 103
    sget-object v0, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0$b;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroidx/lifecycle/g0$b;->a()Landroidx/lifecycle/u;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v1, Lcom/transsion/baselib/report/AppPeriodReport;->a:Lcom/transsion/baselib/report/AppPeriodReport;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final d(Ljava/lang/Long;Z)V
    .locals 16

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    sget-wide v3, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    cmp-long v3, v5, v3

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    sget-wide v3, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 20
    .line 21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    sget-object v3, Lcom/transsion/baselib/report/AppPeriodReport;->g:Ljava/lang/Long;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    sub-long v3, v1, v3

    .line 35
    .line 36
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v3, 0x0

    .line 42
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sput-object v1, Lcom/transsion/baselib/report/AppPeriodReport;->g:Ljava/lang/Long;

    .line 47
    .line 48
    if-eqz v3, :cond_b

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    sget-wide v4, Lcom/transsion/baselib/report/AppPeriodReport;->h:J

    .line 55
    .line 56
    cmp-long v1, v1, v4

    .line 57
    .line 58
    if-gtz v1, :cond_3

    .line 59
    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_3
    if-eqz p2, :cond_4

    .line 63
    .line 64
    const-string v1, "app_background"

    .line 65
    .line 66
    :goto_2
    move-object v6, v1

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const-string v1, "app_foreground"

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_3
    const-string v1, "0"

    .line 72
    .line 73
    const-string v2, "keyAliveOff"

    .line 74
    .line 75
    const-string v4, "alive_off"

    .line 76
    .line 77
    if-eqz p2, :cond_8

    .line 78
    .line 79
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 80
    .line 81
    const-string v7, "yyyyMMdd"

    .line 82
    .line 83
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 84
    .line 85
    invoke-direct {v5, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    .line 87
    .line 88
    new-instance v7, Ljava/util/Date;

    .line 89
    .line 90
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    sget-object v7, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 98
    .line 99
    invoke-virtual {v7}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    const-string v9, "k_last_bg_alive_date"

    .line 104
    .line 105
    const-string v10, ""

    .line 106
    .line 107
    invoke-virtual {v8, v9, v10}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    if-nez v8, :cond_5

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_5
    move-object v10, v8

    .line 115
    :goto_4
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-nez v8, :cond_8

    .line 120
    .line 121
    invoke-virtual {v7}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v7, v9, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    .line 127
    .line 128
    sget-object v5, Lqi/h;->a:Lqi/h;

    .line 129
    .line 130
    sget-object v7, Lcm/f;->c:Lcm/f$a;

    .line 131
    .line 132
    invoke-virtual {v7}, Lcm/f$a;->a()Lcm/f;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v7, v2, v0}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    if-eqz v7, :cond_6

    .line 141
    .line 142
    invoke-virtual {v7}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    if-nez v7, :cond_7

    .line 147
    .line 148
    :cond_6
    move-object v7, v1

    .line 149
    :cond_7
    invoke-static {v4, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    new-array v8, v0, [Lkotlin/Pair;

    .line 154
    .line 155
    const/4 v9, 0x0

    .line 156
    aput-object v7, v8, v9

    .line 157
    .line 158
    invoke-static {v8}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    const-string v8, "app_bg_alive"

    .line 163
    .line 164
    const-string v9, "app_perf"

    .line 165
    .line 166
    invoke-virtual {v5, v8, v9, v7}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 167
    .line 168
    .line 169
    :cond_8
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 170
    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v7, "report event "

    .line 177
    .line 178
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v7, " "

    .line 185
    .line 186
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    const/4 v14, 0x4

    .line 197
    const/4 v15, 0x0

    .line 198
    const-string v11, "AppPeriodReport"

    .line 199
    .line 200
    const/4 v13, 0x0

    .line 201
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    new-instance v9, Ljava/util/HashMap;

    .line 205
    .line 206
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 207
    .line 208
    .line 209
    sget-object v5, Lcm/f;->c:Lcm/f$a;

    .line 210
    .line 211
    invoke-virtual {v5}, Lcm/f$a;->a()Lcm/f;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5, v2, v0}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-eqz v0, :cond_a

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-nez v0, :cond_9

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_9
    move-object v1, v0

    .line 229
    :cond_a
    :goto_5
    invoke-virtual {v9, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    sget-object v4, Lqi/h;->a:Lqi/h;

    .line 233
    .line 234
    const-string v5, ""

    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 237
    .line 238
    .line 239
    move-result-wide v7

    .line 240
    invoke-virtual/range {v4 .. v9}, Lqi/h;->C(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 241
    .line 242
    .line 243
    :cond_b
    :goto_6
    return-void
.end method

.method public final f(Z)V
    .locals 8

    .line 1
    sget-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_3

    .line 8
    .line 9
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    sget-wide v2, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "close period "

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " "

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v5, 0x4

    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v2, "AppPeriodReport"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 48
    .line 49
    .line 50
    :cond_0
    sget-object p1, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 55
    .line 56
    .line 57
    :cond_1
    sget-object p1, Lcom/transsion/baselib/report/AppPeriodReport;->c:Ljava/util/TimerTask;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 62
    .line 63
    .line 64
    :cond_2
    sget-object p1, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0$b;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/lifecycle/g0$b;->a()Landroidx/lifecycle/u;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->a:Lcom/transsion/baselib/report/AppPeriodReport;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    sget-boolean v0, Lcom/transsion/baselib/report/AppPeriodReport;->f:Z

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    if-eq p1, v0, :cond_4

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-static {p0, v1, v0, v2, v1}, Lcom/transsion/baselib/report/AppPeriodReport;->e(Lcom/transsion/baselib/report/AppPeriodReport;Ljava/lang/Long;ZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    sput-boolean p1, Lcom/transsion/baselib/report/AppPeriodReport;->f:Z

    .line 90
    .line 91
    sget-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->c:Ljava/util/TimerTask;

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 96
    .line 97
    .line 98
    :cond_5
    sput-object v1, Lcom/transsion/baselib/report/AppPeriodReport;->c:Ljava/util/TimerTask;

    .line 99
    .line 100
    sget-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 105
    .line 106
    .line 107
    :cond_6
    sget-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 112
    .line 113
    .line 114
    :cond_7
    sput-object v1, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    .line 115
    .line 116
    new-instance v0, Ljava/util/Timer;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    .line 122
    .line 123
    new-instance v0, Lcom/transsion/baselib/report/AppPeriodReport$startTimer$$inlined$timerTask$1;

    .line 124
    .line 125
    invoke-direct {v0, p1}, Lcom/transsion/baselib/report/AppPeriodReport$startTimer$$inlined$timerTask$1;-><init>(Z)V

    .line 126
    .line 127
    .line 128
    sput-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->c:Ljava/util/TimerTask;

    .line 129
    .line 130
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 131
    .line 132
    sget-object v2, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    .line 133
    .line 134
    if-eqz v2, :cond_8

    .line 135
    .line 136
    sget-object v3, Lcom/transsion/baselib/report/AppPeriodReport;->c:Ljava/util/TimerTask;

    .line 137
    .line 138
    sget-wide v6, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 139
    .line 140
    move-wide v4, v6

    .line 141
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 142
    .line 143
    .line 144
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :catchall_0
    move-exception p1

    .line 148
    goto :goto_1

    .line 149
    :cond_8
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 154
    .line 155
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    :goto_2
    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStart(Landroidx/lifecycle/u;)V
    .locals 7

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    sget-wide v2, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "onStart "

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " "

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v5, 0x4

    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v2, "AppPeriodReport"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/transsion/baselib/report/AppPeriodReport;->g:Ljava/lang/Long;

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sput-object p1, Lcom/transsion/baselib/report/AppPeriodReport;->g:Ljava/lang/Long;

    .line 56
    .line 57
    :cond_0
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/transsion/baselib/report/AppPeriodReport;->f(Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onStop(Landroidx/lifecycle/u;)V
    .locals 7

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    sget-wide v2, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "onStop "

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " "

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v5, 0x4

    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v2, "AppPeriodReport"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/transsion/baselib/report/AppPeriodReport;->f(Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
