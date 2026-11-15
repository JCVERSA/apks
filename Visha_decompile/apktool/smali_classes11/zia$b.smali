.class public final Lzia$b;
.super Lcom/hisavana/common/interfacz/TAdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lcom/hisavana/mediation/ad/TNativeAd;

.field public final d:J

.field public e:Z

.field public final synthetic f:Lzia;


# direct methods
.method public constructor <init>(Lzia;ILjava/lang/String;Lcom/hisavana/mediation/ad/TNativeAd;J)V
    .locals 1

    const-string v0, "adId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAd"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lzia$b;->f:Lzia;

    invoke-direct {p0}, Lcom/hisavana/common/interfacz/TAdListener;-><init>()V

    iput p2, p0, Lzia$b;->a:I

    iput-object p3, p0, Lzia$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lzia$b;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    iput-wide p5, p0, Lzia$b;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lzia$b;->f:Lzia;

    invoke-static {v0}, Lzia;->b(Lzia;)I

    move-result v0

    iget v1, p0, Lzia$b;->a:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lzia$b;->f:Lzia;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lzia;->d(Lzia;I)V

    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Lzia$b;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzia$b;->e:Z

    sget-object v1, Lrz5;->a:Lrz5$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lzia$b;->d:J

    sub-long v4, v2, v4

    const/4 v2, 0x3

    move v3, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lrz5$a;->d(IIJLjava/lang/String;)V

    return-void
.end method

.method public onClicked(I)V
    .locals 2

    iget-object p0, p0, Lzia$b;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClicked source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",nativeAd="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokAdPrefetcher"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClosed(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lzia$b;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",nativeAd="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokAdPrefetcher"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClosed tAdNativeInfo="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokAdPrefetcher"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 3

    invoke-virtual {p0}, Lzia$b;->a()V

    iget v0, p0, Lzia$b;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " milestone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokAdPrefetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lzia$b;->b(ILjava/lang/String;)V

    iget-object p1, p0, Lzia$b;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    invoke-virtual {p1}, Lcom/hisavana/mediation/ad/TNativeAd;->destroy()V

    iget-object p1, p0, Lzia$b;->f:Lzia;

    invoke-static {p1}, Lzia;->a(Lzia;)Lzia$c;

    move-result-object p1

    iget p0, p0, Lzia$b;->a:I

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->LOAD_FAILED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-interface {p1, p0, v0}, Lzia$c;->b(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-void
.end method

.method public onLoad()V
    .locals 7

    invoke-virtual {p0}, Lzia$b;->a()V

    iget-object v0, p0, Lzia$b;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TNativeAd;->getNativeAdInfo()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    const-string v3, "TiktokAdPrefetcher"

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {v0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/bean/TAdNativeInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lzia$b;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lzia$b;->f:Lzia;

    invoke-static {v1}, Lzia;->c(Lzia;)Lrka;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lrka;->g()V

    :cond_2
    iget-object v1, p0, Lzia$b;->f:Lzia;

    new-instance v2, Lrka;

    iget v4, p0, Lzia$b;->a:I

    iget-object v5, p0, Lzia$b;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    iget-object v6, p0, Lzia$b;->b:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v0, v6}, Lrka;-><init>(ILcom/hisavana/mediation/ad/TNativeAd;Lcom/hisavana/common/bean/TAdNativeInfo;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lzia;->e(Lzia;Lrka;)V

    iget v0, p0, Lzia$b;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoad ok milestone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzia$b;->f:Lzia;

    invoke-static {v0}, Lzia;->a(Lzia;)Lzia$c;

    move-result-object v0

    iget p0, p0, Lzia$b;->a:I

    invoke-interface {v0, p0}, Lzia$c;->a(I)V

    return-void

    :cond_3
    :goto_0
    iget v4, p0, Lzia$b;->a:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLoad invalid/expired milestone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v3

    if-ne v3, v1, :cond_4

    const-string v3, "expired"

    goto :goto_1

    :cond_4
    const-string v3, "invalid_native_info"

    :goto_1
    invoke-virtual {p0, v2, v3}, Lzia$b;->b(ILjava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    :cond_5
    iget-object v2, p0, Lzia$b;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    invoke-virtual {v2}, Lcom/hisavana/mediation/ad/TNativeAd;->destroy()V

    iget-object v2, p0, Lzia$b;->f:Lzia;

    invoke-static {v2}, Lzia;->a(Lzia;)Lzia$c;

    move-result-object v2

    iget p0, p0, Lzia$b;->a:I

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v0

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->PREFETCH_INVALID:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->LOAD_FAILED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    :goto_2
    invoke-interface {v2, p0, v0}, Lzia$c;->b(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-void

    :cond_7
    :goto_3
    iget v0, p0, Lzia$b;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoad empty milestone="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "empty_native_infos"

    invoke-virtual {p0, v2, v0}, Lzia$b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lzia$b;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TNativeAd;->destroy()V

    iget-object v0, p0, Lzia$b;->f:Lzia;

    invoke-static {v0}, Lzia;->a(Lzia;)Lzia$c;

    move-result-object v0

    iget p0, p0, Lzia$b;->a:I

    sget-object v1, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->LOAD_FAILED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-interface {v0, p0, v1}, Lzia$c;->b(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V

    return-void
.end method

.method public onNativeFeedClicked(ILcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNativeFeedClicked source="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",adNativeInfo="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokAdPrefetcher"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNativeFeedShow source="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",adNativeInfo="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokAdPrefetcher"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShow(I)V
    .locals 2

    iget-object p0, p0, Lzia$b;->c:Lcom/hisavana/mediation/ad/TNativeAd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShow source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",nativeAd="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokAdPrefetcher"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShowError errorCode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokAdPrefetcher"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
