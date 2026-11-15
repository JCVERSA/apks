.class Lcom/hisavana/yandex/executer/YandexNative$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/yandex/executer/YandexNative;->registerImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/yandex/executer/YandexNative;

.field final synthetic val$info:Lcom/hisavana/common/bean/AdNativeInfo;


# direct methods
.method public constructor <init>(Lcom/hisavana/yandex/executer/YandexNative;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/yandex/executer/YandexNative$1;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    iput-object p2, p0, Lcom/hisavana/yandex/executer/YandexNative$1;->val$info:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YandexNative is clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexNative$1;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YandexNative"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexNative$1;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexNative$1;->val$info:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, p0}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onImpression(Lcom/yandex/mobile/ads/common/ImpressionData;)V
    .locals 3
    .param p1    # Lcom/yandex/mobile/ads/common/ImpressionData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YandexNative is onAdImpression"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/yandex/mobile/ads/common/ImpressionData;->getRawData()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hisavana/yandex/executer/YandexNative$1;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "YandexNative"

    invoke-virtual {v0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/yandex/executer/YandexNative$1;->this$0:Lcom/hisavana/yandex/executer/YandexNative;

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexNative$1;->val$info:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {p1, p0}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onLeftApplication()V
    .locals 0

    return-void
.end method

.method public onReturnedToApplication()V
    .locals 0

    return-void
.end method
