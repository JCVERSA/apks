.class public final Lcom/yandex/div/core/view2/errors/VariableAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/errors/VariableAdapter$a;,
        Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;
    }
.end annotation


# instance fields
.field public final o:Lu74;


# direct methods
.method public constructor <init>(Lu74;)V
    .locals 1

    const-string v0, "variableMutator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/errors/VariableAdapter$a;

    invoke-direct {v0}, Lcom/yandex/div/core/view2/errors/VariableAdapter$a;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/VariableAdapter;->o:Lu74;

    return-void
.end method


# virtual methods
.method public b(Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "currentList[position]"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lynb;

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;->b(Lynb;)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;

    new-instance v0, Lcom/yandex/div/core/view2/errors/VariableView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/yandex/div/core/view2/errors/VariableView;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/VariableAdapter;->o:Lu74;

    invoke-direct {p2, v0, p0}, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;-><init>(Lcom/yandex/div/core/view2/errors/VariableView;Lu74;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/errors/VariableAdapter;->b(Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/errors/VariableAdapter;->c(Landroid/view/ViewGroup;I)Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;

    move-result-object p0

    return-object p0
.end method
