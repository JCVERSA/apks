.class Lcom/hisavana/pangle/util/PlatformUtil$1;
.super Lcom/hisavana/common/bean/NativeAdWrapper;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/util/PlatformUtil;->getTAdNativeInfo(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/bean/NativeAdWrapper<",
        "Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/common/base/BaseNative;

.field final synthetic b:Lcom/hisavana/common/bean/AdNativeInfo;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->a:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->c:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/bean/NativeAdWrapper;-><init>(Ljava/lang/Object;Lcom/hisavana/common/base/BaseNative;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->a:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseNative;->destroySingleAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public getTrackBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public isIconValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->c:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/hisavana/pangle/util/PlatformUtil$1;->c:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->getImageUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public isImageValid()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isMaterielValid()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
