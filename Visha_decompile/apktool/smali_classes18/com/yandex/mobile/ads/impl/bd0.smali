.class public final Lcom/yandex/mobile/ads/impl/bd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gs;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rp;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rp;)V
    .locals 1

    const-string v0, "closeButtonController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bd0;->a:Lcom/yandex/mobile/ads/impl/rp;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/pd0;Lcom/yandex/mobile/ads/impl/o8;)Landroid/widget/RelativeLayout;
    .locals 4

    .line 1
    const-string v0, "contentView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    .line 5
    const-string v2, "context"

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {v2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-static {p2, p1}, Lcom/yandex/mobile/ads/impl/m8;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/pd0;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bd0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->d()Landroid/view/View;

    move-result-object p0

    .line 13
    invoke-virtual {v2, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method public final a()V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bd0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->a()V

    return-void
.end method

.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 16
    const-string p0, "rootLayout"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object p0, Lcom/yandex/mobile/ads/impl/l8;->b:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bd0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/rp;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bd0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->b()V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bd0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->c()V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bd0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->invalidate()V

    return-void
.end method
