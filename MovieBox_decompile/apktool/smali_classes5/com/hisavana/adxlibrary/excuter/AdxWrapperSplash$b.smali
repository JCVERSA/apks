.class public final Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;
.super Lcom/cloud/hisavana/sdk/api/listener/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

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
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "AdxWrapperSplash"

    .line 9
    .line 10
    const-string v2, "AdxWrapperSplash --> onAdActivate"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->getEcpm()Ljava/lang/Double;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v2, v1

    .line 30
    :goto_0
    invoke-virtual {v0, v2}, Lcom/hisavana/common/bean/AdditionalInfo;->setEcpm(Ljava/lang/Double;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v2, v1

    .line 47
    :goto_1
    invoke-virtual {v0, v2}, Lcom/hisavana/common/bean/AdditionalInfo;->setPackageName(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->getImageUrl()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_2
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setImageUrl(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onAdActivate(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public onAdClicked()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClicked()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "AdxWrapperSplash"

    .line 9
    .line 10
    const-string v2, "AdxWrapperSplash --> onAdClicked"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "AdxWrapperSplash"

    .line 9
    .line 10
    const-string v2, "AdxWrapperSplash --> onAdClosed"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClosed(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdLoaded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getSplashMode$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getTSplashView$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getBidPrice()D

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getTSplash$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lb7/e;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lb7/a;->e()D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 52
    :goto_1
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Lcom/hisavana/common/bean/AdditionalInfo;->setEcpm(Ljava/lang/Double;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "AdxWrapperSplash --> onAdLoaded, ecpm: "

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v2, "AdxWrapperSplash"

    .line 83
    .line 84
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 96
    .line 97
    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShow()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "AdxWrapperSplash"

    .line 9
    .line 10
    const-string v2, "AdxWrapperSplash --> onAdShow"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public onAdShowError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShowError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, -0x1

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_1
    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, v1, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, -0x1

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_1
    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, v1, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method
