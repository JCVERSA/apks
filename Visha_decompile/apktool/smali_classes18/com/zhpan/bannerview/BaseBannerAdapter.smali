.class public abstract Lcom/zhpan/bannerview/BaseBannerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhpan/bannerview/BaseBannerAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zhpan/bannerview/BaseViewHolder<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public o:Ljava/util/List;

.field public p:Z

.field public q:Lcom/zhpan/bannerview/BaseBannerAdapter$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->o:Ljava/util/List;

    return-void
.end method

.method public static synthetic b(Lcom/zhpan/bannerview/BaseBannerAdapter;Lcom/zhpan/bannerview/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zhpan/bannerview/BaseBannerAdapter;->s(Lcom/zhpan/bannerview/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract c(Lcom/zhpan/bannerview/BaseViewHolder;Ljava/lang/Object;II)V
.end method

.method public d(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/zhpan/bannerview/BaseViewHolder;
    .locals 0

    new-instance p0, Lcom/zhpan/bannerview/BaseViewHolder;

    invoke-direct {p0, p2}, Lcom/zhpan/bannerview/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public g()I
    .locals 0

    iget-object p0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getData()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->o:Ljava/util/List;

    return-object p0
.end method

.method public final getItemCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 p0, 0x3e8

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v0

    invoke-static {p1, v0}, Lv70;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->r(I)I

    move-result p0

    return p0
.end method

.method public abstract getLayoutId(I)I
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/zhpan/bannerview/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zhpan/bannerview/BaseBannerAdapter;->t(Lcom/zhpan/bannerview/BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zhpan/bannerview/BaseBannerAdapter;->u(Landroid/view/ViewGroup;I)Lcom/zhpan/bannerview/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public r(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic s(Lcom/zhpan/bannerview/BaseViewHolder;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->q:Lcom/zhpan/bannerview/BaseBannerAdapter$a;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v0

    invoke-static {p1, v0}, Lv70;->c(II)I

    move-result v0

    iget-object p0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->q:Lcom/zhpan/bannerview/BaseBannerAdapter$a;

    invoke-interface {p0, p2, v0, p1}, Lcom/zhpan/bannerview/BaseBannerAdapter$a;->a(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public final t(Lcom/zhpan/bannerview/BaseViewHolder;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v0

    invoke-static {p2, v0}, Lv70;->c(II)I

    move-result p2

    iget-object v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->o:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->c(Lcom/zhpan/bannerview/BaseViewHolder;Ljava/lang/Object;II)V

    return-void
.end method

.method public final u(Landroid/view/ViewGroup;I)Lcom/zhpan/bannerview/BaseViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getLayoutId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zhpan/bannerview/BaseBannerAdapter;->d(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/zhpan/bannerview/BaseViewHolder;

    move-result-object p1

    new-instance p2, Ld90;

    invoke-direct {p2, p0, p1}, Ld90;-><init>(Lcom/zhpan/bannerview/BaseBannerAdapter;Lcom/zhpan/bannerview/BaseViewHolder;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->p:Z

    return-void
.end method

.method public w(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public x(Lcom/zhpan/bannerview/BaseBannerAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->q:Lcom/zhpan/bannerview/BaseBannerAdapter$a;

    return-void
.end method
