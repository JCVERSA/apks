.class public Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$b;
.super Lcom/hisavana/common/bean/NativeAdWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/fblibrary/excuter/util/PltatformUtil;->getTAdNativeInfo(Lcom/facebook/ads/Ad;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/ads/NativeBannerAd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeBannerAd;Lcom/hisavana/common/base/BaseNative;Lcom/facebook/ads/NativeBannerAd;)V
    .locals 0

    iput-object p3, p0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$b;->a:Lcom/facebook/ads/NativeBannerAd;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/bean/NativeAdWrapper;-><init>(Ljava/lang/Object;Lcom/hisavana/common/base/BaseNative;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->destroy()V

    return-void
.end method

.method public getTrackBundle()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isExpired()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$b;->a:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->isAdInvalidated()Z

    move-result p0

    return p0
.end method

.method public isIconValid()Z
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isImageValid()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMaterielValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
