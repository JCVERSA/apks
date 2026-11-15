.class public final Lcom/yandex/mobile/ads/impl/vp;
.super Lcom/yandex/mobile/ads/impl/vg2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/vg2<",
        "Landroid/widget/TextView;",
        "Lcom/yandex/mobile/ads/impl/tp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/widget/TextView;

    .line 2
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 5
    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Lcom/yandex/mobile/ads/impl/tp;

    .line 6
    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object p0, Lcom/yandex/mobile/ads/impl/tp$a;->b:Lcom/yandex/mobile/ads/impl/tp$a;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/tp;->b()Lcom/yandex/mobile/ads/impl/tp$a;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/tp;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Lcom/yandex/mobile/ads/impl/tp;

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/tp$a;->b:Lcom/yandex/mobile/ads/impl/tp$a;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/tp;->b()Lcom/yandex/mobile/ads/impl/tp$a;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/tp;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
