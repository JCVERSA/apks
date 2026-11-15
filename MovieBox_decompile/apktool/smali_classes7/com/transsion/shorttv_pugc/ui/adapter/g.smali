.class public final Lcom/transsion/shorttv_pugc/ui/adapter/g;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

.field private f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:I

.field private final k:I


# direct methods
.method public constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->f:Z

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean p5, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->i:Z

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->j:I

    .line 21
    .line 22
    sget p1, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_item_video:I

    .line 23
    .line 24
    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->k:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/g;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/adapter/g;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/shorttv_pugc/utils/e;->c:Lcom/transsion/shorttv_pugc/utils/e$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/utils/e$a;->a()Lcom/transsion/shorttv_pugc/utils/e;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/utils/e;->d()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/Collection;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/utils/e$a;->a()Lcom/transsion/shorttv_pugc/utils/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/utils/e;->d()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    const/4 p2, -0x1

    .line 48
    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 55
    .line 56
    invoke-direct {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 11

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/transsion/shorttv/R$id;->view_video_item:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    move-object v0, p1

    .line 18
    check-cast v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    move-object v3, p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    iget-boolean v4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->f:Z

    .line 41
    .line 42
    iget-object v5, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->g:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->h:Ljava/lang/String;

    .line 45
    .line 46
    iget-boolean v8, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->i:Z

    .line 47
    .line 48
    const/16 v9, 0x40

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    move-object v1, p2

    .line 53
    invoke-static/range {v0 .. v10}, Lcom/transsion/shorttv_pugc/ui/widget/a$a;->a(Lcom/transsion/shorttv_pugc/ui/widget/a;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/util/List;)V
    .locals 9

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "payloads"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    sget v0, Lcom/transsion/shorttv/R$id;->view_video_item:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    move-object v0, p1

    .line 30
    check-cast v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 31
    .line 32
    instance-of p1, p3, Ljava/lang/Integer;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    move-object v3, p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 p1, 0x0

    .line 55
    goto :goto_0

    .line 56
    :goto_1
    iget-boolean v4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->f:Z

    .line 57
    .line 58
    iget-object v5, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->g:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v6, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->h:Ljava/lang/String;

    .line 61
    .line 62
    const/4 v7, 0x1

    .line 63
    iget-boolean v8, p0, Lcom/transsion/shorttv_pugc/ui/adapter/g;->i:Z

    .line 64
    .line 65
    move-object v1, p2

    .line 66
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setData(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    instance-of p1, p3, Ljava/lang/Boolean;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->updateLockState(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_2
    return-void
.end method
