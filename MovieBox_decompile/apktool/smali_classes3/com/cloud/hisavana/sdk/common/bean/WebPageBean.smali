.class public Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private errorCode:I

.field private errorType:Ljava/lang/String;

.field private initEndTime:J

.field private jumpTime:J

.field private loadStartTime:J

.field private pageClickTime:J

.field private redirectType:I

.field private spendEndTime:J

.field private targetUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->redirectType:I

    .line 6
    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "-"

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->webId:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->errorCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->errorType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInitTime()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->initEndTime:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->pageClickTime:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public getLoadTime()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->loadStartTime:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->pageClickTime:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public getRedirectType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->redirectType:I

    .line 2
    .line 3
    return v0
.end method

.method public getSpendTime()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->spendEndTime:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->loadStartTime:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->targetUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->targetUrl:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->url:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public getWaitTime()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->jumpTime:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->pageClickTime:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public getWebId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->webId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->errorCode:I

    .line 2
    .line 3
    return-void
.end method

.method public setErrorType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->errorType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInitEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->initEndTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setJumpTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->jumpTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setLoadStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->loadStartTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setPageClickTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->pageClickTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setRedirectType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->redirectType:I

    .line 2
    .line 3
    return-void
.end method

.method public setSpendEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->spendEndTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->targetUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
