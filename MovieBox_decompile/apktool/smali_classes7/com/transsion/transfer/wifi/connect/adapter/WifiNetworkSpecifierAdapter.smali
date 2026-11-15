.class public final Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;
.super Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;
.source "source.java"


# instance fields
.field private final e:Lkotlin/Lazy;

.field private f:Landroid/net/ConnectivityManager$NetworkCallback;

.field private g:Z

.field private final h:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/adapter/e;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->e:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$a;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$a;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 21
    .line 22
    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->h:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic l()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->r()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic m(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->q()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->h:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic p(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method private final q()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final r()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "connectivity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 10

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
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->g()Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    new-instance v7, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$doClose$1$1;

    .line 13
    .line 14
    invoke-direct {v7, p0, v2}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$doClose$1$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v8, 0x3

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->q()Landroid/net/ConnectivityManager;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->q()Landroid/net/ConnectivityManager;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 41
    .line 42
    .line 43
    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v4, " --> close() --> end"

    .line 58
    .line 59
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v3, v4, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_2

    .line 76
    :goto_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 77
    .line 78
    invoke-static {v3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :goto_2
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_1
    sget-object v4, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v5, " --> close() --> \u53d1\u751f\u5f02\u5e38 --> it = "

    .line 108
    .line 109
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {v4, v3, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :goto_3
    return-void
.end method

.method public d()V
    .locals 11

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " --> connect() --> start connect with WifiNetworkSpecifier --> start ...."

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->g()Lkotlinx/coroutines/n0;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    new-instance v8, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$doConnect$1;

    .line 37
    .line 38
    invoke-direct {v8, p0, v4}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$doConnect$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    const/4 v9, 0x3

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/bridge/y;->a()Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, ""

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Ldu/a;->p()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    :cond_1
    move-object v1, v2

    .line 67
    :cond_2
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/bridge/r;->a(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "setSsid(...)"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1}, Ldu/a;->o()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    invoke-virtual {v1}, Ldu/a;->o()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    move-object v2, v1

    .line 106
    :cond_5
    :goto_0
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/bridge/u;->a(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 107
    .line 108
    .line 109
    :cond_6
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 110
    .line 111
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 112
    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/16 v2, 0xc

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v0}, Lcom/cloud/tmc/integration/bridge/v;->a(Landroid/net/wifi/WifiNetworkSpecifier$Builder;)Landroid/net/wifi/WifiNetworkSpecifier;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/cloud/tmc/integration/bridge/w;->a(Ljava/lang/Object;)Landroid/net/NetworkSpecifier;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v1, v0}, Lcom/cloud/tmc/integration/bridge/x;->a(Landroid/net/NetworkRequest$Builder;Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->q()Landroid/net/ConnectivityManager;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 146
    .line 147
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method
