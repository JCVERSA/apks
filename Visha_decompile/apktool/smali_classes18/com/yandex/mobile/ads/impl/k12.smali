.class public final Lcom/yandex/mobile/ads/impl/k12;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/k12$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jj0;

.field private final b:Lcom/yandex/mobile/ads/impl/lj1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jj0;Lcom/yandex/mobile/ads/impl/lj1;)V
    .locals 1

    const-string v0, "imageForPresentProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconsManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k12;->a:Lcom/yandex/mobile/ads/impl/jj0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/k12;->b:Lcom/yandex/mobile/ads/impl/lj1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupMenu;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/z02;",
            ">;)",
            "Landroid/widget/PopupMenu;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupMenu;

    const/4 v2, 0x5

    invoke-direct {v1, v0, p1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k12;->b:Lcom/yandex/mobile/ads/impl/lj1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/lj1;->a(Landroid/widget/PopupMenu;)V

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/mobile/ads/impl/z02;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/z02;->c()Lcom/yandex/mobile/ads/impl/b12;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/b12;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v4, v4, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/b12;->a()Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object v5

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/k12;->a:Lcom/yandex/mobile/ads/impl/jj0;

    new-instance v8, Lcom/yandex/mobile/ads/impl/k12$a;

    invoke-direct {v8, p1, v6}, Lcom/yandex/mobile/ads/impl/k12$a;-><init>(Landroid/content/Context;Landroid/view/MenuItem;)V

    invoke-virtual {v7, v5, v8}, Lcom/yandex/mobile/ads/impl/jj0;->a(Lcom/yandex/mobile/ads/impl/xj0;Lcom/yandex/mobile/ads/impl/jj0$b;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
