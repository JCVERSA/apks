.class public final Lcom/yandex/mobile/ads/impl/ga0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b10;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b10<",
        "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vk1;

.field private final b:Lcom/yandex/mobile/ads/impl/k20;

.field private final c:Lcom/yandex/mobile/ads/impl/sp1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vk1;Lcom/yandex/mobile/ads/impl/k20;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1

    const-string v0, "preloadedDivKitDesign"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitActionAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ga0;->a:Lcom/yandex/mobile/ads/impl/vk1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ga0;->b:Lcom/yandex/mobile/ads/impl/k20;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ga0;->c:Lcom/yandex/mobile/ads/impl/sp1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 3

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ga0;->a:Lcom/yandex/mobile/ads/impl/vk1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vk1;->d()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ah2;->a(Landroid/view/View;)V

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/u10;->a(Lcom/yandex/div/core/view2/Div2View;)Lcom/yandex/mobile/ads/impl/ay1;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ga0;->b:Lcom/yandex/mobile/ads/impl/k20;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/ay1;->a(Lcom/yandex/mobile/ads/impl/k20;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ga0;->c:Lcom/yandex/mobile/ads/impl/sp1;

    const-string v0, "Failed to bind DivKit Feed Preloaded Ad"

    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ga0;->a:Lcom/yandex/mobile/ads/impl/vk1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vk1;->d()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/u10;->a(Lcom/yandex/div/core/view2/Div2View;)Lcom/yandex/mobile/ads/impl/ay1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ay1;->a(Lcom/yandex/mobile/ads/impl/k20;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ah2;->a(Landroid/view/View;)V

    return-void
.end method
