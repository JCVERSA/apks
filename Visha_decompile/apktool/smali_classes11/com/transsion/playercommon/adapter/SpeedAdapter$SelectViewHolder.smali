.class public final Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/adapter/SpeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SelectViewHolder"
.end annotation


# instance fields
.field public p:Landroid/widget/TextView;

.field public q:Landroid/view/View;

.field public final synthetic r:Lcom/transsion/playercommon/adapter/SpeedAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/SpeedAdapter;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;->r:Lcom/transsion/playercommon/adapter/SpeedAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/playercommon/R$id;->tv_speed:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;->p:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/transsion/playercommon/adapter/SpeedAdapter;->c(Lcom/transsion/playercommon/adapter/SpeedAdapter;)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget v0, Lcom/transsion/playercommon/R$id;->fl_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;->q:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/playercommon/adapter/SpeedAdapter;->b(Lcom/transsion/playercommon/adapter/SpeedAdapter;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance p1, Luu9;

    invoke-direct {p1, p0}, Luu9;-><init>(Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/transsion/playercommon/data/Speed;Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/Speed;->getSpS()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;->p:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    sget v0, Lcom/transsion/playercommon/R$style;->text_medium_back_font:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$style;->text_regular_font:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;->q:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;->r:Lcom/transsion/playercommon/adapter/SpeedAdapter;

    iget-object p1, p1, Lcom/transsion/playercommon/adapter/SpeedAdapter;->s:Lcom/transsion/playercommon/adapter/SpeedAdapter$a;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/playercommon/adapter/SpeedAdapter$a;->onItemClick(I)V

    :cond_0
    return-void
.end method
