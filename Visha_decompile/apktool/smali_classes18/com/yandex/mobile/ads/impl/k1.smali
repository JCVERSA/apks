.class public final Lcom/yandex/mobile/ads/impl/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/m1;
.implements Lcom/yandex/mobile/ads/impl/zr;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/widget/RelativeLayout;

.field private final c:Landroid/view/Window;

.field private final d:Lcom/yandex/mobile/ads/impl/q61;

.field private final e:Lcom/yandex/mobile/ads/impl/j1;

.field private final f:Lcom/yandex/mobile/ads/impl/o3;

.field private final g:Lcom/yandex/mobile/ads/impl/wc0;

.field private final h:Lcom/yandex/mobile/ads/impl/id0;

.field private final i:Lcom/yandex/mobile/ads/impl/yd0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/view/Window;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/o3;ILcom/yandex/mobile/ads/impl/wc0;Lcom/yandex/mobile/ads/impl/id0;)V
    .locals 13

    move-object v9, p0

    move-object v10, p1

    move-object v3, p2

    move-object/from16 v0, p3

    move-object/from16 v11, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    const-string v4, "context"

    invoke-static {p1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "container"

    invoke-static {p2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "window"

    invoke-static {v0, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "nativeAdPrivate"

    invoke-static {v11, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adResponse"

    move-object/from16 v5, p5

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adActivityListener"

    invoke-static {v7, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventController"

    move-object/from16 v6, p7

    invoke-static {v6, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adConfiguration"

    invoke-static {v8, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fullScreenBackButtonController"

    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fullScreenInsetsController"

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v10, v9, Lcom/yandex/mobile/ads/impl/k1;->a:Landroid/content/Context;

    iput-object v3, v9, Lcom/yandex/mobile/ads/impl/k1;->b:Landroid/widget/RelativeLayout;

    iput-object v0, v9, Lcom/yandex/mobile/ads/impl/k1;->c:Landroid/view/Window;

    iput-object v11, v9, Lcom/yandex/mobile/ads/impl/k1;->d:Lcom/yandex/mobile/ads/impl/q61;

    iput-object v7, v9, Lcom/yandex/mobile/ads/impl/k1;->e:Lcom/yandex/mobile/ads/impl/j1;

    iput-object v8, v9, Lcom/yandex/mobile/ads/impl/k1;->f:Lcom/yandex/mobile/ads/impl/o3;

    iput-object v1, v9, Lcom/yandex/mobile/ads/impl/k1;->g:Lcom/yandex/mobile/ads/impl/wc0;

    iput-object v2, v9, Lcom/yandex/mobile/ads/impl/k1;->h:Lcom/yandex/mobile/ads/impl/id0;

    new-instance v12, Lcom/yandex/mobile/ads/impl/de0;

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v2, p5

    move-object v4, p0

    move-object/from16 v5, p7

    move/from16 v6, p9

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/de0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/e1;ILcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/o3;)V

    invoke-virtual {v12, p1, v11, p0}, Lcom/yandex/mobile/ads/impl/de0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;)Lcom/yandex/mobile/ads/impl/yd0;

    move-result-object v0

    iput-object v0, v9, Lcom/yandex/mobile/ads/impl/k1;->i:Lcom/yandex/mobile/ads/impl/yd0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k1;->e:Lcom/yandex/mobile/ads/impl/j1;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k1;->e:Lcom/yandex/mobile/ads/impl/j1;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k1;->f:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/ts;->i:Lcom/yandex/mobile/ads/impl/ts;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k1;->b:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/yandex/mobile/ads/impl/l8;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k1;->i:Lcom/yandex/mobile/ads/impl/yd0;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/yd0;->c()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k1;->e:Lcom/yandex/mobile/ads/impl/j1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k1;->e:Lcom/yandex/mobile/ads/impl/j1;

    const/4 v0, 0x5

    invoke-interface {p0, v0, v2}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    new-array p0, v1, [Ljava/lang/Object;

    sget v0, Lcom/yandex/mobile/ads/impl/sp0;->b:I

    const-string v0, "args"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k1;->i:Lcom/yandex/mobile/ads/impl/yd0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yd0;->invalidate()V

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k1;->g:Lcom/yandex/mobile/ads/impl/wc0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wc0;->a()Z

    move-result p0

    return p0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k1;->e:Lcom/yandex/mobile/ads/impl/j1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/j1;->a()V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/k1;->e:Lcom/yandex/mobile/ads/impl/j1;

    invoke-interface {v2, v0}, Lcom/yandex/mobile/ads/impl/j1;->a(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k1;->c:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k1;->c:Landroid/view/Window;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k1;->c:Landroid/view/Window;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k1;->h:Lcom/yandex/mobile/ads/impl/id0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k1;->c:Landroid/view/Window;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k1;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/id0;->a(Landroid/view/Window;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public final onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k1;->d:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/q61;->destroy()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k1;->e:Lcom/yandex/mobile/ads/impl/j1;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    return-void
.end method
