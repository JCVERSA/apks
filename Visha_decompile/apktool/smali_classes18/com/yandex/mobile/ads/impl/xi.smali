.class public final Lcom/yandex/mobile/ads/impl/xi;
.super Lcom/yandex/mobile/ads/impl/h62;
.source "SourceFile"


# instance fields
.field private final k:Lcom/yandex/mobile/ads/impl/np0;

.field private final l:Lcom/yandex/mobile/ads/impl/oj;

.field private final m:Lcom/yandex/mobile/ads/impl/it0;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/np0;Lcom/yandex/mobile/ads/impl/oj;Lcom/yandex/mobile/ads/impl/it0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/np0;",
            "Lcom/yandex/mobile/ads/impl/oj;",
            "Lcom/yandex/mobile/ads/impl/it0;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adView"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerShowEventListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainThreadHandler"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ua;

    invoke-direct {v0, p4}, Lcom/yandex/mobile/ads/impl/ua;-><init>(Lcom/yandex/mobile/ads/impl/np0;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/yandex/mobile/ads/impl/h62;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/va;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/xi;->k:Lcom/yandex/mobile/ads/impl/np0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/xi;->l:Lcom/yandex/mobile/ads/impl/oj;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/xi;->m:Lcom/yandex/mobile/ads/impl/it0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/xi;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/xi;->n:Z

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi;->l:Lcom/yandex/mobile/ads/impl/oj;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/oj;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi;->k:Lcom/yandex/mobile/ads/impl/np0;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xi;->m:Lcom/yandex/mobile/ads/impl/it0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/it0;->a()V

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/zj;->c()V

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi;->k:Lcom/yandex/mobile/ads/impl/np0;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->c(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final l()Z
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi;->k:Lcom/yandex/mobile/ads/impl/np0;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onLeftApplication()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi;->l:Lcom/yandex/mobile/ads/impl/oj;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/oj;->onLeftApplication()V

    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi;->l:Lcom/yandex/mobile/ads/impl/oj;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/oj;->onReturnedToApplication()V

    return-void
.end method
