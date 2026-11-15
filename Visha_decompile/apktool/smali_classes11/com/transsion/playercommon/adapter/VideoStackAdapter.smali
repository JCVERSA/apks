.class public Lcom/transsion/playercommon/adapter/VideoStackAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;
    }
.end annotation


# instance fields
.field public o:Landroid/content/Context;

.field public p:I

.field public q:Ljava/util/ArrayList;


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter;->p:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    check-cast p1, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;

    iget-object v0, p1, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;->p:Landroid/widget/RelativeLayout;

    iget-object v0, p1, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;->q:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;->r:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;->s:Lcom/transsion/widgets/BadgeView;

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v3, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter;->o:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$drawable;->main_fragment_placeholder:I

    iget-object v5, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter;->o:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v5

    invoke-static {v4, v5, v3, v0}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    iget-wide v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v5, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v5, v6}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez p2, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {p1, p0}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    const/4 p2, 0x2

    if-le p0, p2, :cond_1

    const/high16 p0, 0x40a00000    # 5.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/playercommon/R$layout;->item_video_stack_grid:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/playercommon/R$layout;->item_video_stack_list:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;-><init>(Lcom/transsion/playercommon/adapter/VideoStackAdapter;Landroid/view/View;)V

    return-object p2
.end method
