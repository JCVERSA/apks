.class public final Lcom/yandex/mobile/ads/impl/xm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/am0;

.field private final b:Lcom/yandex/mobile/ads/impl/u00;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/pn0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/u00;

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/impl/u00;-><init>(Lcom/yandex/mobile/ads/impl/pn0;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/xm0;-><init>(Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/pn0;Lcom/yandex/mobile/ads/impl/u00;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/pn0;Lcom/yandex/mobile/ads/impl/u00;)V
    .locals 1

    .line 3
    const-string v0, "customUiElementsHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamDesign"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "defaultUiElementsCreator"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xm0;->a:Lcom/yandex/mobile/ads/impl/am0;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/xm0;->b:Lcom/yandex/mobile/ads/impl/u00;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/t70;)Lcom/yandex/mobile/ads/impl/ob2;
    .locals 2

    const-string v0, "instreamAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xm0;->a:Lcom/yandex/mobile/ads/impl/am0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/am0;->a()Lcom/yandex/mobile/ads/impl/ob2;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xm0;->b:Lcom/yandex/mobile/ads/impl/u00;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/u00;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/yandex/mobile/ads/impl/ob2;

    move-result-object v0

    :cond_0
    return-object v0
.end method
