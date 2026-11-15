.class public Lcom/yandex/mobile/ads/impl/fz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/jg<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/vg2<",
            "TV;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vg2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/vg2<",
            "TV;TT;>;)V"
        }
    .end annotation

    const-string v0, "viewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/yg2;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "asset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/vg2;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/fz;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/lh2;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/lh2;

    .line 2
    const-string v1, "view"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/lh2;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/vg2;->b(Landroid/view/View;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 6
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fz;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->c()Z

    move-result p0

    return p0
.end method
