.class public Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;,
        Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final o:Landroid/content/Context;

.field public p:Ljava/util/List;

.field public q:I

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;

.field public t:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->q:I

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->s:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;

    sget p2, Lcom/transsion/sniffer_load/R$drawable;->multi_web_item_bg:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->r:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->r:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->s:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;

    return-object p0
.end method


# virtual methods
.method public d(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->p:Ljava/util/List;

    if-eqz v0, :cond_4

    if-ltz p2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->p:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    iget v1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->q:I

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->f(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;Z)V

    iget v1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->q:I

    if-ne p2, v1, :cond_2

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->t:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;

    :cond_2
    invoke-static {p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->e(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->title:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->icon:[B

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->c(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_default_web_icon:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->o:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    iget-object v1, v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->icon:[B

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->c(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->o:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    iget-object p2, v0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->previewBitmap:[B

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p2, Lcom/transsion/sniffer_load/R$color;->os_fill_icon_primary_color:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-static {p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;->d(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_4
    :goto_2
    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/sniffer_load/R$layout;->multi_web_adapter:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;-><init>(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->p:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public h(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->p:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->p:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->d(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->g(Landroid/view/ViewGroup;I)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public r(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iput v1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->q:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->q:I

    iput p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->q:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    return-void
.end method

.method public s(Ljava/util/List;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->h(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    iput v0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->q:I

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->q:I

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
