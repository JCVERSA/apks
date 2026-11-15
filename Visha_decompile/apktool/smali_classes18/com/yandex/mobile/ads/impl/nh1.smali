.class public final Lcom/yandex/mobile/ads/impl/nh1;
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
.field private final a:Lcom/yandex/mobile/ads/impl/rt;

.field private final b:Lcom/yandex/mobile/ads/impl/h41;

.field private final c:Lcom/yandex/mobile/ads/impl/k41;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/h41;Lcom/yandex/mobile/ads/impl/k41;)V
    .locals 1

    const-string v0, "nativeAdAssets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdAdditionalViewProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdAssetViewProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nh1;->a:Lcom/yandex/mobile/ads/impl/rt;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nh1;->b:Lcom/yandex/mobile/ads/impl/h41;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/nh1;->c:Lcom/yandex/mobile/ads/impl/k41;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh1;->b:Lcom/yandex/mobile/ads/impl/h41;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/yandex/mobile/ads/R$id;->icon_placeholder:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nh1;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/rt;->g()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/nh1;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/rt;->e()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v3

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh1;->c:Lcom/yandex/mobile/ads/impl/k41;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/yandex/mobile/ads/R$id;->title:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance p1, Lcom/yandex/mobile/ads/impl/kh2;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/kh2;-><init>(Landroid/widget/TextView;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
