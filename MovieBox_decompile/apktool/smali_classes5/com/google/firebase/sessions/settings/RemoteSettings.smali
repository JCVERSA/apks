.class public final Lcom/google/firebase/sessions/settings/RemoteSettings;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/firebase/sessions/settings/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/settings/RemoteSettings$a;
    }
.end annotation


# static fields
.field private static final g:Lcom/google/firebase/sessions/settings/RemoteSettings$a;


# instance fields
.field private final a:Lkotlin/coroutines/CoroutineContext;

.field private final b:Llc/e;

.field private final c:Lcom/google/firebase/sessions/b;

.field private final d:Lcom/google/firebase/sessions/settings/a;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlinx/coroutines/sync/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/settings/RemoteSettings$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/settings/RemoteSettings$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/settings/RemoteSettings;->g:Lcom/google/firebase/sessions/settings/RemoteSettings$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Llc/e;Lcom/google/firebase/sessions/b;Lcom/google/firebase/sessions/settings/a;Landroidx/datastore/core/g;)V
    .locals 1

    .line 1
    const-string v0, "backgroundDispatcher"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "firebaseInstallationsApi"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "appInfo"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "configsFetcher"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "dataStore"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->a:Lkotlin/coroutines/CoroutineContext;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->b:Llc/e;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->c:Lcom/google/firebase/sessions/b;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->d:Lcom/google/firebase/sessions/settings/a;

    .line 36
    .line 37
    new-instance p1, Lcom/google/firebase/sessions/settings/RemoteSettings$settingsCache$2;

    .line 38
    .line 39
    invoke-direct {p1, p5}, Lcom/google/firebase/sessions/settings/RemoteSettings$settingsCache$2;-><init>(Landroidx/datastore/core/g;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->e:Lkotlin/Lazy;

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    const/4 p2, 0x0

    .line 50
    const/4 p3, 0x0

    .line 51
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/g;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->f:Lkotlinx/coroutines/sync/a;

    .line 56
    .line 57
    return-void
.end method

.method public static final synthetic e(Lcom/google/firebase/sessions/settings/RemoteSettings;)Lcom/google/firebase/sessions/settings/SettingsCache;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f()Lcom/google/firebase/sessions/settings/SettingsCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->g()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public b()Lkotlin/time/Duration;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->e()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lkotlin/time/Duration;->b:Lkotlin/time/Duration$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->s(ILkotlin/time/DurationUnit;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-static {v0, v1}, Lkotlin/time/Duration;->g(J)Lkotlin/time/Duration;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/Double;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->f()Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    instance-of v6, v0, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    .line 10
    .line 11
    if-eqz v6, :cond_0

    .line 12
    .line 13
    move-object v6, v0

    .line 14
    check-cast v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    .line 15
    .line 16
    iget v7, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    .line 17
    .line 18
    const/high16 v8, -0x80000000

    .line 19
    .line 20
    and-int v9, v7, v8

    .line 21
    .line 22
    if-eqz v9, :cond_0

    .line 23
    .line 24
    sub-int/2addr v7, v8

    .line 25
    iput v7, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;

    .line 29
    .line 30
    invoke-direct {v6, v1, v0}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;-><init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    iget v8, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    if-eqz v8, :cond_4

    .line 43
    .line 44
    if-eq v8, v5, :cond_3

    .line 45
    .line 46
    if-eq v8, v4, :cond_2

    .line 47
    .line 48
    if-ne v8, v3, :cond_1

    .line 49
    .line 50
    iget-object v2, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lkotlinx/coroutines/sync/a;

    .line 53
    .line 54
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_2
    iget-object v8, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v8, Lkotlinx/coroutines/sync/a;

    .line 73
    .line 74
    iget-object v10, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v10, Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 77
    .line 78
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    move-object v2, v8

    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_3
    iget-object v8, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v8, Lkotlinx/coroutines/sync/a;

    .line 89
    .line 90
    iget-object v10, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v10, Lcom/google/firebase/sessions/settings/RemoteSettings;

    .line 93
    .line 94
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v1, Lcom/google/firebase/sessions/settings/RemoteSettings;->f:Lkotlinx/coroutines/sync/a;

    .line 102
    .line 103
    invoke-interface {v0}, Lkotlinx/coroutines/sync/a;->d()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->d()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_5

    .line 118
    .line 119
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_5
    iget-object v0, v1, Lcom/google/firebase/sessions/settings/RemoteSettings;->f:Lkotlinx/coroutines/sync/a;

    .line 123
    .line 124
    iput-object v1, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object v0, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    .line 127
    .line 128
    iput v5, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    .line 129
    .line 130
    invoke-interface {v0, v9, v6}, Lkotlinx/coroutines/sync/a;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    if-ne v8, v7, :cond_6

    .line 135
    .line 136
    return-object v7

    .line 137
    :cond_6
    move-object v8, v0

    .line 138
    move-object v10, v1

    .line 139
    :goto_1
    :try_start_2
    invoke-direct {v10}, Lcom/google/firebase/sessions/settings/RemoteSettings;->f()Lcom/google/firebase/sessions/settings/SettingsCache;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/SettingsCache;->d()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_7

    .line 148
    .line 149
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    .line 151
    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_7
    :try_start_3
    sget-object v0, Lcom/google/firebase/sessions/InstallationId;->c:Lcom/google/firebase/sessions/InstallationId$Companion;

    .line 156
    .line 157
    iget-object v11, v10, Lcom/google/firebase/sessions/settings/RemoteSettings;->b:Llc/e;

    .line 158
    .line 159
    iput-object v10, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v8, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    .line 162
    .line 163
    iput v4, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    .line 164
    .line 165
    invoke-virtual {v0, v11, v6}, Lcom/google/firebase/sessions/InstallationId$Companion;->a(Llc/e;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-ne v0, v7, :cond_8

    .line 170
    .line 171
    return-object v7

    .line 172
    :cond_8
    :goto_2
    check-cast v0, Lcom/google/firebase/sessions/InstallationId;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/google/firebase/sessions/InstallationId;->b()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v11, ""

    .line 179
    .line 180
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-eqz v11, :cond_9

    .line 185
    .line 186
    const-string v0, "SessionConfigFetcher"

    .line 187
    .line 188
    const-string v2, "Error getting Firebase Installation ID. Skipping this Session Event."

    .line 189
    .line 190
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    .line 195
    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    return-object v0

    .line 199
    :cond_9
    :try_start_4
    const-string v11, "X-Crashlytics-Installation-ID"

    .line 200
    .line 201
    invoke-static {v11, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v11, "X-Crashlytics-Device-Model"

    .line 206
    .line 207
    sget-object v12, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 208
    .line 209
    const-string v12, "%s/%s"

    .line 210
    .line 211
    new-array v13, v4, [Ljava/lang/Object;

    .line 212
    .line 213
    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 214
    .line 215
    aput-object v14, v13, v2

    .line 216
    .line 217
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 218
    .line 219
    aput-object v14, v13, v5

    .line 220
    .line 221
    invoke-static {v13, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v13

    .line 225
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    const-string v13, "format(format, *args)"

    .line 230
    .line 231
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-direct {v10, v12}, Lcom/google/firebase/sessions/settings/RemoteSettings;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    const-string v12, "X-Crashlytics-OS-Build-Version"

    .line 243
    .line 244
    sget-object v13, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 245
    .line 246
    const-string v14, "INCREMENTAL"

    .line 247
    .line 248
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-direct {v10, v13}, Lcom/google/firebase/sessions/settings/RemoteSettings;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-static {v12, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    const-string v13, "X-Crashlytics-OS-Display-Version"

    .line 260
    .line 261
    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 262
    .line 263
    const-string v15, "RELEASE"

    .line 264
    .line 265
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-direct {v10, v14}, Lcom/google/firebase/sessions/settings/RemoteSettings;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v14

    .line 272
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    const-string v14, "X-Crashlytics-API-Client-Version"

    .line 277
    .line 278
    iget-object v15, v10, Lcom/google/firebase/sessions/settings/RemoteSettings;->c:Lcom/google/firebase/sessions/b;

    .line 279
    .line 280
    invoke-virtual {v15}, Lcom/google/firebase/sessions/b;->f()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v15

    .line 284
    invoke-static {v14, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    const/4 v15, 0x5

    .line 289
    new-array v15, v15, [Lkotlin/Pair;

    .line 290
    .line 291
    aput-object v0, v15, v2

    .line 292
    .line 293
    aput-object v11, v15, v5

    .line 294
    .line 295
    aput-object v12, v15, v4

    .line 296
    .line 297
    aput-object v13, v15, v3

    .line 298
    .line 299
    const/4 v0, 0x4

    .line 300
    aput-object v14, v15, v0

    .line 301
    .line 302
    invoke-static {v15}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    iget-object v2, v10, Lcom/google/firebase/sessions/settings/RemoteSettings;->d:Lcom/google/firebase/sessions/settings/a;

    .line 307
    .line 308
    new-instance v4, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;

    .line 309
    .line 310
    invoke-direct {v4, v10, v9}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$1;-><init>(Lcom/google/firebase/sessions/settings/RemoteSettings;Lkotlin/coroutines/Continuation;)V

    .line 311
    .line 312
    .line 313
    new-instance v5, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$2;

    .line 314
    .line 315
    invoke-direct {v5, v9}, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 316
    .line 317
    .line 318
    iput-object v8, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$0:Ljava/lang/Object;

    .line 319
    .line 320
    iput-object v9, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->L$1:Ljava/lang/Object;

    .line 321
    .line 322
    iput v3, v6, Lcom/google/firebase/sessions/settings/RemoteSettings$updateSettings$1;->label:I

    .line 323
    .line 324
    invoke-interface {v2, v0, v4, v5, v6}, Lcom/google/firebase/sessions/settings/a;->a(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 328
    if-ne v0, v7, :cond_a

    .line 329
    .line 330
    return-object v7

    .line 331
    :cond_a
    move-object v2, v8

    .line 332
    :goto_3
    :try_start_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 333
    .line 334
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 338
    .line 339
    return-object v0

    .line 340
    :goto_4
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    throw v0
.end method
