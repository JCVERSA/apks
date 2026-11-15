.class public Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/database/VideoPlayList;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final o:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final p:Landroid/content/Context;

.field public q:I

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$layout;->recycle_view_item_fragment_main:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->q:I

    iput-boolean v0, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->r:Z

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->p:Landroid/content/Context;

    return-void
.end method

.method private c(Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->mCategory:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object p0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->p:Landroid/content/Context;

    sget p1, Lcom/transsion/magicvideo/R$string;->talkback_add_to_favorites:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->p:Landroid/content/Context;

    sget p1, Lcom/transsion/magicvideo/R$string;->recent_add:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p0, "VideoPlayListBucketAdapter"

    const-string p1, "convert error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_title:I

    invoke-direct {p0, p2}, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->c(Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget v1, p2, Lcom/transsion/dbdata/database/VideoPlayList;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_count:I

    iget-object v2, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->p:Landroid/content/Context;

    iget v3, p2, Lcom/transsion/dbdata/database/VideoPlayList;->count:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    sget v3, Lcom/transsion/magicvideo/R$string;->videos_num:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/transsion/magicvideo/R$string;->video_num:I

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_main_fragment_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_video_playlist_placeholder:I

    iget v2, p2, Lcom/transsion/dbdata/database/VideoPlayList;->mCategory:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_favorite_placeholder:I

    :cond_2
    if-ne v2, v4, :cond_3

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_recently_add_vd:I

    :cond_3
    iget-object v2, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->p:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v2, v1, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->p:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/database/VideoPlayList;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v5

    invoke-static {v2, v5, v1, v0}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->background_favorite_mask:I

    iget-object v1, p2, Lcom/transsion/dbdata/database/VideoPlayList;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget v1, p2, Lcom/transsion/dbdata/database/VideoPlayList;->mCategory:I

    if-ne v1, v3, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/magicvideo/R$id;->background_recent_mask:I

    iget-object v1, p2, Lcom/transsion/dbdata/database/VideoPlayList;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    iget p2, p2, Lcom/transsion/dbdata/database/VideoPlayList;->mCategory:I

    if-ne p2, v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p2, Lcom/transsion/magicvideo/R$id;->iv_more:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean p0, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->r:Z

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_6
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/database/VideoPlayList;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->r:Z

    return-void
.end method

.method public getDefItemViewType(I)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->q:I

    return p0
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1

    const/16 v0, 0x111

    if-ne p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    iget p2, p0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->q:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget p2, Lcom/transsion/magicvideo/R$layout;->recycle_view_item_fragment_main_list:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_1
    sget p2, Lcom/transsion/magicvideo/R$layout;->recycle_view_item_fragment_main:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method
