.class public Lcom/transsion/playercommon/adapter/CustomViewAdapter2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/adapter/CustomViewAdapter2$a;,
        Lcom/transsion/playercommon/adapter/CustomViewAdapter2$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/playercommon/adapter/CustomViewAdapter2$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Ljava/util/List;

.field public p:Lcom/transsion/playercommon/adapter/CustomViewAdapter2$a;

.field public q:I

.field public final r:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(ILcom/transsion/playercommon/adapter/CustomViewAdapter2$a;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->o:Ljava/util/List;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->r:Landroid/util/SparseArray;

    .line 8
    iput p1, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->q:I

    .line 9
    iput-object p2, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->p:Lcom/transsion/playercommon/adapter/CustomViewAdapter2$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->o:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->r:Landroid/util/SparseArray;

    .line 4
    iput-object p1, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b(Lcom/transsion/playercommon/adapter/CustomViewAdapter2$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/adapter/CustomViewAdapter2$ViewHolder;
    .locals 0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->p:Lcom/transsion/playercommon/adapter/CustomViewAdapter2$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->r:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->p:Lcom/transsion/playercommon/adapter/CustomViewAdapter2$a;

    invoke-interface {p1, p2}, Lcom/transsion/playercommon/adapter/CustomViewAdapter2$a;->a(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->r:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->o:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    :cond_1
    :goto_0
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p0, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    new-instance p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2$ViewHolder;

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/adapter/CustomViewAdapter2$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->p:Lcom/transsion/playercommon/adapter/CustomViewAdapter2$a;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->q:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/adapter/CustomViewAdapter2$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->b(Lcom/transsion/playercommon/adapter/CustomViewAdapter2$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;->c(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/adapter/CustomViewAdapter2$ViewHolder;

    move-result-object p0

    return-object p0
.end method
