.class public abstract Lcom/transsion/widgetslib/adapter/RecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field public final o:Ljava/util/List;

.field public p:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->o:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->c(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;ILjava/lang/Object;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v2, p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;->p:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$a;-><init>(Lcom/transsion/widgetslib/adapter/RecyclerAdapter;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-boolean p1, p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;->q:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$b;

    invoke-direct {p1, p0, v1, v0, p2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$b;-><init>(Lcom/transsion/widgetslib/adapter/RecyclerAdapter;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method

.method public abstract c(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;ILjava/lang/Object;)V
.end method

.method public d(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public g(Landroid/view/View;Ljava/lang/Object;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->o:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->o:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->b(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;I)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->p:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method
