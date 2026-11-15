.class public final Lcom/tmc/network/NetworkMonitor;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;,
        Lcom/tmc/network/NetworkMonitor$NetworkStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u000201B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u0006\u0010\u001e\u001a\u00020\u0004J\n\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u0006\u0010!\u001a\u00020\u0015J\u0006\u0010\"\u001a\u00020\u0004J\u0010\u0010#\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0010J\u0006\u0010$\u001a\u00020\u000bJ\u0008\u0010%\u001a\u00020\u000bH\u0002J\u000e\u0010&\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020\u0007J\u0018\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u0004H\u0002J\u000e\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u0018J\u0010\u0010-\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u0010\u0010.\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u000e\u0010/\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/tmc/network/NetworkMonitor;",
        "",
        "()V",
        "apn",
        "",
        "bssid",
        "currentStatus",
        "Lcom/tmc/network/NetworkMonitor$NetworkStatus;",
        "isInited",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isNetworkConnected",
        "",
        "lastStatus",
        "mConnectivityManager",
        "Landroid/net/ConnectivityManager;",
        "mContext",
        "Landroid/content/Context;",
        "mNetworkType",
        "mReceiver",
        "Landroid/content/BroadcastReceiver;",
        "netStatus",
        "",
        "networkListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;",
        "base64Str",
        "str",
        "checkNetworkStatus",
        "",
        "context",
        "getNetworkId",
        "getNetworkInfo",
        "Landroid/net/NetworkInfo;",
        "getNetworkStatus",
        "getNetworkType",
        "init",
        "isConnected",
        "isMobile",
        "notifyNetworkChanged",
        "status",
        "parseNetworkStatus",
        "type",
        "subType",
        "registerListener",
        "listener",
        "registerNetworkCallback",
        "registerNetworkReceiver",
        "unregisterListener",
        "INetworkChangeListener",
        "NetworkStatus",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tmc/network/NetworkMonitor;

.field private static apn:Ljava/lang/String;

.field private static bssid:Ljava/lang/String;

.field private static currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

.field private static final isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isNetworkConnected:Z

.field private static lastStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mNetworkType:Ljava/lang/String;

.field private static final mReceiver:Landroid/content/BroadcastReceiver;

.field private static netStatus:I

.field private static networkListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tmc/network/NetworkMonitor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tmc/network/NetworkMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const-string v0, "unknown"

    .line 17
    .line 18
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    .line 19
    .line 20
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->apn:Ljava/lang/String;

    .line 21
    .line 22
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    .line 23
    .line 24
    sget-object v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->NONE:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 25
    .line 26
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 27
    .line 28
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->lastStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->networkListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    new-instance v0, Lcom/tmc/network/NetworkMonitor$mReceiver$1;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/tmc/network/NetworkMonitor$mReceiver$1;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    .line 44
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

