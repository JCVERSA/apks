.class public Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$a;
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
.field public final synthetic a:Lcom/hisavana/common/base/BaseNative;

.field public final synthetic b:Lcom/hisavana/common/bean/AdNativeInfo;

.field public final synthetic c:Lcom/facebook/ads/NativeAd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeAd;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;Lcom/facebook/ads/NativeAd;)V
    .locals 0

    iput-object p3, p0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$a;->a:Lcom/hisavana/common/base/BaseNative;

    iput-object p4, p0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    iput-object p5, p0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$a;->c:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/bean/NativeAdWrapper;-><init>(Ljava/lang/Object;Lcom/hisavana/common/base/BaseNative;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$a;->a:Lcom/hisavana/common/base/BaseNative;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseNative;->destroySingleAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->destroy()V

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy ad error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "facebook"

    invoke-virtual {v0, v1, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
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

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$a;->c:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->isAdInvalidated()Z

    move-result p0

    return p0
.end method

.method public isIconValid()Z
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/NativeAd;

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

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMaterielValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
