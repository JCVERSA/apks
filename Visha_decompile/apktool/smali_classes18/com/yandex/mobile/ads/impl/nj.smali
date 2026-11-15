.class public final Lcom/yandex/mobile/ads/impl/nj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ij;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ij;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/ij;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/nj;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ij;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ij;)V
    .locals 1

    .line 3
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "designProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nj;->a:Lcom/yandex/mobile/ads/impl/ij;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/np0;Lcom/yandex/mobile/ads/impl/b81;Landroid/view/ViewTreeObserver$OnPreDrawListener;Lcom/yandex/mobile/ads/impl/qe2;)Lcom/yandex/mobile/ads/impl/mj;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdPrivate"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preDrawListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoEventController"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nj;->a:Lcom/yandex/mobile/ads/impl/ij;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/ij;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/q61;)Lcom/yandex/mobile/ads/impl/hj;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/hj;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/b81;Lcom/yandex/mobile/ads/impl/qe2;)Lcom/yandex/mobile/ads/impl/fr0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p2, Lcom/yandex/mobile/ads/impl/mj;

    new-instance p3, Lcom/yandex/mobile/ads/impl/lj;

    invoke-static {p0}, Ly71;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p3, p1, p4, p0, p6}, Lcom/yandex/mobile/ads/impl/lj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-direct {p2, p3}, Lcom/yandex/mobile/ads/impl/mj;-><init>(Lcom/yandex/mobile/ads/impl/lj;)V

    return-object p2
.end method
