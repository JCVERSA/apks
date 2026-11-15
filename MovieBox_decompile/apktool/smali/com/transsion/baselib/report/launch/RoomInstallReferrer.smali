.class public final Lcom/transsion/baselib/report/launch/RoomInstallReferrer;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/baselib/report/launch/RoomInstallReferrer;

.field private static b:Li5/a;

.field private static c:Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->a:Lcom/transsion/baselib/report/launch/RoomInstallReferrer;

    .line 7
    .line 8
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

.method public static final synthetic a(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Landroid/app/Application;Li5/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->g(Landroid/app/Application;Li5/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->h(Landroid/app/Application;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c()Li5/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->b:Li5/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g(Landroid/app/Application;Li5/d;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Li5/d;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "fetchInstallReferrer referrerUrl: "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v2, "RoomInstallReferrer"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v5, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$fetchInstallReferrer$1;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {v5, p1, v0, p2, v1}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$fetchInstallReferrer$1;-><init>(Landroid/app/Application;Ljava/lang/String;Li5/d;Lkotlin/coroutines/Continuation;)V

    .line 44
    .line 45
    .line 46
    const/4 v6, 0x3

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final h(Landroid/app/Application;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "fetchInstallReferrerErr msg: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "RoomInstallReferrer"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v3, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$fetchInstallReferrerErr$1;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-direct {v3, p1, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$fetchInstallReferrerErr$1;-><init>(Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x3

    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final j(Lcom/transsion/baselib/report/launch/c;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private final k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;-><init>(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-wide v5, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->J$0:J

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v2, "k_install_referrer"

    .line 67
    .line 68
    invoke-virtual {p1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_4
    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v2, "key_referrer_palm_store"

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Lcom/transsion/athena/attribution/SpUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v2, "SnowballReferrer"

    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-nez v7, :cond_5

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v5, "get referrer: "

    .line 117
    .line 118
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v2, v1, v4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 132
    .line 133
    const-class v0, Lcom/transsion/baselib/report/launch/c;

    .line 134
    .line 135
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, v3}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->j(Lcom/transsion/baselib/report/launch/c;)V

    .line 146
    .line 147
    .line 148
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 149
    .line 150
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :catchall_0
    move-exception p1

    .line 155
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 156
    .line 157
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v7

    .line 169
    sub-long/2addr v7, v5

    .line 170
    const-wide/16 v9, 0x2710

    .line 171
    .line 172
    cmp-long p1, v7, v9

    .line 173
    .line 174
    if-lez p1, :cond_7

    .line 175
    .line 176
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 177
    .line 178
    const-string v0, "wait referrer timeout"

    .line 179
    .line 180
    invoke-virtual {p1, v2, v0, v4}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    .line 182
    .line 183
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 184
    .line 185
    return-object p1

    .line 186
    :cond_7
    iput-wide v5, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->J$0:J

    .line 187
    .line 188
    iput v4, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    .line 189
    .line 190
    const-wide/16 v7, 0x1f4

    .line 191
    .line 192
    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-ne p1, v1, :cond_4

    .line 197
    .line 198
    return-object v1
.end method


# virtual methods
.method public final e(Landroid/app/Application;Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;)V
    .locals 9

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lis"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "k_install_referrer"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string p2, "localReferrerUrl:"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const/4 v7, 0x4

    .line 53
    const/4 v8, 0x0

    .line 54
    const-string v4, "RoomInstallReferrer"

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    :goto_0
    sput-object p2, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->c:Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;

    .line 62
    .line 63
    :try_start_0
    invoke-static {p1}, Li5/a;->c(Landroid/content/Context;)Li5/a$b;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Li5/a$b;->a()Li5/a;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    sput-object p2, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->b:Li5/a;

    .line 72
    .line 73
    if-nez p2, :cond_2

    .line 74
    .line 75
    const-string p2, "referrerClient"

    .line 76
    .line 77
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move-object v2, p2

    .line 82
    :goto_1
    new-instance p2, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$b;

    .line 83
    .line 84
    invoke-direct {p2, p1}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$b;-><init>(Landroid/app/Application;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p2}, Li5/a;->d(Li5/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catch_0
    const-string p2, "unknown err"

    .line 92
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->h(Landroid/app/Application;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    return-void
.end method

.method public final f(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    const/16 p2, 0xa0a

    .line 4
    .line 5
    invoke-static {p2}, Lcom/transsion/ga/AthenaAnalytics;->Y(I)V

    .line 6
    .line 7
    .line 8
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 16
    .line 17
    invoke-static {p2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :goto_0
    new-instance v3, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$checkSnowballInstallReferrer$3;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-direct {v3, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$checkSnowballInstallReferrer$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    move-object v0, p1

    .line 35
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 36
    .line 37
    .line 38
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p1
.end method

.method public final i(Landroid/app/Application;Ljava/lang/String;Li5/d;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "referrer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "k_install_referrer"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 41
    .line 42
    invoke-virtual {v2, p2}, Lcom/transsion/baselib/helper/b;->d(Ljava/lang/String;)Lcom/transsion/baselib/helper/ReferrerBean;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmSource()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    sget-object v3, Ljg/b;->a:Ljg/b$a;

    .line 59
    .line 60
    invoke-virtual {v3, p1}, Ljg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    move-object v3, p1

    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 70
    .line 71
    :cond_1
    invoke-virtual {v2}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmSource()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :cond_2
    if-eqz v3, :cond_3

    .line 76
    .line 77
    sget-object v4, Lmg/a;->a:Lmg/a$a;

    .line 78
    .line 79
    invoke-virtual {v4, v3}, Lmg/a$a;->e(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {v2}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmCampaign()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    sget-object v4, Lmg/a;->a:Lmg/a$a;

    .line 89
    .line 90
    invoke-virtual {v4, v3}, Lmg/a$a;->g(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    sget-object v3, Lmg/a;->a:Lmg/a$a;

    .line 94
    .line 95
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    const-string v5, "toString(...)"

    .line 104
    .line 105
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4}, Lmg/a$a;->f(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v3, "install_time"

    .line 112
    .line 113
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 114
    .line 115
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const-string v3, "install_version"

    .line 123
    .line 124
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 125
    .line 126
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    const-string v1, "install_referrer"

    .line 130
    .line 131
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-string p2, "install_store"

    .line 135
    .line 136
    sget-object v1, Ljg/b;->a:Ljg/b$a;

    .line 137
    .line 138
    invoke-virtual {v1, p1}, Ljg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    if-eqz p3, :cond_5

    .line 146
    .line 147
    const-string p1, "referrer_click_timestamp_seconds"

    .line 148
    .line 149
    invoke-virtual {p3}, Li5/d;->f()J

    .line 150
    .line 151
    .line 152
    move-result-wide v3

    .line 153
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    const-string p1, "install_begin_timestamp_seconds"

    .line 161
    .line 162
    invoke-virtual {p3}, Li5/d;->b()J

    .line 163
    .line 164
    .line 165
    move-result-wide v3

    .line 166
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    const-string p1, "google_play_instant"

    .line 174
    .line 175
    invoke-virtual {p3}, Li5/d;->a()Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-string p1, "referrer_click_timestamp_server_seconds"

    .line 187
    .line 188
    invoke-virtual {p3}, Li5/d;->g()J

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    const-string p1, "install_begin_timestamp_server_seconds"

    .line 200
    .line 201
    invoke-virtual {p3}, Li5/d;->g()J

    .line 202
    .line 203
    .line 204
    move-result-wide p2

    .line 205
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    :cond_5
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 213
    .line 214
    const-string p2, "app_install"

    .line 215
    .line 216
    invoke-virtual {p1, p2, v0}, Lqi/h;->r(Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    .line 218
    .line 219
    sget-object p1, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->c:Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;

    .line 220
    .line 221
    if-eqz p1, :cond_6

    .line 222
    .line 223
    invoke-interface {p1, v2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;->a(Lcom/transsion/baselib/helper/ReferrerBean;)V

    .line 224
    .line 225
    .line 226
    :cond_6
    const/4 p1, 0x0

    .line 227
    sput-object p1, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->c:Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :goto_1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 231
    .line 232
    const/16 v5, 0x8

    .line 233
    .line 234
    const/4 v6, 0x0

    .line 235
    const-string v1, "RoomInstallReferrer"

    .line 236
    .line 237
    const-string v2, ""

    .line 238
    .line 239
    const/4 v4, 0x0

    .line 240
    invoke-static/range {v0 .. v6}, Lwf/a$a;->e(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :goto_2
    return-void
.end method
