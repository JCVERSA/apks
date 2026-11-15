.class final Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;
.super Lcom/hisavana/common/interfacz/TAdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mediationads/beans/SdkAdMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SdkAdMediaItemListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\u0019\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\nJ\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;",
        "Lcom/hisavana/common/interfacz/TAdListener;",
        "<init>",
        "(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)V",
        "Lzfb;",
        "onLoad",
        "()V",
        "Lcom/hisavana/common/bean/TAdErrorCode;",
        "errorCode",
        "onError",
        "(Lcom/hisavana/common/bean/TAdErrorCode;)V",
        "",
        "source",
        "onShow",
        "(I)V",
        "Lcom/hisavana/common/bean/TAdNativeInfo;",
        "adNativeInfo",
        "onNativeFeedShow",
        "(ILcom/hisavana/common/bean/TAdNativeInfo;)V",
        "onNativeFeedClicked",
        "onClosed",
        "tAdNativeInfo",
        "(Lcom/hisavana/common/bean/TAdNativeInfo;)V",
        "onShowError",
        "i",
        "onClicked",
        "mediationAds_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;


# direct methods
.method public constructor <init>(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-direct {p0}, Lcom/hisavana/common/interfacz/TAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClicked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediation_ad_SdkAdMediaItem"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->markAsConsumed()V

    return-void
.end method

.method public onClosed(I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediation_ad_SdkAdMediaItem"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {p1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getHasReportedClose$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$setHasReportedClose$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;Z)V

    .line 4
    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {p1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getAdShowTimeMs$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {p1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getAdShowTimeMs$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    invoke-static {v1, v2, v3, v4}, Lwn8;->e(JJ)J

    move-result-wide v3

    .line 6
    :cond_0
    sget-object p1, Lrz5;->a:Lrz5$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v3, v4}, Lrz5$a;->b(IIJ)V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->markAsClosed()V

    return-void
.end method

.method public onClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 7

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediation_ad_SdkAdMediaItem"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {p1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getHasReportedClose$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$setHasReportedClose$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;Z)V

    .line 11
    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {p1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getAdShowTimeMs$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {p1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getAdShowTimeMs$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    invoke-static {v1, v2, v3, v4}, Lwn8;->e(JJ)J

    move-result-wide v3

    .line 13
    :cond_0
    sget-object p1, Lrz5;->a:Lrz5$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v3, v4}, Lrz5$a;->b(IIJ)V

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->markAsClosed()V

    return-void
.end method

.method public onError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediation_ad_SdkAdMediaItem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {v0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getHasReportedResponse$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$setHasReportedResponse$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;Z)V

    sget-object v2, Lrz5;->a:Lrz5$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getAdRequestTimeMs$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)J

    move-result-wide v3

    sub-long v5, v0, v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lrz5$a;->d(IIJLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onLoad()V
    .locals 9

    const-string v0, "Ad load completed"

    const-string v1, "mediation_ad_SdkAdMediaItem"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    iget-object v2, v0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->nativeAd:Lcom/hisavana/mediation/ad/TNativeAd;

    if-nez v2, :cond_0

    const-string p0, "onLoad: nativeAd is null, cannot bind ad"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->getAdNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "onLoad: adNativeInfo already exists, binding ad directly"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {v0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getHasReportedResponse$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {v0, v2}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$setHasReportedResponse$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;Z)V

    sget-object v3, Lrz5;->a:Lrz5$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {v0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getAdRequestTimeMs$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v3 .. v8}, Lrz5$a;->d(IIJLjava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$bindAd(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    iget-object v0, v0, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->nativeAd:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TNativeAd;->getNativeAdInfo()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v3, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {v0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hisavana/common/bean/TAdNativeInfo;

    invoke-virtual {v3, v4}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->setAdNativeInfo(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    iget-object v3, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {v3}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->getAdNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v3

    if-nez v3, :cond_5

    const-string p0, "onLoad: first nativeInfo is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLoad nativeInfos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " :"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {v0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->getAdNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoad: adNativeInfo set successfully "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {v0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getHasReportedResponse$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {v0, v2}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$setHasReportedResponse$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;Z)V

    sget-object v3, Lrz5;->a:Lrz5$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {v0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$getAdRequestTimeMs$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v3 .. v8}, Lrz5$a;->d(IIJLjava/lang/String;)V

    :cond_6
    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$bindAd(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)V

    goto :goto_3

    :cond_7
    :goto_1
    const-string p0, "onLoad: nativeInfos is null or empty"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    const-string v0, "onLoad: Exception occurred while binding ad"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public onNativeFeedClicked(ILcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNativeFeedClicked: source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediation_ad_SdkAdMediaItem"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->markAsConsumed()V

    if-eqz p2, :cond_0

    sget-object p1, Lrz5;->a:Lrz5$a;

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {v0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdCallToAction()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getDisplayMode()I

    move-result p0

    invoke-virtual {p1, v0, v1, p2, p0}, Lrz5$a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {v0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getDisplayMode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeFeedShow: source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", displayMode="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediation_ad_SdkAdMediaItem"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object p1, Lcom/transsion/mediationads/manager/b;->a:Lcom/transsion/mediationads/manager/b$a;

    invoke-virtual {p1}, Lcom/transsion/mediationads/manager/b$a;->a()Lcom/transsion/mediationads/manager/b;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {v1}, Lcom/transsion/mediationads/beans/AdMediaItem;->getDisplayMode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/mediationads/manager/b;->e(I)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {v1}, Lcom/transsion/mediationads/beans/AdMediaItem;->getDisplayMode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNativeFeedShow Ad shown in tabType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", daily count: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->access$setAdShowTimeMs$p(Lcom/transsion/mediationads/beans/SdkAdMediaItem;J)V

    sget-object v3, Lrz5;->a:Lrz5$a;

    iget-object p1, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/AdMediaItem;->getAdvertisingId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdCallToAction()Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getDisplayMode()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lrz5$a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNativeFeedShow Failed to increment daily ad show count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onShow(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShow "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mediation_ad_SdkAdMediaItem"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediation_ad_SdkAdMediaItem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lrz5;->a:Lrz5$a;

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {v0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getAdvertisingId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {v0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->getAdNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {v0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->getAdNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    iget-object v0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {v0}, Lcom/transsion/mediationads/beans/AdMediaItem;->getDisplayMode()I

    move-result v6

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move-object v7, p1

    goto :goto_4

    :cond_3
    :goto_3
    const-string p1, "-10000"

    goto :goto_2

    :goto_4
    invoke-virtual/range {v2 .. v7}, Lrz5$a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;->this$0:Lcom/transsion/mediationads/beans/SdkAdMediaItem;

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/SdkAdMediaItem;->getAdNativeView()Lcom/hisavana/mediation/ad/TAdNativeView;

    move-result-object p0

    if-eqz p0, :cond_4

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
