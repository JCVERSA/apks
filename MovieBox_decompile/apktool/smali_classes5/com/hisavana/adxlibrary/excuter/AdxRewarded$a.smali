.class public final Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;
.super Lcom/cloud/hisavana/sdk/api/listener/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdClicked()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "onAdClicked"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "onAdClosed"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->access$adClosed(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "onAdLoaded"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->access$getRewarded$p(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)Lb7/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-wide/16 v1, 0x0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lb7/a;->e()D

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-wide v3, v1

    .line 32
    :goto_0
    cmpl-double v0, v3, v1

    .line 33
    .line 34
    if-lez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 37
    .line 38
    invoke-virtual {v0, v3, v4}, Lcom/hisavana/common/base/BaseAd;->setEcpmPrice(D)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "onAdShow"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "onError : "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 34
    .line 35
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->access$adFailedToLoad(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public onRewarded()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "onRewarded"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;->access$onReward(Lcom/hisavana/adxlibrary/excuter/AdxRewarded;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
