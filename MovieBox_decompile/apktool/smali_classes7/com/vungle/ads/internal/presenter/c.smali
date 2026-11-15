.class public Lcom/vungle/ads/internal/presenter/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/presenter/b;


# instance fields
.field private final adPlayCallback:Lcom/vungle/ads/internal/presenter/b;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/presenter/b;)V
    .locals 1

    .line 1
    const-string v0, "adPlayCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdClick(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdEnd(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdImpression(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdImpression(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdLeftApplication(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdRewarded(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdStart(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFailure(Lcom/vungle/ads/VungleError;)V
    .locals 1

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onFailure(Lcom/vungle/ads/VungleError;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
