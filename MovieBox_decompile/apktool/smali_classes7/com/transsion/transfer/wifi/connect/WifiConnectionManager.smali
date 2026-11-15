.class public final Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/wifi/connect/b;


# static fields
.field public static final a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

.field private static b:Landroidx/appcompat/app/AppCompatActivity;

.field private static c:Lkotlinx/coroutines/n0;

.field private static d:Ldu/a;

.field private static e:Lcom/transsion/transfer/wifi/connect/b;

.field private static f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

.field private static g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

.field private static h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

.field private static i:J

.field private static volatile j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

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

.method public static final synthetic f(Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h()Lcom/transsion/transfer/wifi/connect/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e:Lcom/transsion/transfer/wifi/connect/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic j(Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method private final m()V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

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
    const-string v1, " --> connect() --> SDK_INT\u6216targetSdkVersion\u7248\u672c < (Q = 29) Android 10"

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
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    .line 40
    .line 41
    :cond_0
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    sget-object v3, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Ldu/a;

    .line 46
    .line 47
    sget-object v4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    move-object v5, p0

    .line 53
    invoke-static/range {v1 .. v7}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->b(Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;Landroidx/appcompat/app/AppCompatActivity;Ldu/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method private final o()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

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

.method private final p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private final q()V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

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
    const-string v1, " --> innerConnect() --> \u5efa\u7acb Wi-Fi \u8fde\u63a5 --> start ...."

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
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Ldu/a;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Ldu/a;->p()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const-string v5, "DIRECT-"

    .line 41
    .line 42
    invoke-static {v1, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v5, 0x1

    .line 47
    if-ne v1, v5, :cond_0

    .line 48
    .line 49
    sget-object v1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->q()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v5, v2

    .line 59
    :goto_0
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Ldu/a;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Ldu/a;->p()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move-object v1, v4

    .line 69
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 76
    .line 77
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "getApp(...)"

    .line 82
    .line 83
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->r(Landroid/content/Context;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v5, :cond_2

    .line 91
    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->r()V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    if-nez v0, :cond_3

    .line 99
    .line 100
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->w()V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->m()V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, " --> innerConnect() --> wifiInfoModel.wifiSsid is empty --> return"

    .line 121
    .line 122
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    const/16 v0, 0x7d0

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->b(I)V

    .line 135
    .line 136
    .line 137
    :goto_2
    return-void
.end method

.method private final r()V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

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
    const-string v1, " --> connect() --> \u652f\u6301(Wi-Fi P2P) \u4e14SDK_INT\u6216targetSdkVersion\u7248\u672c >= (Q = 29) -- Android 10"

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
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "connectivity"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 55
    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 64
    .line 65
    :cond_0
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    sget-object v3, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Ldu/a;

    .line 70
    .line 71
    sget-object v4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    .line 72
    .line 73
    const/4 v6, 0x1

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v2, 0x0

    .line 76
    move-object v5, p0

    .line 77
    invoke-static/range {v1 .. v7}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->b(Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;Landroidx/appcompat/app/AppCompatActivity;Ldu/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method

.method private final t()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/f;->a:Lcom/transsion/transfer/wifi/util/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/f;->c()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->x()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->k()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 20
    .line 21
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->k()V

    .line 26
    .line 27
    .line 28
    :cond_1
    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->h:Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;

    .line 29
    .line 30
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->k()V

    .line 35
    .line 36
    .line 37
    :cond_2
    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 38
    .line 39
    return-void
.end method

.method private final u(I)V
    .locals 10

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

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
    const-string v1, " --> resolveIP(netId: Int) --> \u6210\u529f\u5efa\u7acb\u8fde\u63a5 --> \u5f00\u59cb\u89e3\u6790IP\u5730\u5740 -- netId = "

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x2

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static {v0, p1, v1, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    new-instance v7, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$resolveIP$2;

    .line 42
    .line 43
    invoke-direct {v7, v3}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$resolveIP$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 44
    .line 45
    .line 46
    const/4 v8, 0x2

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method private final v(Ljava/net/InetAddress;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

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
    const-string v1, " --> resolveIP(address: InetAddress?) --> \u6210\u529f\u5efa\u7acb\u8fde\u63a5 --> \u5f00\u59cb\u89e3\u6790IP\u5730\u5740"

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
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v1, v4

    .line 38
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    sget-wide v7, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->i:J

    .line 49
    .line 50
    sub-long/2addr v5, v7

    .line 51
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move-object v7, v4

    .line 63
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " --> resolveIP(address: InetAddress?) --> \u975e\u7cfb\u7edf\u7ea7\u5e94\u7528P2P\u8fde\u63a5\u6210\u529f\u8017\u65f6 = "

    .line 72
    .line 73
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, " -- ip = "

    .line 80
    .line 81
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-nez p1, :cond_3

    .line 101
    .line 102
    :cond_2
    const-string p1, ""

    .line 103
    .line 104
    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v3, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$resolveIP$1;

    .line 117
    .line 118
    invoke-direct {v3, v4}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$resolveIP$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 119
    .line 120
    .line 121
    const/4 v4, 0x2

    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_2
    return-void
.end method

.method private final w()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " --> connect() --> \u4e0d\u652f\u6301(Wi-Fi P2P) \u4e14SDK_INT\u6216targetSdkVersion\u7248\u672c >= (Q = 29) -- Android 10"

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;-><init>()V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 46
    .line 47
    :cond_0
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->g:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Ldu/a;

    .line 52
    .line 53
    sget-object v2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    .line 54
    .line 55
    sget-object v3, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 56
    .line 57
    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->a(Landroidx/appcompat/app/AppCompatActivity;Ldu/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->b(Lcom/transsion/transfer/wifi/connect/b;Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(I)V
    .locals 11

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

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
    const-string v1, " --> onFail() --> code = "

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x2

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x7d1

    .line 34
    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    .line 37
    const/16 v0, 0x7dc

    .line 38
    .line 39
    if-eq p1, v0, :cond_0

    .line 40
    .line 41
    sget-object v0, Lcu/c;->a:Lcu/c;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcu/c;->e(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcu/c;->a:Lcu/c;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcu/c;->d()V

    .line 50
    .line 51
    .line 52
    :goto_0
    sget-object v5, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    new-instance v8, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$onFail$1;

    .line 57
    .line 58
    invoke-direct {v8, p1, v4}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$onFail$1;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    const/4 v9, 0x3

    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public c(Ljava/net/InetAddress;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->v(Ljava/net/InetAddress;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->u(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "ip"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->c(Lcom/transsion/transfer/wifi/connect/b;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sget-wide v2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->i:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    sget-object v2, Lcu/c;->a:Lcu/c;

    .line 17
    .line 18
    invoke-virtual {v2, v0, v1}, Lcu/c;->f(J)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->j:Z

    .line 23
    .line 24
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e:Lcom/transsion/transfer/wifi/connect/b;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {v0, p1}, Lcom/transsion/transfer/wifi/connect/b;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final n(Landroidx/appcompat/app/AppCompatActivity;Ldu/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->j:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget p2, Lcom/transsion/transfer/R$string;->transfer_wifi_connect_error_tip:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x0

    .line 21
    new-array p3, p2, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p1, p3}, Lcom/blankj/utilcode/util/ToastUtils;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    new-instance p4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p3, " --> connectWifi() --> \u5df2\u7ecf\u6709\u4e00\u4e2a\u4efb\u52a1\u5728\u8fde\u63a5\u4e86\uff0c\u8bf7\u7a0d\u540e"

    .line 41
    .line 42
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    const/4 p4, 0x2

    .line 50
    invoke-static {p1, p3, p2, p4, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->j:Z

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    sput-wide v2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->i:J

    .line 62
    .line 63
    sput-object p3, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    .line 64
    .line 65
    sput-object p2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->d:Ldu/a;

    .line 66
    .line 67
    sput-object p1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 68
    .line 69
    sput-object p4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e:Lcom/transsion/transfer/wifi/connect/b;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->onStart()V

    .line 72
    .line 73
    .line 74
    sget-object v4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    .line 75
    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    new-instance v7, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$connect$1;

    .line 79
    .line 80
    invoke-direct {v7, v1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$connect$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 81
    .line 82
    .line 83
    const/4 v8, 0x3

    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    sget-object v0, Lcu/c;->a:Lcu/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcu/c;->g()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e:Lcom/transsion/transfer/wifi/connect/b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/transsion/transfer/wifi/connect/b;->onStart()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final s()V
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
    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 7
    .line 8
    sget-object v4, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    .line 9
    .line 10
    invoke-direct {v4}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v5, " --> release() --> \u63a5\u6536\u7aef\u5f00\u59cb\u91ca\u653e\u8d44\u6e90"

    .line 23
    .line 24
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v3, v5, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sput-object v2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->e:Lcom/transsion/transfer/wifi/connect/b;

    .line 35
    .line 36
    sput-object v2, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->c:Lkotlinx/coroutines/n0;

    .line 37
    .line 38
    sput-boolean v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->j:Z

    .line 39
    .line 40
    const-wide/16 v5, 0x0

    .line 41
    .line 42
    sput-wide v5, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->i:J

    .line 43
    .line 44
    invoke-direct {v4}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->t()V

    .line 45
    .line 46
    .line 47
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v3

    .line 55
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 56
    .line 57
    invoke-static {v3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :goto_0
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-nez v3, :cond_0

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    sget-object v4, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 73
    .line 74
    sget-object v5, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    .line 75
    .line 76
    invoke-direct {v5}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->o()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, " --> release() --> it = "

    .line 89
    .line 90
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v4, v3, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method
