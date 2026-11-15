.class Lcom/hisavana/adxlibrary/excuter/AdxNative$a;
.super Lcom/cloud/hisavana/sdk/api/listener/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxNative;->initNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/hisavana/adxlibrary/excuter/AdxNative;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxNative;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

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
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdClosed(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "onAdLoaded multi"

    .line 6
    .line 7
    const-string v2, "AdxNative"

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v0, v3, :cond_1

    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 27
    .line 28
    invoke-static {v3}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v4, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/hisavana/common/base/BaseAd;->getTtl()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iget-object v5, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 39
    .line 40
    iget-object v6, v5, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 41
    .line 42
    invoke-static {v1, v3, v4, v5, v6}, Lde/a;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;IILcom/hisavana/common/base/BaseNative;Lb7/c;)Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v3, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 47
    .line 48
    invoke-static {v3, v1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_0

    .line 53
    .line 54
    iget-object v4, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 55
    .line 56
    invoke-static {v4}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b(Lcom/hisavana/adxlibrary/excuter/AdxNative;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    invoke-static {v1}, Lcom/hisavana/common/utils/AdUtil;->release(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    move v1, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->c(Lcom/hisavana/adxlibrary/excuter/AdxNative;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v0, v3}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Ljava/util/List;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 90
    .line 91
    invoke-static {v1, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 101
    .line 102
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 103
    .line 104
    const-string v3, "ad filter"

    .line 105
    .line 106
    invoke-direct {v0, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v0}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v3, "ad not pass filter check or no icon or image filter:"

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_2
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
    const-string v2, "onAdLoaded error +"

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
    const-string v2, ":::"

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
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "AdxNative"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 44
    .line 45
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 12
    .line 13
    check-cast p1, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    instance-of v0, p1, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 15
    .line 16
    check-cast p1, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
