.class public final Lcom/yandex/mobile/ads/impl/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/m1;
.implements Lcom/yandex/mobile/ads/impl/zr;


# instance fields
.field private final a:Landroid/widget/RelativeLayout;

.field private final b:Lcom/yandex/mobile/ads/impl/j1;

.field private final c:Landroid/view/Window;

.field private final d:Lcom/yandex/mobile/ads/impl/lf1;

.field private final e:Lcom/yandex/mobile/ads/impl/wc0;

.field private final f:Lcom/yandex/mobile/ads/impl/id0;

.field private final g:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final h:Lcom/yandex/mobile/ads/impl/gv1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/v1;Landroid/view/Window;Lcom/yandex/mobile/ads/impl/fd0;Lcom/yandex/mobile/ads/impl/lf1;Lcom/yandex/mobile/ads/impl/wc0;Lcom/yandex/mobile/ads/impl/id0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rootLayout"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adActivityListener"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "window"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fullScreenDataHolder"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "orientationConfigurator"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fullScreenBackButtonController"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fullScreenInsetsController"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/g1;->a:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/g1;->b:Lcom/yandex/mobile/ads/impl/j1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/g1;->c:Landroid/view/Window;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/g1;->d:Lcom/yandex/mobile/ads/impl/lf1;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/g1;->e:Lcom/yandex/mobile/ads/impl/wc0;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/g1;->f:Lcom/yandex/mobile/ads/impl/id0;

    invoke-virtual {p5}, Lcom/yandex/mobile/ads/impl/fd0;->a()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g1;->g:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p5}, Lcom/yandex/mobile/ads/impl/fd0;->b()Lcom/yandex/mobile/ads/impl/gv1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g1;->h:Lcom/yandex/mobile/ads/impl/gv1;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/gv1;->a(Lcom/yandex/mobile/ads/impl/zr;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g1;->b:Lcom/yandex/mobile/ads/impl/j1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g1;->h:Lcom/yandex/mobile/ads/impl/gv1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gv1;->i()V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g1;->b:Lcom/yandex/mobile/ads/impl/j1;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g1;->h:Lcom/yandex/mobile/ads/impl/gv1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gv1;->g()V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g1;->h:Lcom/yandex/mobile/ads/impl/gv1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gv1;->a(Landroid/widget/RelativeLayout;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g1;->h:Lcom/yandex/mobile/ads/impl/gv1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gv1;->f()Lcom/yandex/mobile/ads/impl/zc0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zc0;->a()Ljava/util/Map;

    move-result-object v1

    instance-of v2, v1, Ljava/io/Serializable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/io/Serializable;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "extra_tracking_parameters"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g1;->b:Lcom/yandex/mobile/ads/impl/j1;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g1;->b:Lcom/yandex/mobile/ads/impl/j1;

    const/4 v0, 0x5

    invoke-interface {p0, v0, v3}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g1;->h:Lcom/yandex/mobile/ads/impl/gv1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gv1;->d()V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g1;->e:Lcom/yandex/mobile/ads/impl/wc0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wc0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g1;->h:Lcom/yandex/mobile/ads/impl/gv1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gv1;->f()Lcom/yandex/mobile/ads/impl/zc0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zc0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g1;->g:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o8;->P()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g1;->b:Lcom/yandex/mobile/ads/impl/j1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/j1;->a()V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g1;->c:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g1;->c:Landroid/view/Window;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g1;->c:Landroid/view/Window;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g1;->f:Lcom/yandex/mobile/ads/impl/id0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g1;->c:Landroid/view/Window;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/g1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/id0;->a(Landroid/view/Window;Landroid/widget/RelativeLayout;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g1;->d:Lcom/yandex/mobile/ads/impl/lf1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lf1;->a()V

    return-void
.end method

.method public final onAdClosed()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g1;->b:Lcom/yandex/mobile/ads/impl/j1;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    return-void
.end method
