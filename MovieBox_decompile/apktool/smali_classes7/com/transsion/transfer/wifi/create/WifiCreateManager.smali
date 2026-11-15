.class public final Lcom/transsion/transfer/wifi/create/WifiCreateManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/wifi/create/a;


# static fields
.field public static final a:Lcom/transsion/transfer/wifi/create/WifiCreateManager;

.field private static b:Lcom/transsion/transfer/wifi/create/a;

.field private static c:Lcom/transsion/transfer/wifi/create/adapter/b;

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/wifi/create/WifiCreateManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->a:Lcom/transsion/transfer/wifi/create/WifiCreateManager;

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

.method public static final synthetic c()Lcom/transsion/transfer/wifi/create/adapter/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->c:Lcom/transsion/transfer/wifi/create/adapter/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/transfer/wifi/create/WifiCreateManager;)Lcom/transsion/transfer/wifi/create/adapter/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->i()Lcom/transsion/transfer/wifi/create/adapter/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/transfer/wifi/create/a;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->b:Lcom/transsion/transfer/wifi/create/a;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f(Lcom/transsion/transfer/wifi/create/adapter/b;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->c:Lcom/transsion/transfer/wifi/create/adapter/b;

    .line 2
    .line 3
    return-void
.end method

.method private final h()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/transfer/wifi/create/WifiCreateManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final i()Lcom/transsion/transfer/wifi/create/adapter/b;
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->h()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, " --> initWifiAdapterWithAndroidVersion() --> wifiManager.isP2pSupported -> P2pWifiAdapter()"

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v0, v4, v3, v2, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;-><init>()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->h()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, " --> initWifiAdapterWithAndroidVersion() --> checkCanWriteSetting(TransBaseApplication.CONTEXT) -> ApWifiAdapter()"

    .line 73
    .line 74
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v0, v4, v3, v2, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/transsion/transfer/wifi/create/adapter/a;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/create/adapter/a;-><init>()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->h()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v4, " --> initWifiAdapterWithAndroidVersion() --> else -> LocalHostWifiAdapter()"

    .line 105
    .line 106
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v0, v4, v3, v2, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/transsion/transfer/wifi/create/adapter/c;

    .line 117
    .line 118
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/create/adapter/c;-><init>()V

    .line 119
    .line 120
    .line 121
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ldu/a;J)V
    .locals 4

    .line 1
    sget-object p2, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->b:Lcom/transsion/transfer/wifi/create/a;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-wide v2, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->d:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    invoke-interface {p2, p1, v0, v1}, Lcom/transsion/transfer/wifi/create/a;->a(Ldu/a;J)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public b(IJ)V
    .locals 4

    .line 1
    sget-object p2, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->b:Lcom/transsion/transfer/wifi/create/a;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-wide v2, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->d:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    invoke-interface {p2, p1, v0, v1}, Lcom/transsion/transfer/wifi/create/a;->b(IJ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->j()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final g(Ldu/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/create/a;)V
    .locals 7

    .line 1
    const-string v0, "wifiInfoModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listener"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/transsion/transfer/wifi/create/WifiCreateManager$createWifi$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v4, p3, p1, p2, v0}, Lcom/transsion/transfer/wifi/create/WifiCreateManager$createWifi$1;-><init>(Lcom/transsion/transfer/wifi/create/a;Ldu/a;Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v1, p2

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final j()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 5
    .line 6
    sput-object v2, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->b:Lcom/transsion/transfer/wifi/create/a;

    .line 7
    .line 8
    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 9
    .line 10
    sget-object v4, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->a:Lcom/transsion/transfer/wifi/create/WifiCreateManager;

    .line 11
    .line 12
    invoke-direct {v4}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->h()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v5, " --> releaseWifi() --> \u53d1\u9001\u7aef\u5f00\u59cb\u91ca\u653e\u8d44\u6e90"

    .line 25
    .line 26
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v3, v5, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v5, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/transsion/transfer/wifi/util/WifiUtils;->x()V

    .line 39
    .line 40
    .line 41
    sget-object v5, Lcu/a;->a:Lcu/a;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcu/a;->b()V

    .line 44
    .line 45
    .line 46
    sget-object v5, Lcom/transsion/transfer/wifi/util/f;->a:Lcom/transsion/transfer/wifi/util/f;

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/transsion/transfer/wifi/util/f;->c()V

    .line 49
    .line 50
    .line 51
    sget-object v5, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->c:Lcom/transsion/transfer/wifi/create/adapter/b;

    .line 52
    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/transsion/transfer/wifi/create/adapter/b;->f()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v3

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    invoke-direct {v4}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->h()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v4, " --> releaseWifi() --> wifiAdapter == null"

    .line 74
    .line 75
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3, v4, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    sput-object v2, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->c:Lcom/transsion/transfer/wifi/create/adapter/b;

    .line 86
    .line 87
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    goto :goto_2

    .line 94
    :goto_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 95
    .line 96
    invoke-static {v3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    :goto_2
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-nez v3, :cond_1

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_1
    sget-object v4, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 112
    .line 113
    sget-object v5, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->a:Lcom/transsion/transfer/wifi/create/WifiCreateManager;

    .line 114
    .line 115
    invoke-direct {v5}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->h()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v5, " --> releaseWifi() --> exception = "

    .line 128
    .line 129
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {v4, v3, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :goto_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sput-wide v0, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->d:J

    .line 6
    .line 7
    sget-object v0, Lcu/c;->a:Lcu/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcu/c;->k()V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->b:Lcom/transsion/transfer/wifi/create/a;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/transsion/transfer/wifi/create/a;->onStart()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
