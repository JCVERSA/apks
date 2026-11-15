.class public final Lcom/yandex/mobile/ads/impl/u20;
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
.field private final a:Lcom/yandex/div2/DivData;

.field private final b:Lcom/yandex/mobile/ads/impl/k20;

.field private final c:Ljh2;

.field private final d:Lcom/yandex/mobile/ads/impl/sp1;

.field private final e:Landroidx/lifecycle/LifecycleOwner;

.field private final f:Lcom/yandex/mobile/ads/impl/n30;

.field private final g:Lcom/yandex/mobile/ads/impl/h20;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/k20;Ljh2;Lcom/yandex/mobile/ads/impl/sp1;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 8

    .line 1
    new-instance v6, Lcom/yandex/mobile/ads/impl/n30;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/n30;-><init>()V

    .line 2
    new-instance v7, Lcom/yandex/mobile/ads/impl/h20;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/h20;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/u20;-><init>(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/k20;Ljh2;Lcom/yandex/mobile/ads/impl/sp1;Landroidx/lifecycle/LifecycleOwner;Lcom/yandex/mobile/ads/impl/n30;Lcom/yandex/mobile/ads/impl/h20;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/k20;Ljh2;Lcom/yandex/mobile/ads/impl/sp1;Landroidx/lifecycle/LifecycleOwner;Lcom/yandex/mobile/ads/impl/n30;Lcom/yandex/mobile/ads/impl/h20;)V
    .locals 1

    .line 4
    const-string v0, "divData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitActionAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divViewCreator"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divDataTagCreator"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u20;->a:Lcom/yandex/div2/DivData;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/u20;->b:Lcom/yandex/mobile/ads/impl/k20;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/u20;->c:Ljh2;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/u20;->d:Lcom/yandex/mobile/ads/impl/sp1;

    .line 10
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/u20;->e:Landroidx/lifecycle/LifecycleOwner;

    .line 11
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/u20;->f:Lcom/yandex/mobile/ads/impl/n30;

    .line 12
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/u20;->g:Lcom/yandex/mobile/ads/impl/h20;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 4

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u20;->f:Lcom/yandex/mobile/ads/impl/n30;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/u20;->c:Ljh2;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/u20;->e:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/n30;->a(Landroid/content/Context;Ljh2;Landroidx/lifecycle/LifecycleOwner;)Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/u20;->g:Lcom/yandex/mobile/ads/impl/h20;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lei2;

    invoke-direct {v1, p1}, Lei2;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/u20;->a:Lcom/yandex/div2/DivData;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/div/core/view2/Div2View;->setData(Lcom/yandex/div2/DivData;Lei2;)Z

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/u10;->a(Lcom/yandex/div/core/view2/Div2View;)Lcom/yandex/mobile/ads/impl/ay1;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u20;->b:Lcom/yandex/mobile/ads/impl/k20;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/ay1;->a(Lcom/yandex/mobile/ads/impl/k20;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u20;->d:Lcom/yandex/mobile/ads/impl/sp1;

    const-string v0, "Failed to bind DivKit"

    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
