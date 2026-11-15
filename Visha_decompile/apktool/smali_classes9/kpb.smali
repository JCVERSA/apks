.class public Lkpb;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkpb$a;
    }
.end annotation


# instance fields
.field public final b:Landroid/content/Context;

.field public c:Lcom/transsion/playercommon/widgets/SortItem;

.field public d:Lcom/transsion/playercommon/widgets/SortItem;

.field public e:Lcom/transsion/playercommon/widgets/SortItem;

.field public f:Lcom/transsion/playercommon/widgets/SortItem;

.field public g:Lcom/transsion/playercommon/widgets/SortItem;

.field public h:Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;

.field public i:Landroidx/recyclerview/widget/RecyclerView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkpb;->p:Z

    iput-object p1, p0, Lkpb;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/magicvideo/R$layout;->dialog_video_collect:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v1, Lcom/transsion/magicvideo/R$id;->rv_video_collect:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lkpb;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lkpb$a;

    sget v3, Lcom/transsion/magicvideo/R$drawable;->ic_public_short_video_mode:I

    sget v4, Lcom/transsion/magicvideo/R$string;->visha_Categories_mode:I

    invoke-direct {v2, v3, v4}, Lkpb$a;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lkpb$a;

    sget v3, Lcom/transsion/magicvideo/R$drawable;->ic_public_list_mode:I

    sget v4, Lcom/transsion/magicvideo/R$string;->visha_list_mode:I

    invoke-direct {v2, v3, v4}, Lkpb$a;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lkpb$a;

    sget v3, Lcom/transsion/magicvideo/R$drawable;->ic_public_grid_mode:I

    sget v4, Lcom/transsion/magicvideo/R$string;->visha_grid_mode:I

    invoke-direct {v2, v3, v4}, Lkpb$a;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;

    invoke-direct {v2, v1}, Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lkpb;->h:Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;

    new-instance v3, Lhpb;

    invoke-direct {v3, p0}, Lhpb;-><init>(Lkpb;)V

    invoke-virtual {v2, v3}, Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;->setOnItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v2, p0, Lkpb;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lkpb;->h:Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lkpb;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p1, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    invoke-direct {v2, v5, p1}, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;-><init>(II)V

    iget-object p1, p0, Lkpb;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    sget p1, Lcom/transsion/magicvideo/R$id;->video_sort_item_list:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget v2, Lcom/transsion/magicvideo/R$id;->sort_by_group:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/SortGroup;

    sget v3, Lcom/transsion/magicvideo/R$id;->item_by_date:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v3, p0, Lkpb;->c:Lcom/transsion/playercommon/widgets/SortItem;

    sget v3, Lcom/transsion/magicvideo/R$id;->item_by_name:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v3, p0, Lkpb;->d:Lcom/transsion/playercommon/widgets/SortItem;

    sget v3, Lcom/transsion/magicvideo/R$id;->item_by_length:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v3, p0, Lkpb;->e:Lcom/transsion/playercommon/widgets/SortItem;

    sget v3, Lcom/transsion/magicvideo/R$id;->item_by_size:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v3, p0, Lkpb;->f:Lcom/transsion/playercommon/widgets/SortItem;

    sget v3, Lcom/transsion/magicvideo/R$id;->item_by_count:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object p1, p0, Lkpb;->g:Lcom/transsion/playercommon/widgets/SortItem;

    const/4 p1, 0x1

    invoke-virtual {v2, p1, v0}, Lcom/transsion/playercommon/widgets/SortGroup;->setIsSortVideo(ZZ)V

    invoke-virtual {v2, p1}, Lcom/transsion/playercommon/widgets/SortGroup;->setNotPlayNow(Z)V

    invoke-virtual {p0}, Lkpb;->e()V

    invoke-virtual {v2}, Lcom/transsion/playercommon/widgets/SortGroup;->getIsAscending()Z

    move-result v3

    iput-boolean v3, p0, Lkpb;->l:Z

    invoke-virtual {v2}, Lcom/transsion/playercommon/widgets/SortGroup;->getSortByNameValue()I

    move-result v3

    iput v3, p0, Lkpb;->m:I

    invoke-virtual {p0}, Lkpb;->d()I

    move-result v3

    iput v3, p0, Lkpb;->n:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpb$a;

    iput-boolean p1, v0, Lkpb$a;->c:Z

    iput v4, p0, Lkpb;->o:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpb$a;

    iput-boolean p1, v1, Lkpb$a;->c:Z

    iput v0, p0, Lkpb;->o:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpb$a;

    iput-boolean p1, v0, Lkpb$a;->c:Z

    const/4 p1, -0x2

    iput p1, p0, Lkpb;->o:I

    :goto_0
    sget p1, Lcom/transsion/magicvideo/R$id;->tv_video_collect_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lkpb;->j:Landroid/widget/TextView;

    sget p1, Lcom/transsion/magicvideo/R$id;->tv_video_collect_confirm:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lkpb;->k:Landroid/widget/TextView;

    iget-object p1, p0, Lkpb;->j:Landroid/widget/TextView;

    new-instance v0, Lipb;

    invoke-direct {v0, p0}, Lipb;-><init>(Lkpb;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lkpb;->k:Landroid/widget/TextView;

    new-instance v0, Ljpb;

    invoke-direct {v0, p0, v2}, Ljpb;-><init>(Lkpb;Lcom/transsion/playercommon/widgets/SortGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lkpb;Lcom/transsion/playercommon/widgets/SortGroup;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkpb;->h(Lcom/transsion/playercommon/widgets/SortGroup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lkpb;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkpb;->g(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lkpb;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkpb;->f(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 3

    iget-object v0, p0, Lkpb;->b:Landroid/content/Context;

    const-string v1, "video_adapter_grid_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    iget-object p0, p0, Lkpb;->b:Landroid/content/Context;

    invoke-static {p0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x3

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final e()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lkpb;->b:Landroid/content/Context;

    const-string v2, "video_pref_sort_name"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lkpb;->c:Lcom/transsion/playercommon/widgets/SortItem;

    iget-object v4, v0, Lkpb;->d:Lcom/transsion/playercommon/widgets/SortItem;

    iget-object v5, v0, Lkpb;->e:Lcom/transsion/playercommon/widgets/SortItem;

    iget-object v6, v0, Lkpb;->f:Lcom/transsion/playercommon/widgets/SortItem;

    iget-object v7, v0, Lkpb;->g:Lcom/transsion/playercommon/widgets/SortItem;

    const/4 v8, 0x5

    new-array v9, v8, [Landroid/view/View;

    aput-object v2, v9, v3

    const/4 v2, 0x1

    aput-object v4, v9, v2

    const/4 v4, 0x2

    aput-object v5, v9, v4

    const/4 v4, 0x3

    aput-object v6, v9, v4

    const/4 v4, 0x4

    aput-object v7, v9, v4

    iget-object v4, v0, Lkpb;->b:Landroid/content/Context;

    sget v5, Lcom/transsion/magicvideo/R$string;->by_date:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v4, v0, Lkpb;->b:Landroid/content/Context;

    sget v5, Lcom/transsion/playercommon/R$string;->by_name:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v4, v0, Lkpb;->b:Landroid/content/Context;

    sget v5, Lcom/transsion/playercommon/R$string;->duration:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v4, v0, Lkpb;->b:Landroid/content/Context;

    sget v5, Lcom/transsion/playercommon/R$string;->by_size:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v4, v0, Lkpb;->b:Landroid/content/Context;

    sget v5, Lcom/transsion/playercommon/R$string;->by_count:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v4, v0, Lkpb;->b:Landroid/content/Context;

    sget v5, Lcom/transsion/playercommon/R$string;->manual_sorting:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lkpb;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-ge v3, v8, :cond_1

    if-ne v3, v1, :cond_0

    aget-object v5, v9, v3

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    aget-object v5, v9, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lkpb;->b:Landroid/content/Context;

    sget v10, Lcom/transsion/playercommon/R$string;->talkback_unselected:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic f(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    iget-object p1, p0, Lkpb;->h:Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpb$a;

    if-ne v0, p3, :cond_0

    goto :goto_1

    :cond_0
    move v2, p2

    :goto_1
    iput-boolean v2, v1, Lkpb$a;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const/4 p2, -0x3

    iput p2, p0, Lkpb;->o:I

    goto :goto_2

    :cond_2
    if-ne p3, v2, :cond_3

    const/4 p2, -0x1

    iput p2, p0, Lkpb;->o:I

    goto :goto_2

    :cond_3
    const/4 p2, -0x2

    iput p2, p0, Lkpb;->o:I

    :goto_2
    iget-object p0, p0, Lkpb;->h:Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final synthetic h(Lcom/transsion/playercommon/widgets/SortGroup;Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/SortGroup;->getNewestAscending()Z

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/SortGroup;->getNewestSortByNameValue()I

    move-result v0

    iget-boolean v1, p0, Lkpb;->l:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p2, :cond_1

    iget v1, p0, Lkpb;->m:I

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget v4, p0, Lkpb;->n:I

    iget v5, p0, Lkpb;->o:I

    if-eq v4, v5, :cond_2

    move v2, v3

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p1, p2, v0}, Lcom/transsion/playercommon/widgets/SortGroup;->saveVideoSortAttr(ZI)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/SortGroup;->getNewestAscending()Z

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/SortGroup;->getNewestSortByNameValue()I

    move-result v1

    iget v2, p0, Lkpb;->o:I

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/transsion/playercommon/widgets/SortGroup;->saveVideoListModeAttr(ZIIZ)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/SortGroup;->getNewestAscending()Z

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/SortGroup;->getNewestSortByNameValue()I

    move-result v1

    iget v2, p0, Lkpb;->o:I

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/transsion/playercommon/widgets/SortGroup;->saveVideoListModeAttr(ZIIZ)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1, p2, v0}, Lcom/transsion/playercommon/widgets/SortGroup;->saveVideoSortAttr(ZI)V

    :cond_5
    :goto_2
    iput-boolean v3, p0, Lkpb;->p:Z

    iget p1, p0, Lkpb;->n:I

    iget p2, p0, Lkpb;->o:I

    iget v1, p0, Lkpb;->m:I

    invoke-static {p1, p2, v1, v0}, Lq16;->e(IIII)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
