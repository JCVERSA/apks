.class public final Lcom/transsion/lib_web/domain/DomPerformance;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u001e\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u000f\u0010\u0007\"\u0004\u0008\u0010\u0010\tR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0012\u0010\u0007\"\u0004\u0008\u0013\u0010\tR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0015\u0010\u0007\"\u0004\u0008\u0016\u0010\tR\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0018\u0010\u0007\"\u0004\u0008\u0019\u0010\tR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u001b\u0010\u0007\"\u0004\u0008\u001c\u0010\tR\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u001e\u0010\u0007\"\u0004\u0008\u001f\u0010\tR\u001e\u0010 \u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008!\u0010\u0007\"\u0004\u0008\"\u0010\tR\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001e\u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010/\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001c\u00100\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010&\"\u0004\u00082\u0010(\u00a8\u00063"
    }
    d2 = {
        "Lcom/transsion/lib_web/domain/DomPerformance;",
        "",
        "<init>",
        "()V",
        "dnsLookup",
        "",
        "getDnsLookup",
        "()Ljava/lang/Long;",
        "setDnsLookup",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "tcpConnect",
        "getTcpConnect",
        "setTcpConnect",
        "requestTime",
        "getRequestTime",
        "setRequestTime",
        "responseTime",
        "getResponseTime",
        "setResponseTime",
        "domLoading",
        "getDomLoading",
        "setDomLoading",
        "domInteractive",
        "getDomInteractive",
        "setDomInteractive",
        "domComplete",
        "getDomComplete",
        "setDomComplete",
        "loadEventTime",
        "getLoadEventTime",
        "setLoadEventTime",
        "totalLoadTime",
        "getTotalLoadTime",
        "setTotalLoadTime",
        "readyState",
        "",
        "getReadyState",
        "()Ljava/lang/String;",
        "setReadyState",
        "(Ljava/lang/String;)V",
        "success",
        "",
        "getSuccess",
        "()Ljava/lang/Boolean;",
        "setSuccess",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "errorMsg",
        "getErrorMsg",
        "setErrorMsg",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private dnsLookup:Ljava/lang/Long;

.field private domComplete:Ljava/lang/Long;

.field private domInteractive:Ljava/lang/Long;

.field private domLoading:Ljava/lang/Long;

.field private errorMsg:Ljava/lang/String;

.field private loadEventTime:Ljava/lang/Long;

.field private readyState:Ljava/lang/String;

.field private requestTime:Ljava/lang/Long;

.field private responseTime:Ljava/lang/Long;

.field private success:Ljava/lang/Boolean;

.field private tcpConnect:Ljava/lang/Long;

.field private totalLoadTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->dnsLookup:Ljava/lang/Long;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->tcpConnect:Ljava/lang/Long;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->requestTime:Ljava/lang/Long;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->responseTime:Ljava/lang/Long;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->domLoading:Ljava/lang/Long;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->domInteractive:Ljava/lang/Long;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->domComplete:Ljava/lang/Long;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->loadEventTime:Ljava/lang/Long;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->totalLoadTime:Ljava/lang/Long;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final getDnsLookup()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->dnsLookup:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDomComplete()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->domComplete:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDomInteractive()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->domInteractive:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDomLoading()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->domLoading:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->errorMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLoadEventTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->loadEventTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReadyState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->readyState:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->requestTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResponseTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->responseTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSuccess()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->success:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTcpConnect()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->tcpConnect:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalLoadTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/lib_web/domain/DomPerformance;->totalLoadTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setDnsLookup(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->dnsLookup:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDomComplete(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->domComplete:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDomInteractive(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->domInteractive:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDomLoading(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->domLoading:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->errorMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadEventTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->loadEventTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setReadyState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->readyState:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRequestTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->requestTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setResponseTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->responseTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSuccess(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->success:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setTcpConnect(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->tcpConnect:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalLoadTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/domain/DomPerformance;->totalLoadTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method
