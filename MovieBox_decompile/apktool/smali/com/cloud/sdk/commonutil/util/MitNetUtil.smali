.class public Lcom/cloud/sdk/commonutil/util/MitNetUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "connectivity"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 35
    .line 36
    if-eq v0, v1, :cond_2

    .line 37
    .line 38
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 39
    .line 40
    if-ne v0, v1, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    :goto_0
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_WIFI:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_3
    const/16 v0, 0x9

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 61
    .line 62
    if-eq v0, v1, :cond_4

    .line 63
    .line 64
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 65
    .line 66
    if-ne v0, v1, :cond_5

    .line 67
    .line 68
    :cond_4
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_ETHERNET:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_5
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_9

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_9

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_8

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    packed-switch v0, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    :pswitch_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string v0, "TD-SCDMA"

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_7

    .line 107
    .line 108
    const-string v0, "WCDMA"

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_7

    .line 115
    .line 116
    const-string v0, "CDMA2000"

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_6

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 126
    .line 127
    return-object p0

    .line 128
    :cond_7
    :goto_1
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_3G:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 129
    .line 130
    return-object p0

    .line 131
    :pswitch_1
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_5G:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 132
    .line 133
    return-object p0

    .line 134
    :pswitch_2
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_4G:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 135
    .line 136
    return-object p0

    .line 137
    :pswitch_3
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_3G:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 138
    .line 139
    return-object p0

    .line 140
    :pswitch_4
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_2G:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 141
    .line 142
    return-object p0

    .line 143
    :cond_8
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    return-object p0

    .line 146
    :goto_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v1, "MitNetUtil"

    .line 151
    .line 152
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {v0, v1, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_9
    sget-object p0, Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/cloud/sdk/commonutil/util/MitNetUtil$NetworkType;

    .line 160
    .line 161
    return-object p0

    .line 162
    nop

    .line 163
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

.method public static b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

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
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

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
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_0
    const-string v0, ""

    .line 33
    .line 34
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "connectivity"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_4

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    const/4 v2, 0x3

    .line 53
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    move v0, v1

    .line 63
    :cond_3
    return v0

    .line 64
    :goto_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "MitNetUtil"

    .line 69
    .line 70
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v1, v2, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    return v0
.end method
