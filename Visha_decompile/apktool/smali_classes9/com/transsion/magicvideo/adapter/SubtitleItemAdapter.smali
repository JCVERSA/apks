.class public Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    sget p1, Lcom/transsion/magicvideo/R$layout;->video_subtitle_item:I

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V
    .locals 7

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_subtitle:I

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_subtitle_local:I

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    const-string v2, "UNSELECTED_ITEM_TAG"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {}, Lpp3;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/transsion/magicvideo/R$id;->tv_subtitle_name:I

    iget-boolean v3, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$id;->cb_subtitle:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_2

    :cond_2
    sget v2, Lcom/transsion/magicvideo/R$id;->tv_subtitle_name:I

    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$id;->cb_subtitle:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_2
    sget v2, Lcom/transsion/magicvideo/R$id;->iv_subtitle_arrow:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-boolean v3, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->showArrow:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v2, Lcom/transsion/magicvideo/R$id;->cb_subtitle:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v6, p0, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->p:Z

    if-nez v6, :cond_6

    iget-boolean v6, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->showArrow:Z

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v6, v5

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v4

    :goto_5
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->q:Z

    if-nez v3, :cond_8

    iget-boolean p2, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-nez p2, :cond_8

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v4, v5

    :cond_8
    :goto_6
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget p0, p0, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->o:I

    if-ne p1, p0, :cond_9

    const/4 v5, 0x1

    :cond_9
    invoke-virtual {p2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->q:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->p:Z

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->o:I

    return-void
.end method
