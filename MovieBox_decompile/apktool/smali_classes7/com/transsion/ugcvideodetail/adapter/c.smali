.class public final Lcom/transsion/ugcvideodetail/adapter/c;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:I


# direct methods
.method public constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "trackId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/adapter/c;->e:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/adapter/c;->f:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/adapter/c;->g:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/transsion/ugcvideodetail/adapter/c;->h:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/transsion/ugcvideodetail/adapter/c;->i:I

    .line 24
    .line 25
    sget p1, Lcom/transsion/ugcvideodetail/R$layout;->item_ugc_imm_video_detail:I

    .line 26
    .line 27
    iput p1, p0, Lcom/transsion/ugcvideodetail/adapter/c;->j:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/adapter/c;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/adapter/c;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ugcvideodetail/adapter/c;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ugcvideodetail/adapter/c;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V
    .locals 7

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
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->viewImmVideoItem:I

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
    check-cast v0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    move-object v1, p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/adapter/c;->e:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/adapter/c;->f:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/transsion/ugcvideodetail/adapter/c;->g:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/adapter/c;->h:Ljava/lang/String;

    .line 45
    .line 46
    move-object v6, p2

    .line 47
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setData(Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;Ljava/util/List;)V
    .locals 1

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
    move-result-object p2

    .line 23
    sget p3, Lcom/transsion/ugcvideodetail/R$id;->viewImmVideoItem:I

    .line 24
    .line 25
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    .line 30
    .line 31
    instance-of p3, p2, Ljava/lang/Integer;

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    check-cast p2, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->setDownloadStatus(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
