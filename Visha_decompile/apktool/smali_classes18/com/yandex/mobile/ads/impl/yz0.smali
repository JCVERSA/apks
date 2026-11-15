.class public final Lcom/yandex/mobile/ads/impl/yz0;
.super Lcom/yandex/mobile/ads/impl/ky;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/ky<",
        "Lcom/yandex/mobile/ads/impl/iy$g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/lx;

.field private final b:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field private final c:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field private d:Ljn5;

.field private final e:Landroid/widget/LinearLayout;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/lx;Le74;Le74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/yandex/mobile/ads/impl/lx;",
            "Le74;",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNetworkClick"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onWaringButtonClick"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ky;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yz0;->a:Lcom/yandex/mobile/ads/impl/lx;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yz0;->b:Le74;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/yz0;->c:Le74;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_mediation_adapter:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yz0;->e:Landroid/widget/LinearLayout;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yz0;->f:Landroid/widget/ImageView;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yz0;->g:Landroid/widget/TextView;

    sget p2, Lcom/yandex/mobile/ads/R$id;->navigation_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yz0;->h:Landroid/widget/ImageView;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_info_first:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yz0;->i:Landroid/widget/TextView;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_info_second:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yz0;->j:Landroid/widget/TextView;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_warning_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yz0;->k:Landroid/widget/ImageView;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/yz0;Lcom/yandex/mobile/ads/impl/iy$g;Landroid/view/View;)V
    .locals 0

    .line 30
    const-string p2, "this$0"

    invoke-static {p0, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$unit"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yz0;->c:Le74;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$g;->j()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/yz0;Lcom/yandex/mobile/ads/impl/iy$g;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$unit"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yz0;->b:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/yz0;Lcom/yandex/mobile/ads/impl/iy$g;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/yz0;->b(Lcom/yandex/mobile/ads/impl/yz0;Lcom/yandex/mobile/ads/impl/iy$g;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/yz0;Lcom/yandex/mobile/ads/impl/iy$g;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/yz0;->a(Lcom/yandex/mobile/ads/impl/yz0;Lcom/yandex/mobile/ads/impl/iy$g;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/iy$g;)V
    .locals 8

    .line 1
    const-string v0, "unit"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yz0;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$g;->c()Lcom/yandex/mobile/ads/impl/cy;

    move-result-object v1

    const-string v2, "getContext(...)"

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 5
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/yz0;->i:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/yz0;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/cy;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/yz0;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/cy;->c()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 8
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/yz0;->i:Landroid/widget/TextView;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/cy;->a()I

    move-result v7

    invoke-static {v6, v7}, Lcom/yandex/mobile/ads/impl/oh;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/yz0;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/cy;->b()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v5, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yz0;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$g;->d()Lcom/yandex/mobile/ads/impl/zw;

    move-result-object v1

    .line 12
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/yz0;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zw;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/yz0;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zw;->b()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yz0;->j:Landroid/widget/TextView;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zw;->a()I

    move-result v1

    invoke-static {v5, v1}, Lcom/yandex/mobile/ads/impl/oh;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yz0;->e:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$g;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$g;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v4

    .line 17
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 18
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$g;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yz0;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yz0;->e:Landroid/widget/LinearLayout;

    new-instance v1, Llyd;

    invoke-direct {v1, p0, p1}, Llyd;-><init>(Lcom/yandex/mobile/ads/impl/yz0;Lcom/yandex/mobile/ads/impl/iy$g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 21
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yz0;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    :goto_4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yz0;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yz0;->d:Ljn5;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljn5;->cancel()V

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yz0;->a:Lcom/yandex/mobile/ads/impl/lx;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$g;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, ""

    :cond_8
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/yz0;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/lx;->a(Ljava/lang/String;Landroid/widget/ImageView;)Ljn5;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/yz0;->d:Ljn5;

    .line 25
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$g;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 26
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yz0;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yz0;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lmyd;

    invoke-direct {v1, p0, p1}, Lmyd;-><init>(Lcom/yandex/mobile/ads/impl/yz0;Lcom/yandex/mobile/ads/impl/iy$g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 28
    :cond_9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yz0;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public final bridge synthetic a(Lcom/yandex/mobile/ads/impl/iy;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/yandex/mobile/ads/impl/iy$g;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/yz0;->a(Lcom/yandex/mobile/ads/impl/iy$g;)V

    return-void
.end method
