.class public final Lcom/vungle/ads/internal/ui/AdActivity$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/ui/AdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/ui/AdActivity$a;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEventId(Lcom/vungle/ads/internal/ui/AdActivity$a;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/ui/AdActivity$a;->getEventId(Landroid/content/Intent;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getPlacement(Lcom/vungle/ads/internal/ui/AdActivity$a;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/ui/AdActivity$a;->getPlacement(Landroid/content/Intent;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getEventId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v1, "request_eventId"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    :cond_0
    return-object v0
.end method

.method private final getPlacement(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v1, "request"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    :cond_0
    return-object v0
.end method

.method public static synthetic getREQUEST_KEY_EVENT_ID_EXTRA$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getREQUEST_KEY_EXTRA$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    const-string v0, "placement"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    const-class v1, Lcom/vungle/ads/internal/ui/VungleActivity;

    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    instance-of p1, p1, Landroid/app/Activity;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/high16 p1, 0x10000000

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "request"

    .line 28
    .line 29
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p2, "request_eventId"

    .line 33
    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public final getAdvertisement$vungle_ads_release()Lcom/vungle/ads/internal/model/AdPayload;
    .locals 1

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/ui/AdActivity;->access$getAdvertisement$cp()Lcom/vungle/ads/internal/model/AdPayload;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getBidPayload$vungle_ads_release()Lcom/vungle/ads/internal/model/BidPayload;
    .locals 1

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/ui/AdActivity;->access$getBidPayload$cp()Lcom/vungle/ads/internal/model/BidPayload;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getEventListener$vungle_ads_release()Lcom/vungle/ads/internal/presenter/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/ui/AdActivity;->access$getEventListener$cp()Lcom/vungle/ads/internal/presenter/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPresenterDelegate$vungle_ads_release()Lcom/vungle/ads/internal/presenter/l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/ui/AdActivity;->access$getPresenterDelegate$cp()Lcom/vungle/ads/internal/presenter/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final setAdvertisement$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/vungle/ads/internal/ui/AdActivity;->access$setAdvertisement$cp(Lcom/vungle/ads/internal/model/AdPayload;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setBidPayload$vungle_ads_release(Lcom/vungle/ads/internal/model/BidPayload;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/vungle/ads/internal/ui/AdActivity;->access$setBidPayload$cp(Lcom/vungle/ads/internal/model/BidPayload;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setEventListener$vungle_ads_release(Lcom/vungle/ads/internal/presenter/a;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/vungle/ads/internal/ui/AdActivity;->access$setEventListener$cp(Lcom/vungle/ads/internal/presenter/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setPresenterDelegate$vungle_ads_release(Lcom/vungle/ads/internal/presenter/l;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/vungle/ads/internal/ui/AdActivity;->access$setPresenterDelegate$cp(Lcom/vungle/ads/internal/presenter/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
