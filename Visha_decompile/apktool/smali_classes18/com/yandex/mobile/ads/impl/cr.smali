.class public final Lcom/yandex/mobile/ads/impl/cr;
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
.field private final a:Lcom/yandex/mobile/ads/impl/rt;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rt;I)V
    .locals 1

    const-string v0, "nativeAdAssets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cr;->a:Lcom/yandex/mobile/ads/impl/rt;

    iput p2, p0, Lcom/yandex/mobile/ads/impl/cr;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 3

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    const-string v0, "adView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/dr;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/cr;->a:Lcom/yandex/mobile/ads/impl/rt;

    iget p0, p0, Lcom/yandex/mobile/ads/impl/cr;->b:I

    new-instance v2, Lcom/yandex/mobile/ads/impl/h41;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/h41;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lcom/yandex/mobile/ads/impl/dr;-><init>(Lcom/yandex/mobile/ads/impl/rt;ILcom/yandex/mobile/ads/impl/h41;)V

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/dr;->a(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/dr;->b(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p0, :cond_0

    sget v0, Lcom/yandex/mobile/ads/R$id;->favicon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    if-eqz p1, :cond_1

    sget p0, Lcom/yandex/mobile/ads/R$id;->icon:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
