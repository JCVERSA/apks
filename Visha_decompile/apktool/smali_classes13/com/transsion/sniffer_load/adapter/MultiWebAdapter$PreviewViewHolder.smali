.class public Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewViewHolder"
.end annotation


# instance fields
.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/ImageView;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/widget/TextView;

.field public t:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public u:Landroid/widget/FrameLayout;

.field public final synthetic v:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->v:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_web_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->p:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_close:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->q:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_web_preview:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->r:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->s:Landroid/widget/TextView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->cl_content_parent:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/transsion/sniffer_load/R$id;->fl_item_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->u:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder$a;-><init>(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->q:Landroid/widget/ImageView;

    new-instance p2, Lws6;

    invoke-direct {p2, p0}, Lws6;-><init>(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->u:Landroid/widget/FrameLayout;

    new-instance p2, Lxs6;

    invoke-direct {p2, p0}, Lxs6;-><init>(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->g(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->p:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->r:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->h(Z)V

    return-void
.end method

.method private h(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->u:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->v:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    invoke-static {p0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->b(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->u:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->v:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    invoke-static {p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->c(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->v:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    invoke-static {p0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->c(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic g(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->v:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    invoke-static {p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->c(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->v:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    invoke-static {p0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->c(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;->onItemClick(I)V

    :cond_0
    return-void
.end method
