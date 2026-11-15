.class public Lcom/transsion/magicvideo/adapter/ShortVideosAdapter;
.super Lcom/transsion/magicvideo/adapter/BucketDateAdapter;
.source "SourceFile"


# instance fields
.field public P:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$layout;->rv_item_top_short_video_list:I

    invoke-direct {p0, v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/ShortVideosAdapter;->P:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/ShortVideosAdapter;->P:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method


# virtual methods
.method public f0(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 8

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_bucket_fragment_item:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42c40000    # 98.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x430b0000    # 139.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->H(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    sget v2, Lcom/transsion/magicvideo/R$id;->lottie_layer_view_grid:I

    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_duration:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-wide v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-wide v5, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v5, v6}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-wide v5, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v2, v5, v6}, Lwna;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/adapter/ShortVideosAdapter;->P:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    iget-object v5, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v1, v2, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/magicvideo/adapter/ShortVideosAdapter;->P:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/transsion/magicvideo/adapter/ShortVideosAdapter;->P:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v5, v0}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox_grid:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    sget v2, Lcom/transsion/magicvideo/R$id;->iv_more:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget v6, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->r:I

    const/16 v7, 0xf

    if-eq v6, v7, :cond_3

    const/16 v7, 0x11

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_2
    sget p0, Lcom/transsion/magicvideo/R$id;->iv_favorite:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltpb;->T(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/magicvideo/R$id;->iv_logo:I

    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/magicvideo/R$id;->iv_new:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, p2}, Ltpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    filled-new-array {v2}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2

    const/16 v0, 0x111

    if-ne p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget p2, Lcom/transsion/magicvideo/R$layout;->rv_item_fragment_video_list:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->v(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    sget p2, Lcom/transsion/magicvideo/R$layout;->rv_item_fragment_date:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->v(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    iget p2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    if-ne p2, v0, :cond_3

    sget p2, Lcom/transsion/magicvideo/R$layout;->item_native_ad_layout_list:I

    goto :goto_0

    :cond_3
    sget p2, Lcom/transsion/magicvideo/R$layout;->item_native_ad_layout_grd_list:I

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->v(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_4
    sget p2, Lcom/transsion/magicvideo/R$layout;->rv_item_fragment_video_grid_list:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->v(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method
