.class public final Lcom/tmc/network/stat/RequestStat;
.super Lpf/c;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\t\n\u0002\u00089\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u00083\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\u0006\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u000bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u000bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0008\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u000bR\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR\"\u0010\u001f\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0017\u001a\u0004\u0008 \u0010\u0019\"\u0004\u0008!\u0010\u001bR\"\u0010\"\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0017\u001a\u0004\u0008#\u0010\u0019\"\u0004\u0008$\u0010\u001bR\"\u0010%\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u0017\u001a\u0004\u0008&\u0010\u0019\"\u0004\u0008\'\u0010\u001bR\"\u0010(\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u0017\u001a\u0004\u0008)\u0010\u0019\"\u0004\u0008*\u0010\u001bR$\u0010+\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u0008\u001a\u0004\u0008,\u0010\u0006\"\u0004\u0008-\u0010\u000bR\"\u0010.\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u0017\u001a\u0004\u0008/\u0010\u0019\"\u0004\u00080\u0010\u001bR\"\u00101\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u0017\u001a\u0004\u00082\u0010\u0019\"\u0004\u00083\u0010\u001bR\"\u00104\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010\u0017\u001a\u0004\u00085\u0010\u0019\"\u0004\u00086\u0010\u001bR\"\u00107\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010\u0017\u001a\u0004\u00088\u0010\u0019\"\u0004\u00089\u0010\u001bR\"\u0010:\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u0017\u001a\u0004\u0008;\u0010\u0019\"\u0004\u0008<\u0010\u001bR\"\u0010=\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010\u0017\u001a\u0004\u0008>\u0010\u0019\"\u0004\u0008?\u0010\u001bR\"\u0010@\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010\u0017\u001a\u0004\u0008A\u0010\u0019\"\u0004\u0008B\u0010\u001bR\"\u0010C\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010\u0017\u001a\u0004\u0008D\u0010\u0019\"\u0004\u0008E\u0010\u001bR\"\u0010F\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010\u0017\u001a\u0004\u0008G\u0010\u0019\"\u0004\u0008H\u0010\u001bR\"\u0010I\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010\u0017\u001a\u0004\u0008J\u0010\u0019\"\u0004\u0008K\u0010\u001bR\"\u0010L\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010\u0017\u001a\u0004\u0008M\u0010\u0019\"\u0004\u0008N\u0010\u001bR\"\u0010P\u001a\u00020O8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\"\u0010W\u001a\u00020V8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010X\u001a\u0004\u0008W\u0010Y\"\u0004\u0008Z\u0010[R\"\u0010\\\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010\u0017\u001a\u0004\u0008]\u0010\u0019\"\u0004\u0008^\u0010\u001bR\"\u0010_\u001a\u00020O8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010Q\u001a\u0004\u0008`\u0010S\"\u0004\u0008a\u0010UR\"\u0010b\u001a\u00020O8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010Q\u001a\u0004\u0008c\u0010S\"\u0004\u0008d\u0010UR$\u0010e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010\u0008\u001a\u0004\u0008f\u0010\u0006\"\u0004\u0008g\u0010\u000bR\"\u0010h\u001a\u00020V8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010X\u001a\u0004\u0008h\u0010Y\"\u0004\u0008i\u0010[R$\u0010j\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008j\u0010\u0008\u001a\u0004\u0008k\u0010\u0006\"\u0004\u0008l\u0010\u000bR$\u0010m\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008m\u0010\u0008\u001a\u0004\u0008n\u0010\u0006\"\u0004\u0008o\u0010\u000bR\"\u0010p\u001a\u00020V8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010X\u001a\u0004\u0008p\u0010Y\"\u0004\u0008q\u0010[R\"\u0010r\u001a\u00020V8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010X\u001a\u0004\u0008r\u0010Y\"\u0004\u0008s\u0010[R$\u0010t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010\u0008\u001a\u0004\u0008u\u0010\u0006\"\u0004\u0008v\u0010\u000bR\"\u0010w\u001a\u00020O8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008w\u0010Q\u001a\u0004\u0008x\u0010S\"\u0004\u0008y\u0010UR$\u0010z\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010\u0008\u001a\u0004\u0008{\u0010\u0006\"\u0004\u0008|\u0010\u000bR$\u0010}\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008}\u0010\u0008\u001a\u0004\u0008~\u0010\u0006\"\u0004\u0008\u007f\u0010\u000bR&\u0010\u0080\u0001\u001a\u00020O8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0080\u0001\u0010Q\u001a\u0005\u0008\u0081\u0001\u0010S\"\u0005\u0008\u0082\u0001\u0010UR(\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0083\u0001\u0010\u0008\u001a\u0005\u0008\u0084\u0001\u0010\u0006\"\u0005\u0008\u0085\u0001\u0010\u000bR(\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0086\u0001\u0010\u0008\u001a\u0005\u0008\u0087\u0001\u0010\u0006\"\u0005\u0008\u0088\u0001\u0010\u000b\u00a8\u0006\u0089\u0001"
    }
    d2 = {
        "Lcom/tmc/network/stat/RequestStat;",
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
        "url",
        "getUrl",
        "setUrl",
        "protocol",
        "getProtocol",
        "setProtocol",
        "",
        "callStart",
        "J",
        "getCallStart",
        "()J",
        "setCallStart",
        "(J)V",
        "onewayTime",
        "getOnewayTime",
        "setOnewayTime",
        "connWaitTime",
        "getConnWaitTime",
        "setConnWaitTime",
        "dnsTime",
        "getDnsTime",
        "setDnsTime",
        "tcpTime",
        "getTcpTime",
        "setTcpTime",
        "tlsTime",
        "getTlsTime",
        "setTlsTime",
        "tlsVersion",
        "getTlsVersion",
        "setTlsVersion",
        "reqHeaderStart",
        "getReqHeaderStart",
        "setReqHeaderStart",
        "reqHeaderTime",
        "getReqHeaderTime",
        "setReqHeaderTime",
        "reqBodyStart",
        "getReqBodyStart",
        "setReqBodyStart",
        "reqBodyTime",
        "getReqBodyTime",
        "setReqBodyTime",
        "resHeaderStart",
        "getResHeaderStart",
        "setResHeaderStart",
        "resHeaderTime",
        "getResHeaderTime",
        "setResHeaderTime",
        "resBodyStart",
        "getResBodyStart",
        "setResBodyStart",
        "sendDataEnd",
        "getSendDataEnd",
        "setSendDataEnd",
        "sendDataTime",
        "getSendDataTime",
        "setSendDataTime",
        "recvDataTime",
        "getRecvDataTime",
        "setRecvDataTime",
        "firstDataTime",
        "getFirstDataTime",
        "setFirstDataTime",
        "",
        "ret",
        "I",
        "getRet",
        "()I",
        "setRet",
        "(I)V",
        "",
        "isPinning",
        "Z",
        "()Z",
        "setPinning",
        "(Z)V",
        "recvBodySize",
        "getRecvBodySize",
        "setRecvBodySize",
        "connRet",
        "getConnRet",
        "setConnRet",
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
        "requestChannel",
        "getRequestChannel",
        "setRequestChannel",
        "step",
        "getStep",
        "setStep",
        "xCache",
        "getXCache",
        "setXCache",
        "eagleId",
        "getEagleId",
        "setEagleId",
        "netStatus",
        "getNetStatus",
        "setNetStatus",
        "requestSrc",
        "getRequestSrc",
        "setRequestSrc",
        "requestLLID",
        "getRequestLLID",
        "setRequestLLID",
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
    id = "701"
    name = "request"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private callStart:J

.field private connRet:I
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private connWaitTime:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private dnsTime:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private eagleId:Ljava/lang/String;
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

.field private firstDataTime:J
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

.field private onewayTime:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private protocol:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private recvBodySize:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private recvDataTime:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private reqBodyStart:J

.field private reqBodyTime:J

.field private reqHeaderStart:J

.field private reqHeaderTime:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private requestChannel:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private requestLLID:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private requestSrc:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private resBodyStart:J

.field private resHeaderStart:J

.field private resHeaderTime:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private ret:I
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private sendDataEnd:J

.field private sendDataTime:J
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

.field private tlsTime:J
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private tlsVersion:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lpf/a;
    .end annotation
.end field

.field private xCache:Ljava/lang/String;
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
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->ip:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->host:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->url:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->protocol:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->tlsVersion:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->errMsg:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->appName:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->networkType:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestChannel:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/tmc/network/stat/RequestStat;->step:I

    .line 26
    .line 27
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->xCache:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->eagleId:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestSrc:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestLLID:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->callStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getConnRet()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tmc/network/stat/RequestStat;->connRet:I

    .line 2
    .line 3
    return v0
.end method

.method public final getConnWaitTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->connWaitTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDnsTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->dnsTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEagleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->eagleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tmc/network/stat/RequestStat;->errCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getErrMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->errMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFirstDataTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->firstDataTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->ip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNetStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tmc/network/stat/RequestStat;->netStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->networkType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnewayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->onewayTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->protocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRecvBodySize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->recvBodySize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRecvDataTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->recvDataTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getReqBodyStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->reqBodyStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getReqBodyTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->reqBodyTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getReqHeaderStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->reqHeaderStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getReqHeaderTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->reqHeaderTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRequestChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestChannel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestLLID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestLLID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestSrc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestSrc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResBodyStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->resBodyStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getResHeaderStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->resHeaderStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getResHeaderTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->resHeaderTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRet()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tmc/network/stat/RequestStat;->ret:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSendDataEnd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->sendDataEnd:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSendDataTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->sendDataTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getStep()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tmc/network/stat/RequestStat;->step:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTcpTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->tcpTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTlsTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->tlsTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTlsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->tlsVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getXCache()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->xCache:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isNetworkConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkConnected:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isNetworkImprove()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkImprove:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPinning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tmc/network/stat/RequestStat;->isPinning:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPre()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tmc/network/stat/RequestStat;->isPre:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCallStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->callStart:J

    .line 2
    .line 3
    return-void
.end method

.method public final setConnRet(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tmc/network/stat/RequestStat;->connRet:I

    .line 2
    .line 3
    return-void
.end method

.method public final setConnWaitTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->connWaitTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDnsTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->dnsTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setEagleId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->eagleId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setErrCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tmc/network/stat/RequestStat;->errCode:I

    .line 2
    .line 3
    return-void
.end method

.method public final setErrMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->errMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstDataTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->firstDataTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->ip:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNetStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tmc/network/stat/RequestStat;->netStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNetworkConnected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNetworkImprove(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkImprove:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->networkType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnewayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->onewayTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setPinning(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tmc/network/stat/RequestStat;->isPinning:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPre(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tmc/network/stat/RequestStat;->isPre:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->protocol:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRecvBodySize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->recvBodySize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setRecvDataTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->recvDataTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setReqBodyStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->reqBodyStart:J

    .line 2
    .line 3
    return-void
.end method

.method public final setReqBodyTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->reqBodyTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setReqHeaderStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->reqHeaderStart:J

    .line 2
    .line 3
    return-void
.end method

.method public final setReqHeaderTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->reqHeaderTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setRequestChannel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->requestChannel:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRequestLLID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->requestLLID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRequestSrc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->requestSrc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setResBodyStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->resBodyStart:J

    .line 2
    .line 3
    return-void
.end method

.method public final setResHeaderStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->resHeaderStart:J

    .line 2
    .line 3
    return-void
.end method

.method public final setResHeaderTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->resHeaderTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setRet(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tmc/network/stat/RequestStat;->ret:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSendDataEnd(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->sendDataEnd:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSendDataTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->sendDataTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setStep(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tmc/network/stat/RequestStat;->step:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTcpTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->tcpTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTlsTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->tlsTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTlsVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->tlsVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setXCache(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->xCache:Ljava/lang/String;

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
    const-string v1, "RequestStat(ip="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->ip:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->host:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", url="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->url:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", protocol="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->protocol:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", onewayTime="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->onewayTime:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", connWaitTime="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->connWaitTime:J

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
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->dnsTime:J

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
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->tcpTime:J

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", tlsTime="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->tlsTime:J

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", tlsVersion="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->tlsVersion:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", reqHeaderTime="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->reqHeaderTime:J

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", reqBodyTime="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->reqBodyTime:J

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", resHeaderTime="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->resHeaderTime:J

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", sendDataTime="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->sendDataTime:J

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", recvDataTime="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->recvDataTime:J

    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", firstDataTime="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->firstDataTime:J

    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", ret="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget v1, p0, Lcom/tmc/network/stat/RequestStat;->ret:I

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", isPinning="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-boolean v1, p0, Lcom/tmc/network/stat/RequestStat;->isPinning:Z

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", recvBodySize="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->recvBodySize:J

    .line 192
    .line 193
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", connRet="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget v1, p0, Lcom/tmc/network/stat/RequestStat;->connRet:I

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", errCode="

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget v1, p0, Lcom/tmc/network/stat/RequestStat;->errCode:I

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", errMsg="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->errMsg:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", isNetworkConnected="

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-boolean v1, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkConnected:Z

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ", appName="

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->appName:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, ", networkType="

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->networkType:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v1, ", isPre="

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-boolean v1, p0, Lcom/tmc/network/stat/RequestStat;->isPre:Z

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, ", isNetworkImprove="

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-boolean v1, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkImprove:Z

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v1, ", requestChannel="

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->requestChannel:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v1, ", step="

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget v1, p0, Lcom/tmc/network/stat/RequestStat;->step:I

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, ", xCache="

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->xCache:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v1, ", eagleId="

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->eagleId:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v1, ", netStatus="

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget v1, p0, Lcom/tmc/network/stat/RequestStat;->netStatus:I

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v1, ", requestSrc="

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->requestSrc:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v1, ", requestLLID="

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->requestLLID:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const/16 v1, 0x29

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    return-object v0
.end method
