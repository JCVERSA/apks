.class Lcom/hisavana/fblibrary/excuter/FanNative$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

.field final synthetic val$nativeAdsManager:Lcom/facebook/ads/NativeAdsManager;


# direct methods
.method public constructor <init>(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/facebook/ads/NativeAdsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanNative$4;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    iput-object p2, p0, Lcom/hisavana/fblibrary/excuter/FanNative$4;->val$nativeAdsManager:Lcom/facebook/ads/NativeAdsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$4;->val$nativeAdsManager:Lcom/facebook/ads/NativeAdsManager;

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdsManager;->loadAds()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "FanNative"

    invoke-virtual {v0, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
