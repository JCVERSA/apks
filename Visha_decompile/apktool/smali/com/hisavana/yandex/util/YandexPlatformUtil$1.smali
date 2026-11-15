.class Lcom/hisavana/yandex/util/YandexPlatformUtil$1;
.super Lcom/hisavana/common/bean/NativeAdWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/yandex/util/YandexPlatformUtil;->getNativeInfo(Lcom/yandex/mobile/ads/nativeads/NativeAd;IILcom/hisavana/yandex/executer/YandexNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/bean/NativeAdWrapper<",
        "Lcom/yandex/mobile/ads/nativeads/NativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/yandex/executer/YandexNative;

.field public final synthetic b:Lcom/hisavana/common/bean/AdNativeInfo;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/NativeAd;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/yandex/executer/YandexNative;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0

    iput-object p3, p0, Lcom/hisavana/yandex/util/YandexPlatformUtil$1;->a:Lcom/hisavana/yandex/executer/YandexNative;

    iput-object p4, p0, Lcom/hisavana/yandex/util/YandexPlatformUtil$1;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/bean/NativeAdWrapper;-><init>(Ljava/lang/Object;Lcom/hisavana/common/base/BaseNative;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/yandex/util/YandexPlatformUtil$1;->a:Lcom/hisavana/yandex/executer/YandexNative;

    iget-object v1, p0, Lcom/hisavana/yandex/util/YandexPlatformUtil$1;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseNative;->destroySingleAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :try_start_0
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

    const-string v1, "yandex PlatformUtil"

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

.method public isIconValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isImageValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
