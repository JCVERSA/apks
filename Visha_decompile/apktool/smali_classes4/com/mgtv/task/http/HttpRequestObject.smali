.class public Lcom/mgtv/task/http/HttpRequestObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field public transient channel:Lcom/mgtv/task/http/a;

.field public enableSmartDns:Z

.field public params:Lcom/mgtv/task/http/HttpParams;

.field public traceData:Lcom/mgtv/task/http/HttpTraceObject;

.field public url:Ljava/lang/String;

.field public wholeResponse:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mgtv/task/http/HttpTraceObject;

    invoke-direct {v0}, Lcom/mgtv/task/http/HttpTraceObject;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/http/HttpRequestObject;->traceData:Lcom/mgtv/task/http/HttpTraceObject;

    return-void
.end method
