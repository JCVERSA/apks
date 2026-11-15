.class public Lcom/cloud/tmc/kernel/utils/NetworkUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;,
        Lcom/cloud/tmc/kernel/utils/NetworkUtil$MyBroadcastReceiver;,
        Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;
    }
.end annotation


# static fields
.field public static final NETWORK_TYPE_2G:Ljava/lang/String; = "2G"

.field public static final NETWORK_TYPE_3G:Ljava/lang/String; = "3G"

.field public static final NETWORK_TYPE_4G:Ljava/lang/String; = "4G"

.field public static final NETWORK_TYPE_5G:Ljava/lang/String; = "5G"

.field public static final NETWORK_TYPE_NOT_REACHABLE:Ljava/lang/String; = "none"

.field public static final NETWORK_TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field public static final TAG:Ljava/lang/String; = "NetworkUtil"

.field private static final mOnAppStatusChangedListener:Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;

.field private static sAlreadyRegistered:Z

.field protected static sBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

.field private static final sListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sListenerList:Ljava/util/List;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sAlreadyRegistered:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    new-instance v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$1;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$1;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->mOnAppStatusChangedListener:Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->registerReceiver(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addListener(Landroid/content/Context;Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sListenerList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->registerReceiver(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->unRegisterReceiver(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic c(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->updateNetwork(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static detectNetwork(Landroid/net/NetworkInfo;)Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;
    .locals 4

    .line 1
    const-string v0, "NetworkUtil"

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 6
    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "type: "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, " subType: "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-eq v1, v2, :cond_7

    .line 57
    .line 58
    const/16 v3, 0x9

    .line 59
    .line 60
    if-ne v1, v3, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    if-nez v1, :cond_6

    .line 64
    .line 65
    if-eqz p0, :cond_5

    .line 66
    .line 67
    if-eq p0, v2, :cond_4

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    if-eq p0, v1, :cond_4

    .line 71
    .line 72
    const/4 v1, 0x4

    .line 73
    if-eq p0, v1, :cond_4

    .line 74
    .line 75
    const/4 v1, 0x7

    .line 76
    if-eq p0, v1, :cond_4

    .line 77
    .line 78
    const/16 v1, 0xb

    .line 79
    .line 80
    if-eq p0, v1, :cond_4

    .line 81
    .line 82
    const/16 v1, 0xd

    .line 83
    .line 84
    if-eq p0, v1, :cond_3

    .line 85
    .line 86
    const/16 v1, 0x10

    .line 87
    .line 88
    if-eq p0, v1, :cond_4

    .line 89
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 91
    .line 92
    .line 93
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_0
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_VERY_FAST:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_3
    :pswitch_1
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_4
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 103
    .line 104
    return-object p0

    .line 105
    :cond_5
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 106
    .line 107
    return-object p0

    .line 108
    :cond_6
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_7
    :goto_0
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_WIFI:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    return-object p0

    .line 114
    :goto_1
    const-string v1, "detectNetwork error!"

    .line 115
    .line 116
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 120
    .line 121
    return-object p0

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentNetworkType(Landroid/content/Context;Z)Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->updateNetwork(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 12
    .line 13
    return-object p0
.end method

.method public static getDetailNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, " , mobile: "

    .line 2
    .line 3
    const-string v1, "network unknown, type: "

    .line 4
    .line 5
    const-string v2, "NetworkUtil"

    .line 6
    .line 7
    const-string v3, "UNKNOWN"

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-object v3

    .line 12
    :cond_0
    const/4 v4, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v5, "connectivity"

    .line 18
    .line 19
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 31
    .line 32
    .line 33
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    const/4 v6, 0x1

    .line 35
    :try_start_1
    invoke-virtual {p0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 40
    .line 41
    .line 42
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :try_start_2
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 44
    .line 45
    if-eq v5, v7, :cond_4

    .line 46
    .line 47
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 48
    .line 49
    if-ne v5, v8, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    if-eq v6, v7, :cond_3

    .line 53
    .line 54
    if-ne v6, v8, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-object v3

    .line 58
    :cond_3
    :goto_0
    const-string p0, "WIFI"

    .line 59
    .line 60
    return-object p0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 68
    .line 69
    .line 70
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    const-string v7, "3G"

    .line 72
    .line 73
    packed-switch p0, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    :try_start_3
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v8, "TD-SCDMA"

    .line 81
    .line 82
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-nez v8, :cond_6

    .line 87
    .line 88
    const-string v8, "WCDMA"

    .line 89
    .line 90
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-nez v8, :cond_6

    .line 95
    .line 96
    const-string v8, "CDMA2000"

    .line 97
    .line 98
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_5

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return-object v3

    .line 134
    :cond_6
    :goto_2
    return-object v7

    .line 135
    :pswitch_0
    const-string p0, "5G"

    .line 136
    .line 137
    return-object p0

    .line 138
    :pswitch_1
    const-string p0, "4G"

    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_2
    return-object v7

    .line 142
    :pswitch_3
    const-string p0, "2G"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    .line 144
    return-object p0

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    move-object v6, v4

    .line 147
    goto :goto_3

    .line 148
    :catchall_2
    move-exception p0

    .line 149
    move-object v5, v4

    .line 150
    move-object v6, v5

    .line 151
    :goto_3
    invoke-static {v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    if-nez v4, :cond_7

    .line 163
    .line 164
    const-string v1, "null"

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_7
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    :goto_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v0, ", wifi: "

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    return-object v3

    .line 200
    nop

    .line 201
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

.method public static getOnAppStatusChangedListener()Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->mOnAppStatusChangedListener:Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getSimpleNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "fail"

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v1, "connectivity"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string v1, "NetworkUtil"

    .line 25
    .line 26
    const-string v2, "Exception"

    .line 27
    .line 28
    invoke-static {v1, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    :goto_0
    if-eqz p0, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/4 v0, 0x1

    .line 39
    if-eq p0, v0, :cond_2

    .line 40
    .line 41
    const/16 v0, 0x9

    .line 42
    .line 43
    if-ne p0, v0, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string v0, "wwan"

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    const-string v0, "wifi"

    .line 50
    .line 51
    :cond_3
    :goto_2
    return-object v0
.end method

.method private static declared-synchronized registerReceiver(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sAlreadyRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_1
    const/4 v1, 0x1

    .line 15
    :try_start_1
    sput-boolean v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sAlreadyRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    :try_start_2
    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    new-instance v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil$MyBroadcastReceiver;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$MyBroadcastReceiver;-><init>(Lcom/cloud/tmc/kernel/utils/a;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sget-object v2, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    .line 50
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :goto_1
    :try_start_3
    const-string v1, "NetworkUtil"

    .line 55
    .line 56
    const-string v2, "registerReceiver error"

    .line 57
    .line 58
    invoke-static {v1, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    .line 60
    .line 61
    :goto_2
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    throw p0
.end method

.method public static removeListener(Landroid/content/Context;Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sListenerList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->unRegisterReceiver(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public static transferNetworkType(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil$2;->$SwitchMap$com$cloud$tmc$kernel$utils$NetworkUtil$Network:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string p0, "UNKNOWN"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    const-string p0, "WIFI"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_1
    const-string p0, "5G"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_2
    const-string p0, "4G"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_3
    const-string p0, "3G"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_4
    const-string p0, "2G"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_5
    const-string p0, "none"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized unRegisterReceiver(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-boolean v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sAlreadyRegistered:Z

    .line 6
    .line 7
    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object v1, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    sput-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :catch_0
    move-exception p0

    .line 30
    :try_start_2
    const-string v1, "NetworkUtil"

    .line 31
    .line 32
    const-string v2, "unRegisterReceiver error"

    .line 33
    .line 34
    invoke-static {v1, v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :cond_1
    :goto_1
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    throw p0
.end method

.method private static updateNetwork(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "connectivity"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string v0, "NetworkUtil"

    .line 23
    .line 24
    const-string v1, "exception detail"

    .line 25
    .line 26
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    :goto_0
    sget-object v0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->detectNetwork(Landroid/net/NetworkInfo;)Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sput-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    if-ne p0, v0, :cond_1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    const-string p0, "NetworkUtil"

    .line 44
    .line 45
    const-string v1, "onNetworkChanged"

    .line 46
    .line 47
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sListenerList:Ljava/util/List;

    .line 51
    .line 52
    monitor-enter p0

    .line 53
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    sget-object v3, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->sCurrentNetworkType:Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;

    .line 72
    .line 73
    invoke-interface {v2, v0, v3}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;->onNetworkChanged(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw v0

    .line 83
    :cond_4
    :goto_3
    return-void
.end method
