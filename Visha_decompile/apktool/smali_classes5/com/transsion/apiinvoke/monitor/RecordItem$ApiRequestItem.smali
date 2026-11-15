.class public Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/monitor/RecordItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiRequestItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1558c756b5e320e1L


# instance fields
.field public apiMethod:Ljava/lang/String;

.field public apiName:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

.field public retryOnReConnect:Z


# direct methods
.method private constructor <init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getChannelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->channel:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->apiName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->apiMethod:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->packageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->packageName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getRequestParameter()[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    .line 8
    invoke-static {v0}, Lcom/transsion/apiinvoke/monitor/RecordItem;->access$200([Lcom/transsion/apiinvoke/invoke/TypeValuePair;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->retryOnReConnect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->retryOnReConnect:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/monitor/RecordItem$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;-><init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApiRequestItem{channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apiName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apiMethod=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->apiMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", retryOnReConnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->retryOnReConnect:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
