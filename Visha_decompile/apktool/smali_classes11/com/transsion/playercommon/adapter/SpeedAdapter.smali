.class public Lcom/transsion/playercommon/adapter/SpeedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;,
        Lcom/transsion/playercommon/adapter/SpeedAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I

.field public p:Ljava/util/List;

.field public q:I

.field public r:I

.field public s:Lcom/transsion/playercommon/adapter/SpeedAdapter$a;


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->o:I

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->p:Ljava/util/List;

    iput p2, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->q:I

    iput p3, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->r:I

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/adapter/SpeedAdapter;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->q:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/adapter/SpeedAdapter;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->r:I

    return p0
.end method


# virtual methods
.method public d(Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->p:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/data/Speed;

    iget p0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->o:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;->b(Lcom/transsion/playercommon/data/Speed;Z)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;
    .locals 3

    new-instance p2, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$layout;->speed_item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;-><init>(Lcom/transsion/playercommon/adapter/SpeedAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->p:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public h(Lcom/transsion/playercommon/adapter/SpeedAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->s:Lcom/transsion/playercommon/adapter/SpeedAdapter$a;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/SpeedAdapter;->d(Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/SpeedAdapter;->g(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/adapter/SpeedAdapter$SelectViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public s(F)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->p:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/adapter/SpeedAdapter;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/data/Speed;

    invoke-virtual {v1}, Lcom/transsion/playercommon/data/Speed;->getSpV()F

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/adapter/SpeedAdapter;->r(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/SpeedAdapter;->r(I)V

    :cond_2
    return-void
.end method
