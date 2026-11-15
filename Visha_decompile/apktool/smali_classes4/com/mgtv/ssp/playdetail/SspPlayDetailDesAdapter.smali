.class public Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mgtv/ssp/adapter/BaseHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoDetailInfoBean$InfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mgtv/ssp/adapter/BaseHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iget-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;->b:Landroid/view/LayoutInflater;

    sget v0, Lcom/mgtv/ssp/R$layout;->item_video_info_desc:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter$a;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/mgtv/ssp/adapter/BaseHolder;I)V
    .locals 1
    .param p1    # Lcom/mgtv/ssp/adapter/BaseHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;->a:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean$InfoBean;

    if-eqz p0, :cond_0

    .line 7
    check-cast p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter$a;

    iget-object p1, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter$a;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean$InfoBean;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean$InfoBean;->val:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoDetailInfoBean$InfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;->a:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/mgtv/ssp/adapter/BaseHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;->a(Lcom/mgtv/ssp/adapter/BaseHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;->a(Landroid/view/ViewGroup;I)Lcom/mgtv/ssp/adapter/BaseHolder;

    move-result-object p0

    return-object p0
.end method
