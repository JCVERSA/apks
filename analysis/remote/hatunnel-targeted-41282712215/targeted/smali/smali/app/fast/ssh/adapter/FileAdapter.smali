.class public Lapp/fast/ssh/adapter/FileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;,
        Lapp/fast/ssh/adapter/FileAdapter$ImportItem;,
        Lapp/fast/ssh/adapter/FileAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private itemClickListener:Lapp/fast/ssh/adapter/FileAdapter$OnItemClickListener;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/fast/ssh/adapter/FileAdapter$ImportItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lapp/fast/ssh/adapter/FileAdapter$ImportItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/adapter/FileAdapter;->itemList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/adapter/FileAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method synthetic lambda$onBindViewHolder$0$app-fast-ssh-adapter-FileAdapter(ILandroid/view/View;)V
    .locals 0

    .prologue
    iget-object p2, p0, Lapp/fast/ssh/adapter/FileAdapter;->itemClickListener:Lapp/fast/ssh/adapter/FileAdapter$OnItemClickListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lapp/fast/ssh/adapter/FileAdapter$OnItemClickListener;->onClick(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lapp/fast/ssh/adapter/FileAdapter;->onBindViewHolder(Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;I)V
    .locals 2

    iget-object v0, p1, Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lapp/fast/ssh/adapter/FileAdapter;->itemList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/fast/ssh/adapter/FileAdapter$ImportItem;

    iget v1, v1, Lapp/fast/ssh/adapter/FileAdapter$ImportItem;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;->file_name:Landroid/widget/TextView;

    iget-object v1, p0, Lapp/fast/ssh/adapter/FileAdapter;->itemList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/fast/ssh/adapter/FileAdapter$ImportItem;

    iget-object v1, v1, Lapp/fast/ssh/adapter/FileAdapter$ImportItem;->file_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;->view:Landroid/view/View;

    new-instance v0, Lapp/fast/ssh/adapter/FileAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lapp/fast/ssh/adapter/FileAdapter$$ExternalSyntheticLambda0;-><init>(Lapp/fast/ssh/adapter/FileAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lapp/fast/ssh/adapter/FileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0046

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lapp/fast/ssh/adapter/FileAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setItemClickListener(Lapp/fast/ssh/adapter/FileAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/adapter/FileAdapter;->itemClickListener:Lapp/fast/ssh/adapter/FileAdapter$OnItemClickListener;

    return-void
.end method
