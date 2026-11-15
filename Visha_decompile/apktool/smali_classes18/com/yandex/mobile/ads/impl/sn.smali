.class public final Lcom/yandex/mobile/ads/impl/sn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b10;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b10<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q61;

.field private final b:Lcom/yandex/mobile/ads/impl/k41;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/k41;)V
    .locals 1

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdAssetViewProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sn;->a:Lcom/yandex/mobile/ads/impl/q61;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sn;->b:Lcom/yandex/mobile/ads/impl/k41;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sn;->b:Lcom/yandex/mobile/ads/impl/k41;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/R$id;->call_to_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sn;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->getAdType()Lcom/yandex/mobile/ads/impl/gr1;

    move-result-object p0

    instance-of v0, p1, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/impl/gr1;->d:Lcom/yandex/mobile/ads/impl/gr1;

    if-eq p0, v0, :cond_0

    check-cast p1, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;

    invoke-virtual {p1}, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
