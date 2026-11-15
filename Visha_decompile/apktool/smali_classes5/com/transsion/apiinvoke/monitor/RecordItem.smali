.class public Lcom/transsion/apiinvoke/monitor/RecordItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;,
        Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;
    }
.end annotation


# static fields
.field public static RECORD_TYPE_PUBLISH:I = 0x1

.field public static RECORD_TYPE_REQUEST:I = 0x0

.field private static final serialVersionUID:J = -0x6cb827dc0d260ba5L


# instance fields
.field public async:Z

.field public coastTime:J

.field public errorMsg:Ljava/lang/String;

.field public mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

.field public publishItem:Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;

.field public recordType:I

.field public result:Ljava/lang/String;

.field public resultCode:I

.field public startTime:J

.field public success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->success:Z

    return-void
.end method

.method public static synthetic access$200([Lcom/transsion/apiinvoke/invoke/TypeValuePair;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/apiinvoke/monitor/RecordItem;->isAllPrimitiveParams([Lcom/transsion/apiinvoke/invoke/TypeValuePair;)Z

    move-result p0

    return p0
.end method

.method public static createPublish(Lcom/transsion/apiinvoke/invoke/ApiRequest;Ljava/lang/String;Ljava/io/Serializable;J)Lcom/transsion/apiinvoke/monitor/RecordItem;
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/monitor/RecordItem;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/monitor/RecordItem;-><init>()V

    new-instance v1, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;-><init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/monitor/RecordItem$1;)V

    iput-object v1, v0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    new-instance p0, Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;

    invoke-direct {p0, p1, p2, v2}, Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;-><init>(Ljava/lang/String;Ljava/io/Serializable;Lcom/transsion/apiinvoke/monitor/RecordItem$1;)V

    iput-object p0, v0, Lcom/transsion/apiinvoke/monitor/RecordItem;->publishItem:Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/transsion/apiinvoke/monitor/RecordItem;->async:Z

    sget p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->RECORD_TYPE_PUBLISH:I

    iput p0, v0, Lcom/transsion/apiinvoke/monitor/RecordItem;->recordType:I

    iput-wide p3, v0, Lcom/transsion/apiinvoke/monitor/RecordItem;->startTime:J

    return-object v0
.end method

.method public static createRequest(Lcom/transsion/apiinvoke/invoke/ApiRequest;JZ)Lcom/transsion/apiinvoke/monitor/RecordItem;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/apiinvoke/monitor/RecordItem;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/monitor/RecordItem;-><init>()V

    .line 2
    new-instance v1, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;-><init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/monitor/RecordItem$1;)V

    iput-object v1, v0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    .line 3
    iput-boolean p3, v0, Lcom/transsion/apiinvoke/monitor/RecordItem;->async:Z

    .line 4
    sget p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->RECORD_TYPE_REQUEST:I

    iput p0, v0, Lcom/transsion/apiinvoke/monitor/RecordItem;->recordType:I

    .line 5
    iput-wide p1, v0, Lcom/transsion/apiinvoke/monitor/RecordItem;->startTime:J

    return-object v0
.end method

.method private static isAllPrimitiveParams([Lcom/transsion/apiinvoke/invoke/TypeValuePair;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValueType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/apiinvoke/monitor/RecordItem;->isCommonType(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isCommonType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/monitor/RecordItem;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/LinkedHashMap;

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/monitor/RecordItem;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Hashtable;

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/monitor/RecordItem;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/monitor/RecordItem;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/monitor/RecordItem;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public clearRetryOnReConnect()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->retryOnReConnect:Z

    return-void
.end method

.method public createRequest()Lcom/transsion/apiinvoke/invoke/ApiRequest;
    .locals 2

    .line 6
    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;-><init>()V

    iget-object v1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    iget-object v1, v1, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->channel:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    iget-object v1, v1, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->apiName:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    iget-object v1, v1, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->apiMethod:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    .line 10
    invoke-virtual {v0, p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->setParameters([Lcom/transsion/apiinvoke/invoke/TypeValuePair;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->retryOnReConnect(Z)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->build()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p0

    return-object p0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->channel:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getRequestParameter()[Lcom/transsion/apiinvoke/invoke/TypeValuePair;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    :goto_0
    return-object p0
.end method

.method public getRouterUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    iget-object v1, v1, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->apiMethod:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setResult(Lcom/transsion/apiinvoke/invoke/ApiResponse;J)V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->startTime:J

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->coastTime:J

    if-eqz p1, :cond_1

    iget p2, p1, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultCode:I

    iput p2, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->resultCode:I

    iget-object p2, p1, Lcom/transsion/apiinvoke/invoke/ApiResponse;->errorMsg:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->content()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iput-object p2, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->result:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->isSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->success:Z

    :cond_1
    return-void
.end method

.method public shouldRetryOnReConnect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->success:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->retryOnReConnect:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportRetry()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;->retryOnReConnect:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordItem{recordType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->recordType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mOriginData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->mOriginData:Lcom/transsion/apiinvoke/monitor/RecordItem$ApiRequestItem;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->resultCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", coastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem;->coastTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
