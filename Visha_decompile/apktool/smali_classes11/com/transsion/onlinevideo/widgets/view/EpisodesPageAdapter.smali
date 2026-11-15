.class public Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;,
        Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Landroid/content/Context;

.field public p:Ljava/util/List;

.field public q:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->p:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->o:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;)Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->q:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$a;

    return-object p0
.end method


# virtual methods
.method public d(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->p:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;->b(Ljava/util/List;)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;
    .locals 2

    iget-object p2, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->o:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/onlinevideo/R$layout;->item_episodes_page:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;-><init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->d(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->g(Landroid/view/ViewGroup;I)Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$b;

    move-result-object p0

    return-object p0
.end method

.method public setOnEpisodeClickListener(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->q:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$a;

    return-void
.end method
