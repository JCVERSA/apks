.class Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;
.super Lcom/cloud/hisavana/sdk/api/listener/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

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
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

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
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "adx onAdClicked"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "AdxSplash"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "adx onAdClosed "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

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
    const-string v2, "AdxSplash"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

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
    const-string v2, "adx splashview onAdLoaded"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

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
    const-string v2, "AdxSplash"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)Lb7/e;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)Lb7/e;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lb7/a;->e()D

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
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    .line 58
    .line 59
    invoke-virtual {v2, v0, v1}, Lcom/hisavana/common/base/BaseAd;->setEcpmPrice(D)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

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
    const-string v2, "adx onAdShow"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

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
    const-string v2, "AdxSplash"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

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

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    .line 4
    .line 5
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-direct {v1, v2, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a(Lcom/hisavana/adxlibrary/excuter/AdxSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "adx onError:"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v1, "AdxSplash"

    .line 56
    .line 57
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method
