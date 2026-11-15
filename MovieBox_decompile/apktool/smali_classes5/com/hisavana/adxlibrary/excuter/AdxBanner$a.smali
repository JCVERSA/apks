.class Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;
.super Lcom/cloud/hisavana/sdk/api/listener/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxBanner;->getBanner()Lcom/cloud/hisavana/sdk/api/adx/TBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

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
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "banner is click"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "AdxBanner"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onAdClosed(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "banner onAdClosed"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "AdxBanner"

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->b(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "banner is Loaded"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "AdxBanner"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getBidPrice()D

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    cmpl-double v2, v0, v2

    .line 54
    .line 55
    if-lez v2, :cond_0

    .line 56
    .line 57
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 58
    .line 59
    invoke-virtual {v2, v0, v1}, Lcom/hisavana/common/base/BaseAd;->setEcpmPrice(D)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseBanner;->adLoaded()V

    .line 65
    .line 66
    .line 67
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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "banner onAdShow"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "AdxBanner"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onAdShowError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "banner onAdShowError"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "AdxBanner"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, v1, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 50
    .line 51
    :goto_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->c(Lcom/hisavana/adxlibrary/excuter/AdxBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "banner is Load error:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " msg:"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "AdxBanner"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    .line 53
    .line 54
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a(Lcom/hisavana/adxlibrary/excuter/AdxBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
