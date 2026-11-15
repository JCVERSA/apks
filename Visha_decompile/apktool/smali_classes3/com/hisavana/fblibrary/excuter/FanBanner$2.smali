.class Lcom/hisavana/fblibrary/excuter/FanBanner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/fblibrary/excuter/FanBanner;->onBannerLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/fblibrary/excuter/FanBanner;


# direct methods
.method public constructor <init>(Lcom/hisavana/fblibrary/excuter/FanBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanBanner$2;->this$0:Lcom/hisavana/fblibrary/excuter/FanBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/hisavana/fblibrary/excuter/FanBanner$2$a;

    invoke-direct {v3, p0, v0, v1}, Lcom/hisavana/fblibrary/excuter/FanBanner$2$a;-><init>(Lcom/hisavana/fblibrary/excuter/FanBanner$2;J)V

    invoke-static {v2, v3}, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->initFan(Landroid/content/Context;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBannerLoad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FanBanner"

    invoke-virtual {v0, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
