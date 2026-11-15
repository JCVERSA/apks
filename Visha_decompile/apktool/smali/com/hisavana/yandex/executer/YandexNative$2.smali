.class Lcom/hisavana/yandex/executer/YandexNative$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/yandex/executer/YandexNative;->initNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/yandex/executer/YandexNative;


# direct methods
.method public constructor <init>(Lcom/hisavana/yandex/executer/YandexNative;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsFailedToLoad(Lcom/yandex/mobile/ads/common/AdRequestError;)V
    .locals 3
    .param p1    # Lcom/yandex/mobile/ads/common/AdRequestError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yandex native onAdFailedToLoad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "----->> error info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequestError;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YandexNative"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    if-nez p1, :cond_1

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequestError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequestError;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    move-object p1, v0

    :goto_1
    invoke-static {p0, p1}, Lcom/hisavana/yandex/executer/YandexNative;->access$700(Lcom/hisavana/yandex/executer/YandexNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public onAdsLoaded(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/nativeads/NativeAd;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native is onAdsLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YandexNative"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-static {v0, p1}, Lcom/hisavana/yandex/executer/YandexNative;->access$002(Lcom/hisavana/yandex/executer/YandexNative;Ljava/util/List;)Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/NativeAd;

    :try_start_0
    iget-object v1, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-static {v1}, Lcom/hisavana/yandex/executer/YandexNative;->access$100(Lcom/hisavana/yandex/executer/YandexNative;)I

    move-result v1

    iget-object v3, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-virtual {v3}, Lcom/hisavana/common/base/BaseAd;->getTtl()I

    move-result v3

    iget-object v4, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-static {v0, v1, v3, v4}, Lcom/hisavana/yandex/util/YandexPlatformUtil;->getNativeInfo(Lcom/yandex/mobile/ads/nativeads/NativeAd;IILcom/hisavana/yandex/executer/YandexNative;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-static {v1, v0}, Lcom/hisavana/yandex/executer/YandexNative;->access$200(Lcom/hisavana/yandex/executer/YandexNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-static {v1}, Lcom/hisavana/yandex/executer/YandexNative;->access$300(Lcom/hisavana/yandex/executer/YandexNative;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/hisavana/common/utils/AdUtil;->release(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-static {p1}, Lcom/hisavana/yandex/executer/YandexNative;->access$400(Lcom/hisavana/yandex/executer/YandexNative;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {p0, p1}, Lcom/hisavana/yandex/executer/YandexNative;->access$500(Lcom/hisavana/yandex/executer/YandexNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexNative$2;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-static {p0}, Lcom/hisavana/yandex/executer/YandexNative;->access$600(Lcom/hisavana/yandex/executer/YandexNative;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V

    return-void
.end method
