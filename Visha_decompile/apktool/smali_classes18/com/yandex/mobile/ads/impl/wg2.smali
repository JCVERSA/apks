.class public final Lcom/yandex/mobile/ads/impl/wg2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wg2;->a:Lcom/yandex/mobile/ads/impl/vg2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wg2;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg2;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/yg2;",
            "TT;)V"
        }
    .end annotation

    .line 3
    const-string v0, "asset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wg2;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg2;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/vg2;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wg2;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg2;->a:Lcom/yandex/mobile/ads/impl/vg2;

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

.method public final b()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg2;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->a()V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wg2;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg2;->a:Lcom/yandex/mobile/ads/impl/vg2;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/vg2;->b(Landroid/view/View;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
