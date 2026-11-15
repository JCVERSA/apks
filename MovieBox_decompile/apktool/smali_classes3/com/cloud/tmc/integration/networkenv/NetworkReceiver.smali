.class public Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# static fields
.field private static ETHERNET_TIME:J = 0x0L

.field private static LAST_TYPE:I = -0x3

.field private static final NETWORK_MOBILE:I = 0x1

.field private static final NETWORK_NONE:I = -0x1

.field private static final NETWORK_WIFI:I = 0x0

.field private static NONE_TIME:J = 0x0L

.field private static TAG:Ljava/lang/String; = "TAG"

.field private static WIFI_TIME:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "connectivity"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, -0x1

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    return v0
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyyMMddhhmmss"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->getTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sget-wide v2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->WIFI_TIME:J

    .line 18
    .line 19
    cmp-long p2, v0, v2

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    sget-wide v2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->ETHERNET_TIME:J

    .line 24
    .line 25
    cmp-long p2, v0, v2

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    sget-wide v2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->NONE_TIME:J

    .line 30
    .line 31
    cmp-long p2, v0, v2

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-static {p1}, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->getNetworkState(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    sget p2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    .line 42
    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    sput-wide v0, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->WIFI_TIME:J

    .line 46
    .line 47
    sput p1, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string p2, "wifi\uff1a"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 p2, 0x1

    .line 64
    if-ne p1, p2, :cond_1

    .line 65
    .line 66
    sget v2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    .line 67
    .line 68
    if-eq v2, p2, :cond_1

    .line 69
    .line 70
    sput-wide v0, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->ETHERNET_TIME:J

    .line 71
    .line 72
    sput p1, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string p2, "\u6570\u636e\u7f51\u7edc\uff1a"

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/4 p2, -0x1

    .line 89
    if-ne p1, p2, :cond_2

    .line 90
    .line 91
    sget v2, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    .line 92
    .line 93
    if-eq v2, p2, :cond_2

    .line 94
    .line 95
    sput-wide v0, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->NONE_TIME:J

    .line 96
    .line 97
    sput p1, Lcom/cloud/tmc/integration/networkenv/NetworkReceiver;->LAST_TYPE:I

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string p2, "\u65e0\u7f51\u7edc\uff1a"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_0
    return-void
.end method
