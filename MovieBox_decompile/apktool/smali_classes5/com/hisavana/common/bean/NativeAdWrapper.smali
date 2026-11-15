.class public abstract Lcom/hisavana/common/bean/NativeAdWrapper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private adImpl:Lcom/hisavana/common/base/BaseNative;

.field private final nativeAd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/hisavana/common/base/BaseNative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/hisavana/common/base/BaseNative;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->nativeAd:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract destroy()V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation
.end method

.method public detachContext()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->detachContext()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getAdImpl()Lcom/hisavana/common/base/BaseNative;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeAd()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->nativeAd:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getTrackBundle()Landroid/os/Bundle;
.end method

.method public handleClick()V
    .locals 0

    .line 1
    return-void
.end method

.method public isExpired()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    return v0
.end method

.method public abstract isIconValid()Z
.end method

.method public abstract isImageValid()Z
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isMaterielValid()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->isImageValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->isIconValid()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    return v0
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/hisavana/common/interfacz/AdShowListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 1
    .param p3    # Lcom/hisavana/common/bean/AdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/hisavana/common/bean/AdNativeInfo;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/hisavana/common/interfacz/IadNative;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V

    :cond_0
    return-void
.end method

.method public trackRecommendClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public trackRecommendShow(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 1
    .param p1    # Lcom/hisavana/common/bean/AdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/hisavana/common/interfacz/IadNative;->unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
