.class public final Lcom/yandex/mobile/ads/impl/yq0;
.super Lcom/yandex/mobile/ads/impl/ky;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/ky<",
        "Lcom/yandex/mobile/ads/impl/iy$f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ky;-><init>(Landroid/view/View;)V

    sget v0, Lcom/yandex/mobile/ads/R$id;->item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/yq0;->a:Landroid/widget/TextView;

    sget v0, Lcom/yandex/mobile/ads/R$id;->item_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/yq0;->b:Landroid/widget/TextView;

    sget v0, Lcom/yandex/mobile/ads/R$id;->item_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yq0;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/iy;)V
    .locals 6

    check-cast p1, Lcom/yandex/mobile/ads/impl/iy$f;

    const-string v0, "unit"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$f;->b()Lcom/yandex/mobile/ads/impl/cy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$f;->c()Lcom/yandex/mobile/ads/impl/zw;

    move-result-object p1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/yq0;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/yq0;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yq0;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/cy;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yq0;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yq0;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/cy;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/cy;->a()I

    move-result v0

    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/oh;->a(Landroid/content/Context;I)I

    move-result v0

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/yq0;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/cy;->b()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yq0;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yq0;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yq0;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yq0;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zw;->a()I

    move-result p1

    invoke-static {v2, p1}, Lcom/yandex/mobile/ads/impl/oh;->a(Landroid/content/Context;I)I

    move-result p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yq0;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yq0;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method
