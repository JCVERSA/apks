.class public Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->l(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->m(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->firstCurData:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->m(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->secondCurData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->g(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->g(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->K()V

    const/4 p1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->j(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->r(I)V

    goto :goto_4

    :cond_1
    move v1, p1

    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v3}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->g(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v3}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->g(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-boolean v4, v3, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-eqz v4, :cond_3

    iget v3, v3, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    iget v4, v0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    move v3, p1

    goto :goto_3

    :cond_3
    iget-object v3, v3, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v2}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->j(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->r(I)V

    move v2, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_4
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->j(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v2}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->g(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->p(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->k(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->k(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2$1;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;->a(Ljava/util/List;)V

    return-void
.end method
