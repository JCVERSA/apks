.class public final Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;
.super Lcom/hisavana/common/bean/NativeAdWrapper;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/vungle/util/VungleUtil;->getNativeInfo(Lcom/vungle/ads/NativeAd;IILcom/hisavana/vungle/excuter/VungleNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/bean/NativeAdWrapper<",
        "Lcom/vungle/ads/NativeAd;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0006H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2",
        "Lcom/hisavana/common/bean/NativeAdWrapper;",
        "Lcom/vungle/ads/NativeAd;",
        "destroy",
        "",
        "isIconValid",
        "",
        "isImageValid",
        "getTrackBundle",
        "Landroid/os/Bundle;",
        "isMaterielValid",
        "liftoff_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $ad:Lcom/vungle/ads/NativeAd;

.field final synthetic $nativeInfo:Lcom/hisavana/common/bean/AdNativeInfo;

.field final synthetic $vungleNative:Lcom/hisavana/vungle/excuter/VungleNative;


# direct methods
.method constructor <init>(Lcom/vungle/ads/NativeAd;Lcom/hisavana/vungle/excuter/VungleNative;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;->$ad:Lcom/vungle/ads/NativeAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;->$vungleNative:Lcom/hisavana/vungle/excuter/VungleNative;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;->$nativeInfo:Lcom/hisavana/common/bean/AdNativeInfo;

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
    iget-object v0, p0, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;->$vungleNative:Lcom/hisavana/vungle/excuter/VungleNative;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;->$nativeInfo:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseNative;->destroySingleAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;->$vungleNative:Lcom/hisavana/vungle/excuter/VungleNative;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/hisavana/vungle/excuter/VungleNative;->destroyAd()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getTrackBundle()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;->$vungleNative:Lcom/hisavana/vungle/excuter/VungleNative;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string v1, "mBundle"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public isIconValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;->$ad:Lcom/vungle/ads/NativeAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/NativeAd;->getAppIcon()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
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
