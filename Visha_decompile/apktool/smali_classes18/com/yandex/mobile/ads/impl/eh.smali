.class public final Lcom/yandex/mobile/ads/impl/eh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/eh;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    const-string v0, "supportedAssetNames"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/eh;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/j41;)Lcom/yandex/mobile/ads/impl/k71;
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/k71$a;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f81;->c:Lcom/yandex/mobile/ads/impl/f81;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/f81;Ljava/util/Map;)V

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->h(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->a(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->b(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->e(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->c(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->n(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->d(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->g(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->a(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->l(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->b(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->o(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->c(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->c(Landroid/view/View;)Lcom/monetization/ads/nativeads/CustomizableMediaView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->b(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->a(Landroid/widget/CheckBox;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->k(Landroid/view/View;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->a(Landroid/widget/ProgressBar;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->d(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->e(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->i(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/mobile/ads/impl/mn1;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->a(Landroid/view/View;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->p(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->f(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->m(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->g(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->j(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->h(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/j41;->f(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;->i(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eh;->a:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, p1, v1}, Lcom/yandex/mobile/ads/impl/j41;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/k71;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/k71;-><init>(Lcom/yandex/mobile/ads/impl/k71$a;I)V

    return-object p0
.end method
