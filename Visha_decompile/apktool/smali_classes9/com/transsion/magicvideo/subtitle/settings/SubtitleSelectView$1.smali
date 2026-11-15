.class public Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->f(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->g(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->firstCurData:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->g(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->secondCurData:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lpp3;->j()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->h0()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v3}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lpp3;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->i(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)V

    const/4 p1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->d(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->r(I)V

    goto :goto_5

    :cond_4
    move v1, p1

    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v4}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v4}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-boolean v5, v4, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-eqz v5, :cond_6

    iget v4, v4, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    iget v5, v0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    if-ne v4, v5, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, p1

    goto :goto_4

    :cond_6
    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    :goto_4
    if-eqz v4, :cond_7

    iget-object v3, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v3}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->d(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->r(I)V

    move v3, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    move p1, v3

    :goto_5
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->d(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->e(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->e(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1$1;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a(Ljava/util/List;)V

    return-void
.end method
