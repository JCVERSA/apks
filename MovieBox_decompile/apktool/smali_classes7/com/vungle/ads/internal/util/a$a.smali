.class public final Lcom/vungle/ads/internal/util/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/util/a;
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
    invoke-direct {p0}, Lcom/vungle/ads/internal/util/a$a;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final addLifecycleListener(Lcom/vungle/ads/internal/util/a$b;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/a;->access$addListener(Lcom/vungle/ads/internal/util/a;Lcom/vungle/ads/internal/util/a$b;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final deInit$vungle_ads_release(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/a;->access$deInit(Lcom/vungle/ads/internal/util/a;Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/util/a;->access$getInstance$cp()Lcom/vungle/ads/internal/util/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/a;->access$init(Lcom/vungle/ads/internal/util/a;Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final isForeground()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/vungle/ads/internal/util/a;->access$isAppInForeground(Lcom/vungle/ads/internal/util/a;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final removeLifecycleListener(Lcom/vungle/ads/internal/util/a$b;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/util/a;->removeListener(Lcom/vungle/ads/internal/util/a$b;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final startWhenForeground(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)Z
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->isForeground()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/util/a;->access$startActivitySafely(Lcom/vungle/ads/internal/util/a;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/vungle/ads/internal/util/a$c;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, p2, p3, p4}, Lcom/vungle/ads/internal/util/a$c;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/a;->access$setTargetActivityInfo$p(Lcom/vungle/ads/internal/util/a;Lcom/vungle/ads/internal/util/a$c;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    :goto_0
    return p1
.end method
