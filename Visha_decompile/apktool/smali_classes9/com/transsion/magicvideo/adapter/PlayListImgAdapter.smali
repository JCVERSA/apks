.class public Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$layout;->item_video_play_list_img:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder_night:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;->o:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;->o:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 11

    instance-of v0, p2, Lcom/transsion/dbdata/beans/media/JumpMediaItem;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    check-cast p2, Lcom/transsion/dbdata/beans/media/JumpMediaItem;

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_slogo:I

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_grad_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_farvorite:I

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xd8d8d9

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget-boolean v0, Lpp3;->c:Z

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_slogo:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lc39;->h(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_slogo:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/magicvideo/R$drawable;->ic_videos_pre:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/magicvideo/R$drawable;->list_img_visha1:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_2
    sget p0, Lcom/transsion/magicvideo/R$id;->tv_slogo:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/JumpMediaItem;->getJumpBean()Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->getBottom_content()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void

    :cond_3
    sget v0, Lcom/transsion/magicvideo/R$id;->ll_slogo:I

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder_night:I

    iget-object v5, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;->o:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getCoverUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getCoverUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v10, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-wide/16 v7, 0x0

    iget-object v9, p0, Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;->o:Landroid/graphics/drawable/Drawable;

    invoke-static/range {v5 .. v10}, Lz7c;->a(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_5
    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    iget v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v10, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v10, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v4

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v4, p0, v10}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    :cond_7
    :goto_2
    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    return-void

    :cond_8
    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    move v2, v3

    :goto_3
    sget p0, Lcom/transsion/magicvideo/R$id;->iv_grad_cover:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    move v1, v3

    :cond_a
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget p0, Lcom/transsion/magicvideo/R$id;->iv_farvorite:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ltpb;->T(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method
