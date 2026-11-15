.class public final Lcom/yandex/mobile/ads/impl/qw;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/yandex/mobile/ads/impl/iy;",
        "Lcom/yandex/mobile/ads/impl/ky<",
        "Lcom/yandex/mobile/ads/impl/iy;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/hh2;

.field private final b:Lcom/yandex/mobile/ads/impl/vh2;


# direct methods
.method public constructor <init>(Le74;Lcom/yandex/mobile/ads/impl/lx;Lcom/yandex/mobile/ads/impl/hh2;Lcom/yandex/mobile/ads/impl/vh2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            "Lcom/yandex/mobile/ads/impl/lx;",
            "Lcom/yandex/mobile/ads/impl/hh2;",
            "Lcom/yandex/mobile/ads/impl/vh2;",
            ")V"
        }
    .end annotation

    const-string v0, "onAction"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageLoader"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolderMapper"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewTypeMapper"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/gx;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/gx;-><init>()V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qw;->a:Lcom/yandex/mobile/ads/impl/hh2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/qw;->b:Lcom/yandex/mobile/ads/impl/vh2;

    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/iy;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qw;->b:Lcom/yandex/mobile/ads/impl/vh2;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "viewHolder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/iy$c;

    if-eqz p0, :cond_0

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_action_button:I

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/iy$h;

    if-eqz p0, :cond_1

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_switch:I

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/iy$d;

    if-eqz p0, :cond_2

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_divider:I

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/iy$e;

    if-eqz p0, :cond_3

    sget p0, Lcom/yandex/mobile/ads/R$layout;->deubg_panel_item_header:I

    goto :goto_0

    :cond_3
    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/iy$f;

    if-eqz p0, :cond_4

    sget p0, Lcom/yandex/mobile/ads/R$layout;->deubg_panel_item_key_value:I

    goto :goto_0

    :cond_4
    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/iy$g;

    if-eqz p0, :cond_5

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_mediation_adapter:I

    goto :goto_0

    :cond_5
    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/iy$b;

    if-eqz p0, :cond_6

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_ad_units:I

    goto :goto_0

    :cond_6
    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/iy$a;

    if-eqz p0, :cond_7

    sget p0, Lcom/yandex/mobile/ads/R$layout;->debug_panel_item_ad_unit:I

    :goto_0
    return p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/yandex/mobile/ads/impl/ky;

    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/iy;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ky;->a(Lcom/yandex/mobile/ads/impl/iy;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qw;->a:Lcom/yandex/mobile/ads/impl/hh2;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hh2;->a(Landroid/view/View;I)Lcom/yandex/mobile/ads/impl/ky;

    move-result-object p0

    return-object p0
.end method