.method public static final synthetic access$checkNetworkStatus(Lcom/tmc/network/NetworkMonitor;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tmc/network/NetworkMonitor;->checkNetworkStatus(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setNetStatus$p(I)V
    .locals 0

    .line 1
    sput p0, Lcom/tmc/network/NetworkMonitor;->netStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setNetworkConnected$p(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tmc/network/NetworkMonitor;->isNetworkConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method private final base64Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "unknown"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "(this as java.lang.String).getBytes(charset)"

    .line 19
    .line 20
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "encodeToString(str.toByteArray(), Base64.DEFAULT)"

    .line 29
    .line 30
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v0, p1

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 38
    .line 39
    const-string v1, "null cannot be cast to non-null type java.lang.String"

    .line 40
    .line 41
    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :goto_0
    sget-object v1, Lrf/b;->a:Lrf/b;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-object v0
.end method

.method private final checkNetworkStatus(Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/tmc/network/NetworkMonitor;->getNetworkInfo()Landroid/net/NetworkInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    const-string v1, "unknown"

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_a

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v2, v3, :cond_6

    .line 21
    .line 22
    const-string v0, "WIFI"

    .line 23
    .line 24
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "wifi"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    instance-of v0, p1, Landroid/net/wifi/WifiManager;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    if-nez p1, :cond_1

    .line 48
    .line 49
    :goto_1
    move-object p1, v1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    :goto_2
    sput-object p1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "02:00:00:00:00:00"

    .line 68
    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    sget-object p1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p1, v1, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    :cond_4
    sput-object v1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    .line 84
    .line 85
    :cond_5
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->WIFI:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 86
    .line 87
    sput-object p1, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_9

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v2, "networkInfo.subtypeName"

    .line 105
    .line 106
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, p1, v1}, Lcom/tmc/network/NetworkMonitor;->parseNetworkStatus(ILjava/lang/String;)Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sput-object p1, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->getType()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    sput-object p1, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-nez p1, :cond_7

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-nez p1, :cond_8

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_8
    sput-object p1, Lcom/tmc/network/NetworkMonitor;->apn:Ljava/lang/String;

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_9
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->NONE:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 143
    .line 144
    sput-object p1, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 145
    .line 146
    sput-object v1, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    .line 147
    .line 148
    sput-object v1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    .line 149
    .line 150
    sput-object v1, Lcom/tmc/network/NetworkMonitor;->apn:Ljava/lang/String;

    .line 151
    .line 152
    :goto_3
    sget-object p1, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->getType()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    sput-object p1, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_a
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->NONE:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 162
    .line 163
    sput-object p1, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 164
    .line 165
    sput-object v1, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    .line 166
    .line 167
    sput-object v1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    .line 168
    .line 169
    sput-object v1, Lcom/tmc/network/NetworkMonitor;->apn:Ljava/lang/String;

    .line 170
    .line 171
    :goto_4
    sget-object p1, Lcom/tmc/network/NetworkMonitor;->lastStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 172
    .line 173
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 174
    .line 175
    if-eq p1, v0, :cond_b

    .line 176
    .line 177
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->lastStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lcom/tmc/network/NetworkMonitor;->notifyNetworkChanged(Lcom/tmc/network/NetworkMonitor$NetworkStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :goto_5
    sget-object v0, Lrf/b;->a:Lrf/b;

    .line 184
    .line 185
    invoke-virtual {v0, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    :cond_b
    :goto_6
    return-void
.end method

.method private final getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .line 1
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :goto_0
    move-object v0, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v2, "connectivity"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_1
    instance-of v2, v0, Landroid/net/ConnectivityManager;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move-object v0, v1

    .line 33
    :goto_2
    sput-object v0, Lcom/tmc/network/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 34
    .line 35
    :cond_3
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_3
    return-object v1
.end method

.method private final isMobile()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G2:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 8
    .line 9
    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G3:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 14
    .line 15
    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G4:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->currentStatus:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 20
    .line 21
    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G5:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method private final parseNetworkStatus(ILjava/lang/String;)Lcom/tmc/network/NetworkMonitor$NetworkStatus;
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, -0x3bd8f00d

    .line 9
    .line 10
    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const v0, 0x4e97a8c

    .line 14
    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const v0, 0x7485a6eb

    .line 19
    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p1, "TD-SCDMA"

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string p1, "WCDMA"

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const-string p1, "CDMA2000"

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    :goto_0
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->NONE:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G3:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :pswitch_0
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G5:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :pswitch_1
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G4:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :pswitch_2
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G3:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_3
    sget-object p1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G2:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 66
    .line 67
    :goto_1
    return-object p1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final registerNetworkCallback(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move-object v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v2, "connectivity"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    instance-of v2, v0, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    :cond_1
    if-nez v1, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-direct {p0}, Lcom/tmc/network/NetworkMonitor;->getNetworkInfo()Landroid/net/NetworkInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    move v0, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const/4 v0, 0x0

    .line 42
    :goto_1
    sput-boolean v0, Lcom/tmc/network/NetworkMonitor;->isNetworkConnected:Z

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/tmc/network/NetworkMonitor;->checkNetworkStatus(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v0, 0x18

    .line 50
    .line 51
    if-lt p1, v0, :cond_5

    .line 52
    .line 53
    new-instance p1, Lcom/tmc/network/NetworkMonitor$registerNetworkCallback$1;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/tmc/network/NetworkMonitor$registerNetworkCallback$1;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v1, p1}, Le2/b;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    const/16 v0, 0x10

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    const/4 v2, -0x1

    .line 81
    :goto_2
    sput v2, Lcom/tmc/network/NetworkMonitor;->netStatus:I

    .line 82
    .line 83
    :cond_5
    return-void
.end method

.method private final registerNetworkReceiver(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v1, Lcom/tmc/network/NetworkMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    sget-object v0, Lrf/b;->a:Lrf/b;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method


# virtual methods
.method public final getNetworkId()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "WIFI"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x23

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/tmc/network/NetworkMonitor;->bssid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {p0, v1}, Lcom/tmc/network/NetworkMonitor;->base64Str(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/tmc/network/NetworkMonitor;->isMobile()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    sget-object v2, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget-object v1, Lcom/tmc/network/NetworkMonitor;->apn:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "unknown"

    .line 70
    .line 71
    :goto_0
    return-object v0
.end method

.method public final getNetworkStatus()I
    .locals 1

    .line 1
    sget v0, Lcom/tmc/network/NetworkMonitor;->netStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->mNetworkType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lrf/b;->a:Lrf/b;

    .line 15
    .line 16
    const-string v1, "NetworkMonitor"

    .line 17
    .line 18
    const-string v2, "NetworkMonitor.init"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lrf/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object p1, Lcom/tmc/network/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/tmc/network/NetworkMonitor;->registerNetworkCallback(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/tmc/network/NetworkMonitor;->registerNetworkReceiver(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Lcom/tmc/network/NetworkConfig;->setPackageName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    sget-object v0, Lrf/b;->a:Lrf/b;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final isConnected()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x18

    .line 5
    .line 6
    if-lt v1, v2, :cond_0

    .line 7
    .line 8
    sget-boolean v1, Lcom/tmc/network/NetworkMonitor;->isNetworkConnected:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/tmc/network/NetworkMonitor;->getNetworkInfo()Landroid/net/NetworkInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    return v0

    .line 28
    :goto_0
    sget-object v2, Lrf/b;->a:Lrf/b;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return v0
.end method

.method public final notifyNetworkChanged(Lcom/tmc/network/NetworkMonitor$NetworkStatus;)V
    .locals 2

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->networkListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;

    .line 23
    .line 24
    invoke-interface {v1, p1}, Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;->onNetworkChanged(Lcom/tmc/network/NetworkMonitor$NetworkStatus;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public final registerListener(Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;)V
    .locals 2

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lrf/b;->a:Lrf/b;

    .line 7
    .line 8
    const-string v1, "register listener "

    .line 9
    .line 10
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lrf/b;->c(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->networkListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final unregisterListener(Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->networkListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
