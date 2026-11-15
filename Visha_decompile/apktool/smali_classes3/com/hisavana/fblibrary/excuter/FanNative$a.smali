.class public Lcom/hisavana/fblibrary/excuter/FanNative$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/fblibrary/excuter/FanNative;->initNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/fblibrary/excuter/FanNative;


# direct methods
.method public constructor <init>(Lcom/hisavana/fblibrary/excuter/FanNative;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "FanNative"

    const-string v1, "fan ad clicked"

    invoke-virtual {p1, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {p0}, Lcom/hisavana/fblibrary/excuter/FanNative;->f(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/AdNativeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {v0}, Lcom/hisavana/fblibrary/excuter/FanNative;->p(Lcom/hisavana/fblibrary/excuter/FanNative;)I

    move-result v0

    iget-object v1, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-virtual {v1}, Lcom/hisavana/common/base/BaseAd;->getTtl()I

    move-result v1

    iget-object v2, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {p1, v0, v1, v2}, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil;->getTAdNativeInfo(Lcom/facebook/ads/Ad;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {v0, p1}, Lcom/hisavana/fblibrary/excuter/FanNative;->a(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {v1}, Lcom/hisavana/fblibrary/excuter/FanNative;->c(Lcom/hisavana/fblibrary/excuter/FanNative;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/hisavana/common/utils/AdUtil;->release(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :goto_0
    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/FanNative;->d(Lcom/hisavana/fblibrary/excuter/FanNative;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {p0}, Lcom/hisavana/fblibrary/excuter/FanNative;->e(Lcom/hisavana/fblibrary/excuter/FanNative;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    new-instance p1, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v1, "ad filter"

    invoke-direct {p1, v0, v1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p0, p1}, Lcom/hisavana/fblibrary/excuter/FanNative;->a(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad not pass sensitive check or no icon or image filter:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FanNative"

    invoke-virtual {p0, v0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fan native is error, error code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error msg is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FanNative"

    invoke-virtual {p1, v1, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    new-instance p1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p0, p1}, Lcom/hisavana/fblibrary/excuter/FanNative;->e(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "FanNative"

    const-string v1, "fan ad impression"

    invoke-virtual {p1, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$a;->a:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {p0}, Lcom/hisavana/fblibrary/excuter/FanNative;->f(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/AdNativeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "FanNative"

    const-string v0, "fan native ad media download"

    invoke-virtual {p0, p1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
