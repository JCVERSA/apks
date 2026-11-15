.class public final Lnf/b;
.super Lokhttp3/EventListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnf/b$a;
    }
.end annotation


# static fields
.field public static final c:Lnf/b$a;

.field private static final d:Lokhttp3/EventListener$Factory;


# instance fields
.field private a:Lcom/tmc/network/stat/RequestStat;

.field private b:Lcom/tmc/network/stat/ConnectStat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnf/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnf/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lnf/b;->c:Lnf/b$a;

    .line 8
    .line 9
    new-instance v0, Lnf/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lnf/a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lnf/b;->d:Lokhttp3/EventListener$Factory;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v0, v1, v0}, Lnf/b;-><init>(Lcom/tmc/network/stat/RequestStat;Lcom/tmc/network/stat/ConnectStat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/tmc/network/stat/RequestStat;Lcom/tmc/network/stat/ConnectStat;)V
    .locals 2

    const-string v0, "requestStat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectStat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    .line 6
    iput-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 7
    iput-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 8
    sget-object p1, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor;->isConnected()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tmc/network/stat/ConnectStat;->setNetworkConnected(Z)V

    .line 9
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor;->getNetworkStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tmc/network/stat/ConnectStat;->setNetStatus(I)V

    .line 10
    iget-object p2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object v0, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {v0}, Lcom/tmc/network/stat/ConnectStat;->getNetStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tmc/network/stat/RequestStat;->setNetStatus(I)V

    .line 11
    iget-object p2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    iget-object v0, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {v0}, Lcom/tmc/network/stat/ConnectStat;->isNetworkConnected()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tmc/network/stat/RequestStat;->setNetworkConnected(Z)V

    .line 12
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tmc/network/stat/ConnectStat;->setAppName(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tmc/network/stat/RequestStat;->setAppName(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tmc/network/stat/RequestStat;->setNetworkType(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkMonitor;->getNetworkType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tmc/network/stat/ConnectStat;->setNetworkType(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->isNetworkImproveEnable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setNetworkImprove(Z)V

    .line 17
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->isNetworkImproveEnable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setNetworkImprove(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tmc/network/stat/RequestStat;Lcom/tmc/network/stat/ConnectStat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 2
    new-instance p1, Lcom/tmc/network/stat/RequestStat;

    invoke-direct {p1}, Lcom/tmc/network/stat/RequestStat;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 3
    new-instance p2, Lcom/tmc/network/stat/ConnectStat;

    invoke-direct {p2}, Lcom/tmc/network/stat/ConnectStat;-><init>()V

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lnf/b;-><init>(Lcom/tmc/network/stat/RequestStat;Lcom/tmc/network/stat/ConnectStat;)V

    return-void
.end method

.method public static synthetic b(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 0

    .line 1
    invoke-static {p0}, Lnf/b;->c(Lokhttp3/Call;)Lokhttp3/EventListener;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lnf/b;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {p0, v0, v0, v1, v0}, Lnf/b;-><init>(Lcom/tmc/network/stat/RequestStat;Lcom/tmc/network/stat/ConnectStat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public static final synthetic d()Lokhttp3/EventListener$Factory;
    .locals 1

    .line 1
    sget-object v0, Lnf/b;->d:Lokhttp3/EventListener$Factory;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .locals 4

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/tmc/network/stat/RequestStat;->getCallStart()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setOnewayTime(J)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 26
    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/tmc/network/stat/RequestStat;->isPre()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    invoke-static {}, Lcom/tmc/monitor/AppMonitor;->d()Lcom/tmc/monitor/AppMonitor;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/tmc/monitor/AppMonitor;->c(Lpf/c;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ioe"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object v2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/tmc/network/stat/RequestStat;->getCallStart()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sub-long/2addr v0, v2

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setOnewayTime(J)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 37
    .line 38
    iget-object v0, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/tmc/network/stat/ConnectStat;->getRet()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setConnRet(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setErrMsg(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 57
    .line 58
    iget-object v0, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/tmc/network/stat/RequestStat;->getStep()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 65
    .line 66
    .line 67
    instance-of p1, p2, Ljava/net/UnknownHostException;

    .line 68
    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 72
    .line 73
    const/16 p2, -0x18f

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setErrCode(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getDnsStart()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    sub-long/2addr v0, v2

    .line 91
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setDnsTime(J)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/tmc/network/stat/ConnectStat;->isPre()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_3

    .line 101
    .line 102
    invoke-static {}, Lcom/tmc/monitor/AppMonitor;->d()Lcom/tmc/monitor/AppMonitor;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lcom/tmc/monitor/AppMonitor;->c(Lpf/c;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    instance-of p1, p2, Ljavax/net/ssl/SSLException;

    .line 113
    .line 114
    if-eqz p1, :cond_1

    .line 115
    .line 116
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 117
    .line 118
    const/16 p2, -0x192

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setErrCode(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    instance-of p1, p2, Ljava/net/ConnectException;

    .line 125
    .line 126
    if-eqz p1, :cond_2

    .line 127
    .line 128
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 129
    .line 130
    const/16 p2, -0x190

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setErrCode(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 137
    .line 138
    const/16 p2, -0x196

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setErrCode(I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/tmc/network/stat/RequestStat;->getErrMsg()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const-string p2, "Canceled"

    .line 150
    .line 151
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_3

    .line 156
    .line 157
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 158
    .line 159
    const/4 p2, 0x2

    .line 160
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    .line 161
    .line 162
    .line 163
    :cond_3
    :goto_0
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/tmc/network/stat/RequestStat;->isPre()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_4

    .line 170
    .line 171
    invoke-static {}, Lcom/tmc/monitor/AppMonitor;->d()Lcom/tmc/monitor/AppMonitor;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object p2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 176
    .line 177
    invoke-virtual {p1, p2}, Lcom/tmc/monitor/AppMonitor;->c(Lpf/c;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 3

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 10
    .line 11
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/tmc/network/stat/RequestStat;->setUrl(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 27
    .line 28
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setHost(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 44
    .line 45
    iget-object v1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/tmc/network/stat/ConnectStat;->getHost()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/tmc/network/stat/RequestStat;->setHost(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/tmc/network/stat/RequestStat;->setCallStart(J)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "isPre"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "true"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    iget-object v0, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Lcom/tmc/network/stat/RequestStat;->setPre(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setPre(Z)V

    .line 90
    .line 91
    .line 92
    :cond_0
    iget-object v0, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 93
    .line 94
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v1, "requestChannel"

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v0, p1}, Lcom/tmc/network/stat/RequestStat;->setRequestChannel(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public canceled(Lokhttp3/Call;)V
    .locals 4

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->canceled(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/tmc/network/stat/RequestStat;->getCallStart()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setOnewayTime(J)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inetSocketAddress"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "proxy"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 p3, 0x0

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    move-object p2, p3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :goto_0
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setIp(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 38
    .line 39
    if-nez p4, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    :goto_1
    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setProtocol(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 50
    .line 51
    const/4 p2, 0x1

    .line 52
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setRet(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide p2

    .line 61
    iget-object p4, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 62
    .line 63
    invoke-virtual {p4}, Lcom/tmc/network/stat/ConnectStat;->getConnectStart()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    sub-long/2addr p2, v0

    .line 68
    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/ConnectStat;->setConnTime(J)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 72
    .line 73
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getConnTime()J

    .line 76
    .line 77
    .line 78
    move-result-wide p2

    .line 79
    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setConnWaitTime(J)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/tmc/network/stat/ConnectStat;->getConnTime()J

    .line 85
    .line 86
    .line 87
    move-result-wide p2

    .line 88
    iget-object p4, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 89
    .line 90
    invoke-virtual {p4}, Lcom/tmc/network/stat/ConnectStat;->getTlsTime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    sub-long/2addr p2, v0

    .line 95
    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/ConnectStat;->setTcpTime(J)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 99
    .line 100
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getTcpTime()J

    .line 103
    .line 104
    .line 105
    move-result-wide p2

    .line 106
    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setTcpTime(J)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 110
    .line 111
    iget-object p2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/tmc/network/stat/RequestStat;->getStep()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/tmc/network/stat/ConnectStat;->isPre()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_2

    .line 127
    .line 128
    invoke-static {}, Lcom/tmc/monitor/AppMonitor;->d()Lcom/tmc/monitor/AppMonitor;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lcom/tmc/monitor/AppMonitor;->c(Lpf/c;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inetSocketAddress"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "proxy"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "ioe"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-super/range {p0 .. p5}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide p3

    .line 30
    iget-object v0, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/tmc/network/stat/ConnectStat;->getConnectStart()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    sub-long/2addr p3, v0

    .line 37
    invoke-virtual {p1, p3, p4}, Lcom/tmc/network/stat/ConnectStat;->setConnTime(J)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 41
    .line 42
    iget-object p3, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 43
    .line 44
    invoke-virtual {p3}, Lcom/tmc/network/stat/ConnectStat;->getConnTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide p3

    .line 48
    invoke-virtual {p1, p3, p4}, Lcom/tmc/network/stat/RequestStat;->setConnWaitTime(J)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 52
    .line 53
    const/4 p3, 0x0

    .line 54
    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setRet(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 58
    .line 59
    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setErrMsg(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    instance-of p1, p5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 67
    .line 68
    const/16 p3, -0x192

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 73
    .line 74
    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setErrCode(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-nez p1, :cond_0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const-string p3, "Certificate pinning failure!"

    .line 85
    .line 86
    const/4 p4, 0x1

    .line 87
    invoke-static {p1, p3, p4}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-ne p1, p4, :cond_4

    .line 92
    .line 93
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 94
    .line 95
    invoke-virtual {p1, p4}, Lcom/tmc/network/stat/ConnectStat;->setPinning(Z)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 99
    .line 100
    invoke-virtual {p1, p4}, Lcom/tmc/network/stat/RequestStat;->setPinning(Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    instance-of p1, p5, Ljavax/net/ssl/SSLException;

    .line 105
    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 109
    .line 110
    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setErrCode(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    instance-of p1, p5, Ljava/net/ConnectException;

    .line 115
    .line 116
    if-eqz p1, :cond_3

    .line 117
    .line 118
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 119
    .line 120
    const/16 p3, -0x190

    .line 121
    .line 122
    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setErrCode(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 127
    .line 128
    const/16 p3, -0x196

    .line 129
    .line 130
    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setErrCode(I)V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_0
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 134
    .line 135
    iget-object p3, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 136
    .line 137
    invoke-virtual {p3}, Lcom/tmc/network/stat/RequestStat;->getStep()I

    .line 138
    .line 139
    .line 140
    move-result p3

    .line 141
    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/tmc/network/stat/ConnectStat;->isPre()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_5

    .line 151
    .line 152
    invoke-static {}, Lcom/tmc/monitor/AppMonitor;->d()Lcom/tmc/monitor/AppMonitor;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p3, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 157
    .line 158
    invoke-virtual {p1, p3}, Lcom/tmc/monitor/AppMonitor;->c(Lpf/c;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    sget-object p1, Lcom/tmc/network/strategy/LocalDnsStrategy;->c:Lcom/tmc/network/strategy/LocalDnsStrategy$a;

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/tmc/network/strategy/LocalDnsStrategy$a;->a()Lcom/tmc/network/strategy/LocalDnsStrategy;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    const-string p4, "inetSocketAddress.hostName"

    .line 172
    .line 173
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    const-string p4, "inetSocketAddress.address"

    .line 181
    .line 182
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, p3, p2}, Lcom/tmc/network/strategy/LocalDnsStrategy;->i(Ljava/lang/String;Ljava/net/InetAddress;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inetSocketAddress"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "proxy"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setConnectStart(J)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 29
    .line 30
    const/4 p3, 0x2

    .line 31
    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 35
    .line 36
    invoke-virtual {p1, p3}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setIp(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 53
    .line 54
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getIp()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setIp(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "connection"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setConnRet(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 21
    .line 22
    invoke-interface {p2}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v1}, Lcom/tmc/network/stat/RequestStat;->setIp(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 42
    .line 43
    invoke-interface {p2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Lcom/tmc/network/stat/RequestStat;->setProtocol(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_0

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {p2}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Lokhttp3/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :goto_0
    if-nez p1, :cond_1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setPinning(Z)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setPinning(Z)V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_1
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 110
    .line 111
    invoke-interface {p2}, Lokhttp3/Connection;->handshake()Lokhttp3/Handshake;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    const-string v0, ""

    .line 116
    .line 117
    if-nez p2, :cond_3

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {p2}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    if-nez p2, :cond_4

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    if-nez p2, :cond_5

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    move-object v0, p2

    .line 135
    :goto_2
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setTlsVersion(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 139
    .line 140
    iget-object p2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 141
    .line 142
    invoke-virtual {p2}, Lcom/tmc/network/stat/RequestStat;->getTlsVersion()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setTlsVersion(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "domainName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "inetAddressList"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    iget-object v0, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/tmc/network/stat/ConnectStat;->getDnsStart()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    sub-long/2addr p2, v0

    .line 32
    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/ConnectStat;->setDnsTime(J)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 36
    .line 37
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getDnsTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide p2

    .line 43
    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setDnsTime(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "domainName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setDnsStart(J)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide p2

    .line 15
    iget-object v0, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/tmc/network/stat/RequestStat;->getReqBodyStart()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    sub-long/2addr p2, v0

    .line 22
    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setReqBodyTime(J)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide p2

    .line 31
    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setSendDataEnd(J)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide p2

    .line 40
    iget-object v0, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/tmc/network/stat/RequestStat;->getReqHeaderStart()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    sub-long/2addr p2, v0

    .line 47
    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setSendDataTime(J)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 51
    .line 52
    const/4 p2, 0x6

    .line 53
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setReqBodyStart(J)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ioe"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 4

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object p2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/tmc/network/stat/RequestStat;->getReqHeaderStart()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sub-long/2addr v0, v2

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setReqHeaderTime(J)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setSendDataEnd(J)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/tmc/network/stat/RequestStat;->getReqHeaderTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setSendDataTime(J)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setReqHeaderStart(J)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 10
    .line 11
    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setRecvBodySize(J)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    iget-object v0, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/tmc/network/stat/RequestStat;->getSendDataEnd()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    sub-long/2addr p2, v0

    .line 27
    invoke-virtual {p1, p2, p3}, Lcom/tmc/network/stat/RequestStat;->setRecvDataTime(J)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ioe"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object v2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/tmc/network/stat/RequestStat;->getResHeaderStart()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sub-long/2addr v0, v2

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setResHeaderTime(J)V

    .line 28
    .line 29
    .line 30
    const-string p1, "X-Cache"

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-static {p2, p1, v0, v1, v0}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 39
    .line 40
    const-string v3, "miss"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/tmc/network/stat/RequestStat;->setXCache(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v2, "hit"

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-static {p1, v2, v3}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ne p1, v3, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Lcom/tmc/network/stat/RequestStat;->setXCache(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 63
    .line 64
    const-string v2, "x-request-cdn"

    .line 65
    .line 66
    invoke-static {p2, v2, v0, v1, v0}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1, v2}, Lcom/tmc/network/stat/RequestStat;->setRequestSrc(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 74
    .line 75
    const-string v2, "X-LLID"

    .line 76
    .line 77
    invoke-static {p2, v2, v0, v1, v0}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p1, v2}, Lcom/tmc/network/stat/RequestStat;->setRequestLLID(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 85
    .line 86
    const-string v2, "EagleId"

    .line 87
    .line 88
    invoke-static {p2, v2, v0, v1, v0}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Lcom/tmc/network/stat/RequestStat;->setEagleId(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 4

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setRet(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/tmc/network/stat/RequestStat;->getSendDataEnd()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    sub-long/2addr v0, v2

    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setFirstDataTime(J)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setResHeaderStart(J)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 41
    .line 42
    const/4 v0, 0x7

    .line 43
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 4

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getTlsStart()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setTlsTime(J)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 26
    .line 27
    iget-object p2, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/tmc/network/stat/ConnectStat;->getTlsTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/RequestStat;->setTlsTime(J)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/tmc/network/stat/ConnectStat;->setTlsStart(J)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lnf/b;->b:Lcom/tmc/network/stat/ConnectStat;

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/ConnectStat;->setStep(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lnf/b;->a:Lcom/tmc/network/stat/RequestStat;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/tmc/network/stat/RequestStat;->setStep(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
