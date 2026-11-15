.class public final Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SspInterface"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

.field public final OooO0OO:Ljava/lang/String;

.field public final OooO0Oo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO00o:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0O0:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0OO:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0Oo:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final athenaTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "eventName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0Oo:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/app/Activity;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    check-cast v1, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;

    .line 30
    .line 31
    :cond_1
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0OO:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0O0:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 36
    .line 37
    sget v3, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO:I

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->trackH5Event(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final getAdsDTO()Lcom/cloud/tmc/ad/bean/response/AdsDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0O0:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0OO:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTriggerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final personaliseCallback()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0OO:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO00o:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "adPersonalizationPage"

    .line 37
    .line 38
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0Oo:Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/app/Activity;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method
