.class public final Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010 \u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u000f\u001a\u0004\u0008!\u0010\u000e\"\u0004\u0008\"\u0010\u0005R$\u0010#\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u000f\u001a\u0004\u0008$\u0010\u000e\"\u0004\u0008%\u0010\u0005R$\u0010&\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u000f\u001a\u0004\u0008\'\u0010\u000e\"\u0004\u0008(\u0010\u0005R$\u0010)\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010\u000f\u001a\u0004\u0008*\u0010\u000e\"\u0004\u0008+\u0010\u0005R$\u0010,\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010\u000f\u001a\u0004\u0008-\u0010\u000e\"\u0004\u0008.\u0010\u0005R$\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010\u000f\u001a\u0004\u00080\u0010\u000e\"\u0004\u00081\u0010\u0005R$\u00102\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010\u000f\u001a\u0004\u00083\u0010\u000e\"\u0004\u00084\u0010\u0005R$\u00105\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u0010\u000f\u001a\u0004\u00086\u0010\u000e\"\u0004\u00087\u0010\u0005R$\u00108\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010\u000f\u001a\u0004\u00089\u0010\u000e\"\u0004\u0008:\u0010\u0005R\"\u0010<\u001a\u00020;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010A\u00a8\u0006B"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;",
        "",
        "",
        "trackingUrl",
        "<init>",
        "(Ljava/lang/String;)V",
        "Lzfb;",
        "createMd5",
        "()V",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "ad",
        "setData",
        "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V",
        "toString",
        "()Ljava/lang/String;",
        "Ljava/lang/String;",
        "getTrackingUrl",
        "TAG",
        "",
        "createTime",
        "J",
        "getCreateTime",
        "()J",
        "setCreateTime",
        "(J)V",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "retryTimes",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getRetryTimes",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "setRetryTimes",
        "(Ljava/util/concurrent/atomic/AtomicInteger;)V",
        "uuid",
        "getUuid",
        "setUuid",
        "md5",
        "getMd5",
        "setMd5",
        "showId",
        "getShowId",
        "setShowId",
        "triggerId",
        "getTriggerId",
        "setTriggerId",
        "requestId",
        "getRequestId",
        "setRequestId",
        "advertiserId",
        "getAdvertiserId",
        "setAdvertiserId",
        "codeSeatId",
        "getCodeSeatId",
        "setCodeSeatId",
        "adCreativeId",
        "getAdCreativeId",
        "setAdCreativeId",
        "packageName",
        "getPackageName",
        "setPackageName",
        "",
        "showTrackingUrlsLogEnable",
        "Z",
        "getShowTrackingUrlsLogEnable",
        "()Z",
        "setShowTrackingUrlsLogEnable",
        "(Z)V",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final transient TAG:Ljava/lang/String;

.field private adCreativeId:Ljava/lang/String;

.field private advertiserId:Ljava/lang/String;

.field private codeSeatId:Ljava/lang/String;

.field private createTime:J

.field private md5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private retryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private showId:Ljava/lang/String;

.field private showTrackingUrlsLogEnable:Z

.field private final trackingUrl:Ljava/lang/String;

.field private triggerId:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->trackingUrl:Ljava/lang/String;

    const-string v0, "DiskTrackingBean"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->retryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->uuid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->createMd5()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->createTime:J

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->retryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void
.end method

.method private final createMd5()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->trackingUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lgw5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->md5:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getAdCreativeId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->adCreativeId:Ljava/lang/String;

    return-object p0
.end method

.method public final getAdvertiserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->advertiserId:Ljava/lang/String;

    return-object p0
.end method

.method public final getCodeSeatId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->codeSeatId:Ljava/lang/String;

    return-object p0
.end method

.method public final getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->createTime:J

    return-wide v0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getRetryTimes()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->retryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public final getShowId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->showId:Ljava/lang/String;

    return-object p0
.end method

.method public final getShowTrackingUrlsLogEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->showTrackingUrlsLogEnable:Z

    return p0
.end method

.method public final getTrackingUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->trackingUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getTriggerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->triggerId:Ljava/lang/String;

    return-object p0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public final setAdCreativeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->adCreativeId:Ljava/lang/String;

    return-void
.end method

.method public final setAdvertiserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->advertiserId:Ljava/lang/String;

    return-void
.end method

.method public final setCodeSeatId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->codeSeatId:Ljava/lang/String;

    return-void
.end method

.method public final setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->createTime:J

    return-void
.end method

.method public final setData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->uuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->showId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->triggerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->requestId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdvertiserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->advertiserId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    :cond_2
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->codeSeatId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->adCreativeId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getLogEnable()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string/jumbo v0, "showTrackingUrlsLogEnable"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->showTrackingUrlsLogEnable:Z

    return-void
.end method

.method public final setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->md5:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->requestId:Ljava/lang/String;

    return-void
.end method

.method public final setRetryTimes(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->retryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public final setShowId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->showId:Ljava/lang/String;

    return-void
.end method

.method public final setShowTrackingUrlsLogEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->showTrackingUrlsLogEnable:Z

    return-void
.end method

.method public final setTriggerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->triggerId:Ljava/lang/String;

    return-void
.end method

.method public final setUuid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->uuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",urls:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->trackingUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
