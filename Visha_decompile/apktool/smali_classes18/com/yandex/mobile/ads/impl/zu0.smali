.class public final Lcom/yandex/mobile/ads/impl/zu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jg;
.implements Lcom/yandex/mobile/ads/impl/y00;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/jg<",
        "Lcom/yandex/mobile/ads/impl/ex0;",
        ">;",
        "Lcom/yandex/mobile/ads/impl/y00<",
        "Lcom/yandex/mobile/ads/impl/ex0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/fk0;

.field private final b:Lcom/yandex/mobile/ads/impl/hx0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fk0;Lcom/yandex/mobile/ads/impl/hx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/vg2;)Landroid/view/View;
    .locals 0

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/xj0;
    .locals 1

    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/xj0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/zu0;->a(Lcom/yandex/mobile/ads/impl/vg2;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/fk0;->a(Landroid/widget/ImageView;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/zu0;->a(Lcom/yandex/mobile/ads/impl/vg2;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "Lcom/yandex/mobile/ads/impl/ex0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/yg2;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "asset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ex0;

    .line 7
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/zu0;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/yandex/mobile/ads/impl/vg2;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/vg2;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 5

    .line 12
    check-cast p1, Lcom/yandex/mobile/ads/impl/ex0;

    .line 13
    const-string v0, "mediaValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/zu0;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object v1

    .line 15
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/zu0;->a(Lcom/yandex/mobile/ads/impl/vg2;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/fk0;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    .line 18
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/zu0;->a(Lcom/yandex/mobile/ads/impl/vg2;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0, v1, p1}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v4, :cond_1

    move p0, v4

    goto :goto_1

    :cond_1
    move p0, v3

    :goto_1
    if-nez v0, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    return v3
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 4

    .line 5
    check-cast p1, Lcom/yandex/mobile/ads/impl/ex0;

    .line 6
    const-string v0, "mediaValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/zu0;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/zu0;->a(Lcom/yandex/mobile/ads/impl/vg2;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 9
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1, v0}, Lcom/yandex/mobile/ads/impl/fk0;->a(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/xj0;)V

    .line 10
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/zu0;->a(Lcom/yandex/mobile/ads/impl/vg2;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-nez v0, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/hx0;->a(Lcom/yandex/mobile/ads/impl/ex0;)V

    .line 13
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/lh2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/zu0;->a(Lcom/yandex/mobile/ads/impl/vg2;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/zu0;->a(Lcom/yandex/mobile/ads/impl/vg2;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const-string v1, "view"

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Lcom/yandex/mobile/ads/impl/lh2;

    .line 4
    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/lh2;-><init>(II)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/lh2;

    .line 7
    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/lh2;-><init>(II)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 4

    .line 9
    check-cast p1, Lcom/yandex/mobile/ads/impl/ex0;

    .line 10
    const-string v0, "mediaValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/zu0;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/zu0;->a(Lcom/yandex/mobile/ads/impl/vg2;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 13
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1, v0}, Lcom/yandex/mobile/ads/impl/fk0;->a(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/xj0;)V

    .line 14
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/zu0;->a(Lcom/yandex/mobile/ads/impl/vg2;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-eqz v0, :cond_3

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/hx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V

    .line 17
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/view/View;I)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/view/View;I)Z

    move-result p0

    if-ne p0, v2, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public final destroy()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->a()V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vg2;->c()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->c()Z

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/hx0$a;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zu0;->b:Lcom/yandex/mobile/ads/impl/hx0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hx0;->d()Lcom/yandex/mobile/ads/impl/hx0$a;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zu0;->a:Lcom/yandex/mobile/ads/impl/fk0;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/yandex/mobile/ads/impl/hx0$a;->f:Lcom/yandex/mobile/ads/impl/hx0$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method
