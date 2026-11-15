.class public Lcom/transsion/video_edit/ThumbAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I

.field public p:I

.field public q:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbAdapter;->q:Ljava/util/List;

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {p1, v0}, Le39;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/transsion/video_edit/ThumbAdapter;->o:I

    invoke-static {p1, v0}, Le39;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/transsion/video_edit/ThumbAdapter;->p:I

    return-void
.end method


# virtual methods
.method public b(Lwia;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbAdapter;->q:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public c(Lwia;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbAdapter;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/video_edit/ThumbAdapter;->b(Lwia;I)V

    return-void
.end method

.method public g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbAdapter;->q:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbAdapter;->q:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbAdapter;->q:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/video_edit/ThumbAdapter;->s(Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/video_edit/ThumbAdapter;->t(Landroid/view/ViewGroup;I)Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public r(I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbAdapter;->q:Ljava/util/List;

    return-void
.end method

.method public s(Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbAdapter;->q:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwia;

    invoke-virtual {p1, p0}, Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;->a(Lwia;)V

    return-void
.end method

.method public t(Landroid/view/ViewGroup;I)Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;
    .locals 5

    new-instance v0, Lcom/transsion/video_edit/ThumbnailsImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/video_edit/ThumbnailsImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/transsion/video_edit/ThumbAdapter;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwia;

    iget p2, p0, Lcom/transsion/video_edit/ThumbAdapter;->o:I

    int-to-long v1, p2

    invoke-virtual {p1}, Lwia;->c()J

    move-result-wide v3

    mul-long/2addr v1, v3

    long-to-float p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p2, v1

    invoke-virtual {p1}, Lwia;->b()J

    move-result-wide v1

    long-to-float p1, v1

    div-float/2addr p2, p1

    float-to-int p1, p2

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget p0, p0, Lcom/transsion/video_edit/ThumbAdapter;->p:I

    invoke-direct {p2, p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance p0, Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;

    invoke-direct {p0, v0}, Lcom/transsion/video_edit/ThumbAdapter$ThumbnailsViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
