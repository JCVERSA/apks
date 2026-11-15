.class public final Lcom/vungle/ads/internal/AdInternal$c;
.super Lcom/vungle/ads/internal/presenter/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/AdInternal;->play(Landroid/content/Context;Lcom/vungle/ads/internal/presenter/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/AdInternal;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/AdInternal;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/presenter/c;-><init>(Lcom/vungle/ads/internal/presenter/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdEnd(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    .line 2
    .line 3
    sget-object v1, Lcom/vungle/ads/internal/AdInternal$AdState;->FINISHED:Lcom/vungle/ads/internal/AdInternal$AdState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/AdInternal;->setAdState(Lcom/vungle/ads/internal/AdInternal$AdState;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/vungle/ads/internal/presenter/c;->onAdEnd(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    .line 2
    .line 3
    sget-object v1, Lcom/vungle/ads/internal/AdInternal$AdState;->PLAYING:Lcom/vungle/ads/internal/AdInternal$AdState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/AdInternal;->setAdState(Lcom/vungle/ads/internal/AdInternal$AdState;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getValidationToPresentMetric$vungle_ads_release()Lcom/vungle/ads/x;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/vungle/ads/x;->markEnd()V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getValidationToPresentMetric$vungle_ads_release()Lcom/vungle/ads/x;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-super {p0, p1}, Lcom/vungle/ads/internal/presenter/c;->onAdStart(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onFailure(Lcom/vungle/ads/VungleError;)V
    .locals 2

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    .line 7
    .line 8
    sget-object v1, Lcom/vungle/ads/internal/AdInternal$AdState;->ERROR:Lcom/vungle/ads/internal/AdInternal$AdState;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/AdInternal;->setAdState(Lcom/vungle/ads/internal/AdInternal$AdState;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Lcom/vungle/ads/internal/presenter/c;->onFailure(Lcom/vungle/ads/VungleError;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
