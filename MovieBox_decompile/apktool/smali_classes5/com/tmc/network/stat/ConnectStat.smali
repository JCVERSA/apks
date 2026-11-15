.class public final Lcom/tmc/network/stat/ConnectStat;
.super Lpf/c;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008!\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\u0006\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u000bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u000bR\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u001b\u001a\u0004\u0008!\u0010\u001d\"\u0004\u0008\"\u0010\u001fR\"\u0010#\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u001b\u001a\u0004\u0008$\u0010\u001d\"\u0004\u0008%\u0010\u001fR\"\u0010&\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u001b\u001a\u0004\u0008\'\u0010\u001d\"\u0004\u0008(\u0010\u001fR\"\u0010)\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010\u001b\u001a\u0004\u0008*\u0010\u001d\"\u0004\u0008+\u0010\u001fR\"\u0010,\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010\u001b\u001a\u0004\u0008-\u0010\u001d\"\u0004\u0008.\u0010\u001fR\"\u0010/\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010\u001b\u001a\u0004\u00080\u0010\u001d\"\u0004\u00081\u0010\u001fR\"\u00103\u001a\u0002028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00083\u00105\"\u0004\u00086\u00107R\"\u00108\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010\u0014\u001a\u0004\u00089\u0010\u0016\"\u0004\u0008:\u0010\u0018R$\u0010;\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010\u0008\u001a\u0004\u0008<\u0010\u0006\"\u0004\u0008=\u0010\u000bR\"\u0010>\u001a\u0002028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u00104\u001a\u0004\u0008>\u00105\"\u0004\u0008?\u00107R$\u0010@\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010\u0008\u001a\u0004\u0008A\u0010\u0006\"\u0004\u0008B\u0010\u000bR$\u0010C\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010\u0008\u001a\u0004\u0008D\u0010\u0006\"\u0004\u0008E\u0010\u000bR\"\u0010F\u001a\u0002028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u00104\u001a\u0004\u0008F\u00105\"\u0004\u0008G\u00107R\"\u0010H\u001a\u0002028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u00104\u001a\u0004\u0008H\u00105\"\u0004\u0008I\u00107R\"\u0010J\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010\u0014\u001a\u0004\u0008K\u0010\u0016\"\u0004\u0008L\u0010\u0018R\"\u0010M\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008M\u0010\u0014\u001a\u0004\u0008N\u0010\u0016\"\u0004\u0008O\u0010\u0018R$\u0010P\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010\u0008\u001a\u0004\u0008Q\u0010\u0006\"\u0004\u0008R\u0010\u000b\u00a8\u0006S"
    }
    d2 = {
        "Lcom/tmc/network/stat/ConnectStat;",
        "Lpf/c;",
        "<init>",
        "()V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "ip",
        "Ljava/lang/String;",
        "getIp",
        "setIp",
        "(Ljava/lang/String;)V",
        "host",
        "getHost",
        "setHost",
        "protocol",
        "getProtocol",
        "setProtocol",
        "",
        "ret",
        "I",
        "getRet",
        "()I",
        "setRet",
        "(I)V",
        "",
        "connectStart",
        "J",
        "getConnectStart",
        "()J",
        "setConnectStart",
        "(J)V",
        "connTime",
        "getConnTime",
        "setConnTime",
        "dnsStart",
        "getDnsStart",
        "setDnsStart",
        "dnsTime",
        "getDnsTime",
        "setDnsTime",
        "tcpTime",
        "getTcpTime",
        "setTcpTime",
        "tlsStart",
        "getTlsStart",
        "setTlsStart",
        "tlsTime",
        "getTlsTime",
        "setTlsTime",
        "",
        "isPinning",
        "Z",
        "()Z",
        "setPinning",
        "(Z)V",
        "errCode",
        "getErrCode",
        "setErrCode",
        "errMsg",
        "getErrMsg",
        "setErrMsg",
        "isNetworkConnected",
        "setNetworkConnected",
        "appName",
        "getAppName",
        "setAppName",
        "networkType",
        "getNetworkType",
        "setNetworkType",
        "isPre",
        "setPre",
        "isNetworkImprove",
        "setNetworkImprove",
        "step",
        "getStep",
        "setStep",
        "netStatus",
        "getNetStatus",
        "setNetStatus",
        "tlsVersion",
        "getTlsVersion",
        "setTlsVersion",
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

.annotation runtime Lpf/b;
    id = "700"
    name = "connect"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private connTime:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private connectStart:J

.field private dnsStart:J

.field private dnsTime:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private errCode:I
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private errMsg:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private ip:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private isNetworkConnected:Z
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private isNetworkImprove:Z
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private isPinning:Z
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private isPre:Z
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private netStatus:I
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private networkType:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private protocol:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private ret:I
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private step:I
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private tcpTime:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private tlsStart:J

.field private tlsTime:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private tlsVersion:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lpf/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->ip:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->host:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->protocol:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->errMsg:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->appName:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->networkType:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/tmc/network/stat/ConnectStat;->step:I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->tlsVersion:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConnTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->connTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getConnectStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->connectStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDnsStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->dnsStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDnsTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->dnsTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getErrCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tmc/network/stat/ConnectStat;->errCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getErrMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->errMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->ip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNetStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tmc/network/stat/ConnectStat;->netStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->networkType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->protocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRet()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tmc/network/stat/ConnectStat;->ret:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStep()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tmc/network/stat/ConnectStat;->step:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTcpTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->tcpTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTlsStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->tlsStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTlsTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->tlsTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTlsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->tlsVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isNetworkConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkConnected:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isNetworkImprove()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkImprove:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPinning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tmc/network/stat/ConnectStat;->isPinning:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPre()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tmc/network/stat/ConnectStat;->isPre:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setConnTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->connTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setConnectStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->connectStart:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDnsStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->dnsStart:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDnsTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->dnsTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setErrCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tmc/network/stat/ConnectStat;->errCode:I

    .line 2
    .line 3
    return-void
.end method

.method public final setErrMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->errMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->ip:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNetStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tmc/network/stat/ConnectStat;->netStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNetworkConnected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNetworkImprove(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkImprove:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->networkType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPinning(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tmc/network/stat/ConnectStat;->isPinning:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPre(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tmc/network/stat/ConnectStat;->isPre:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->protocol:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRet(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tmc/network/stat/ConnectStat;->ret:I

    .line 2
    .line 3
    return-void
.end method

.method public final setStep(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tmc/network/stat/ConnectStat;->step:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTcpTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->tcpTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTlsStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsStart:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTlsTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTlsVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ConnectStat(ip="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->ip:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", host="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->host:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", protocol="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->protocol:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", ret="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/tmc/network/stat/ConnectStat;->ret:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", connTime="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->connTime:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", dnsStart="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->dnsStart:J

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", dnsTime="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->dnsTime:J

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", tcpTime="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->tcpTime:J

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", tlsStart="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsStart:J

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", tlsTime="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsTime:J

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", isPinning="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean v1, p0, Lcom/tmc/network/stat/ConnectStat;->isPinning:Z

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", errCode="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/tmc/network/stat/ConnectStat;->errCode:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", errMsg="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->errMsg:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", isNetworkConnected="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-boolean v1, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkConnected:Z

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", appName="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->appName:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", networkType="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->networkType:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", isPre="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-boolean v1, p0, Lcom/tmc/network/stat/ConnectStat;->isPre:Z

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", isNetworkImprove="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-boolean v1, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkImprove:Z

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", step="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget v1, p0, Lcom/tmc/network/stat/ConnectStat;->step:I

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", netStatus="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget v1, p0, Lcom/tmc/network/stat/ConnectStat;->netStatus:I

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", tlsVersion="

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsVersion:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const/16 v1, 0x29

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    return-object v0
.end method
