.class public final Lcom/cloud/tmc/ad/utils/MitNetUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/utils/MitNetUtil;",
        "",
        "()V",
        "operatorName",
        "",
        "getOperatorName",
        "()Ljava/lang/String;",
        "getNetworkType",
        "Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;",
        "context",
        "Landroid/content/Context;",
        "isNetworkAvailable",
        "",
        "NetworkType",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/ad/utils/MitNetUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/ad/utils/MitNetUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/ad/utils/MitNetUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/ad/utils/MitNetUtil;->INSTANCE:Lcom/cloud/tmc/ad/utils/MitNetUtil;

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


# virtual methods
.method public final getNetworkType(Landroid/content/Context;)Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "connectivity"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 35
    .line 36
    if-eq v1, v2, :cond_1

    .line 37
    .line 38
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 39
    .line 40
    if-ne v1, v2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_3

    .line 45
    :cond_1
    :goto_0
    sget-object p1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_WIFI:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_2
    const/16 v1, 0x9

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 61
    .line 62
    if-eq v1, v2, :cond_3

    .line 63
    .line 64
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 65
    .line 66
    if-ne v1, v2, :cond_4

    .line 67
    .line 68
    :cond_3
    sget-object p1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_ETHERNET:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_4
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_8

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_7

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    packed-switch v1, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v1, "TD-SCDMA"

    .line 101
    .line 102
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_6

    .line 107
    .line 108
    const-string v1, "WCDMA"

    .line 109
    .line 110
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_6

    .line 115
    .line 116
    const-string v1, "CDMA2000"

    .line 117
    .line 118
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    sget-object p1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    :goto_1
    sget-object p1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_3G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :pswitch_1
    sget-object p1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_5G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :pswitch_2
    sget-object p1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_4G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :pswitch_3
    sget-object p1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_3G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :pswitch_4
    sget-object p1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_2G:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    sget-object p1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    :goto_2
    return-object p1

    .line 146
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    :cond_8
    sget-object p1, Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    .line 150
    .line 151
    return-object p1

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getOperatorName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "phone"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "telephonyManager.simOperatorName"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    const-string v0, ""

    .line 43
    .line 44
    return-object v0
.end method

.method public final isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "connectivity"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    move v0, v1

    .line 67
    :cond_1
    return v0

    .line 68
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_2
    return v0
.end method
