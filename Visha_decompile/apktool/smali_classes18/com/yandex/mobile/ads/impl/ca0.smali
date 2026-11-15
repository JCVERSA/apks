.class public final Lcom/yandex/mobile/ads/impl/ca0;
.super Lcom/yandex/mobile/ads/impl/ma0;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lcom/yandex/mobile/ads/impl/p90;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/p90;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdView"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adEventListener"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoEventController"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "feedItemBinder"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/ma0;-><init>(Landroid/view/View;I)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ca0;->a:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ca0;->b:Lcom/yandex/mobile/ads/impl/p90;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ca0;->b:Lcom/yandex/mobile/ads/impl/p90;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p90;->b()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/n90;)V
    .locals 3

    .line 1
    const-string v0, "feedItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ca0;->b:Lcom/yandex/mobile/ads/impl/p90;

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ca0;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n90;->a()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n90;->c()Lcom/yandex/mobile/ads/impl/b02;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n90;->b()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/yandex/mobile/ads/impl/p90;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/b02;Ljava/util/List;)V

    return-void
.end method
