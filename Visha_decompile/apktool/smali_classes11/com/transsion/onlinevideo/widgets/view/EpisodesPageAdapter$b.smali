.class public Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public p:Landroidx/recyclerview/widget/RecyclerView;

.field public q:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

.field public final synthetic r:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;->r:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_episodes_page:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;->p:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-static {p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->b(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-static {p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->b(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0, v0}, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object p2, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;->q:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;->q:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    new-instance p2, Lub3;

    invoke-direct {p2, p0}, Lub3;-><init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;->c(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;->q:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic c(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;->r:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;

    invoke-static {p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->c(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;)Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;->r:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;

    invoke-static {p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->c(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;)Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$a;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;->q:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$a;->a(Ljava/util/List;I)V

    :cond_0
    return-void
.end method
