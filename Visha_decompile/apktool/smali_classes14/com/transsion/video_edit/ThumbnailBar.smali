.class public Lcom/transsion/video_edit/ThumbnailBar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/video_edit/ThumbnailBar$c;
    }
.end annotation


# instance fields
.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Lcom/transsion/video_edit/ThumbAdapter;

.field public d:Lcom/transsion/video_edit/ThumbItemLayoutManager;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/bumptech/glide/integration/recyclerview/RecyclerViewPreloader;

.field public i:Lcom/bumptech/glide/util/FixedPreloadSizeProvider;

.field public j:Lxia;

.field public k:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field public l:Lcom/transsion/video_edit/ThumbnailBar$c;

.field public m:Z

.field public n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/video_edit/ThumbnailBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/video_edit/ThumbnailBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/video_edit/ThumbnailBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/transsion/video_edit/ThumbnailBar;->m:Z

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/transsion/video_edit/R$layout;->layout_editbar:I

    const/4 v0, 0x1

    invoke-virtual {p3, p4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    sget p3, Lcom/transsion/video_edit/R$id;->thumb_recycle_view:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/transsion/video_edit/ThumbnailBar;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 p3, 0x42400000    # 48.0f

    .line 8
    invoke-static {p1, p3}, Le39;->a(Landroid/content/Context;F)I

    move-result p4

    iput p4, p0, Lcom/transsion/video_edit/ThumbnailBar;->e:I

    .line 9
    invoke-static {p1, p3}, Le39;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/transsion/video_edit/ThumbnailBar;->f:I

    const/high16 p3, 0x42180000    # 38.0f

    .line 10
    invoke-static {p1, p3}, Le39;->a(Landroid/content/Context;F)I

    move-result p4

    iput p4, p0, Lcom/transsion/video_edit/ThumbnailBar;->g:I

    .line 11
    new-instance p4, Lcom/transsion/video_edit/ThumbItemLayoutManager;

    iget v0, p0, Lcom/transsion/video_edit/ThumbnailBar;->e:I

    iget v1, p0, Lcom/transsion/video_edit/ThumbnailBar;->f:I

    invoke-direct {p4, p1, v0, v1}, Lcom/transsion/video_edit/ThumbItemLayoutManager;-><init>(Landroid/content/Context;II)V

    iput-object p4, p0, Lcom/transsion/video_edit/ThumbnailBar;->d:Lcom/transsion/video_edit/ThumbItemLayoutManager;

    .line 12
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 13
    iget-object p2, p0, Lcom/transsion/video_edit/ThumbnailBar;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p4, p0, Lcom/transsion/video_edit/ThumbnailBar;->d:Lcom/transsion/video_edit/ThumbItemLayoutManager;

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 14
    iget-object p2, p0, Lcom/transsion/video_edit/ThumbnailBar;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p4, Lcom/transsion/video_edit/ThumbItemDecoration;

    invoke-static {p1, p3}, Le39;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p1, p3}, Le39;->a(Landroid/content/Context;F)I

    move-result p3

    invoke-direct {p4, v0, p3}, Lcom/transsion/video_edit/ThumbItemDecoration;-><init>(II)V

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 15
    iget-object p2, p0, Lcom/transsion/video_edit/ThumbnailBar;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/transsion/video_edit/ThumbnailBar$a;

    invoke-direct {p3, p0}, Lcom/transsion/video_edit/ThumbnailBar$a;-><init>(Lcom/transsion/video_edit/ThumbnailBar;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 16
    new-instance p2, Lcom/transsion/video_edit/ThumbnailBar$b;

    invoke-direct {p2, p0}, Lcom/transsion/video_edit/ThumbnailBar$b;-><init>(Lcom/transsion/video_edit/ThumbnailBar;)V

    iput-object p2, p0, Lcom/transsion/video_edit/ThumbnailBar;->k:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 17
    iget-object p3, p0, Lcom/transsion/video_edit/ThumbnailBar;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 18
    new-instance p2, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;

    iget p3, p0, Lcom/transsion/video_edit/ThumbnailBar;->e:I

    iget p4, p0, Lcom/transsion/video_edit/ThumbnailBar;->f:I

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/video_edit/ThumbnailBar;->i:Lcom/bumptech/glide/util/FixedPreloadSizeProvider;

    .line 19
    new-instance p2, Lxia;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lxia;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/video_edit/ThumbnailBar;->j:Lxia;

    .line 20
    new-instance p2, Lcom/bumptech/glide/integration/recyclerview/RecyclerViewPreloader;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    iget-object p4, p0, Lcom/transsion/video_edit/ThumbnailBar;->j:Lxia;

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailBar;->i:Lcom/bumptech/glide/util/FixedPreloadSizeProvider;

    sget v1, Lcom/transsion/video_edit/b;->b:I

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/bumptech/glide/integration/recyclerview/RecyclerViewPreloader;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;I)V

    iput-object p2, p0, Lcom/transsion/video_edit/ThumbnailBar;->h:Lcom/bumptech/glide/integration/recyclerview/RecyclerViewPreloader;

    .line 21
    iget-object p3, p0, Lcom/transsion/video_edit/ThumbnailBar;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/video_edit/ThumbnailBar;->setAdapter(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le39;->d(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/video_edit/ThumbnailBar;->n:I

    .line 24
    invoke-virtual {p0}, Lcom/transsion/video_edit/ThumbnailBar;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/video_edit/ThumbnailBar;->m:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/video_edit/ThumbnailBar;)Lcom/transsion/video_edit/ThumbnailBar$c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailBar;->l:Lcom/transsion/video_edit/ThumbnailBar$c;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/video_edit/ThumbnailBar;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/video_edit/ThumbnailBar;->getFirstVisibleLeft()I

    move-result p0

    return p0
.end method

.method private getFirstVisibleLeft()I
    .locals 4

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailBar;->d:Lcom/transsion/video_edit/ThumbItemLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailBar;->d:Lcom/transsion/video_edit/ThumbItemLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    iget-boolean v3, p0, Lcom/transsion/video_edit/ThumbnailBar;->m:Z

    if-eqz v3, :cond_1

    iget v2, p0, Lcom/transsion/video_edit/ThumbnailBar;->n:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v2, v1

    :cond_1
    iget v1, p0, Lcom/transsion/video_edit/ThumbnailBar;->g:I

    iget p0, p0, Lcom/transsion/video_edit/ThumbnailBar;->e:I

    mul-int/2addr v0, p0

    add-int/2addr v1, v0

    sub-int/2addr p0, v2

    add-int/2addr v1, p0

    return v1
.end method

.method private setAdapter(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailBar;->c:Lcom/transsion/video_edit/ThumbAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/video_edit/ThumbAdapter;

    invoke-direct {v0, p1}, Lcom/transsion/video_edit/ThumbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailBar;->c:Lcom/transsion/video_edit/ThumbAdapter;

    :cond_0
    iget-object p1, p0, Lcom/transsion/video_edit/ThumbnailBar;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailBar;->c:Lcom/transsion/video_edit/ThumbAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public addThumbnailInfo(Lwia;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailBar;->c:Lcom/transsion/video_edit/ThumbAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/video_edit/ThumbAdapter;->b(Lwia;I)V

    return-void
.end method

.method public appendThumbnailInfo(Lwia;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailBar;->c:Lcom/transsion/video_edit/ThumbAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbAdapter;->c(Lwia;)V

    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailBar;->c:Lcom/transsion/video_edit/ThumbAdapter;

    return-object p0
.end method

.method public initThumbnailInfo(Ljava/lang/String;JJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v13, p4

    long-to-float v3, v1

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v3, v15

    long-to-float v12, v13

    div-float/2addr v3, v12

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/transsion/video_edit/ThumbnailBar;->setThumbNailCount(I)V

    const/4 v3, 0x0

    move v9, v3

    :goto_0
    if-ge v9, v11, :cond_1

    add-int/lit8 v3, v11, -0x1

    if-ne v9, v3, :cond_0

    int-to-long v3, v9

    mul-long v5, v3, v13

    sub-long v7, v1, v5

    iget v3, v0, Lcom/transsion/video_edit/ThumbnailBar;->e:I

    int-to-long v3, v3

    mul-long/2addr v3, v7

    long-to-float v3, v3

    mul-float/2addr v3, v15

    div-float/2addr v3, v12

    float-to-int v10, v3

    new-instance v4, Lwia;

    iget v3, v0, Lcom/transsion/video_edit/ThumbnailBar;->f:I

    move/from16 v16, v3

    move-object v3, v4

    move-object v15, v4

    move-object/from16 v4, p1

    move v1, v9

    move v2, v10

    move-wide/from16 v9, p4

    move/from16 v17, v11

    move v11, v2

    move v2, v12

    move/from16 v12, v16

    invoke-direct/range {v3 .. v12}, Lwia;-><init>(Ljava/lang/String;JJJII)V

    invoke-virtual {v0, v15}, Lcom/transsion/video_edit/ThumbnailBar;->appendThumbnailInfo(Lwia;)V

    goto :goto_1

    :cond_0
    move v1, v9

    move/from16 v17, v11

    move v2, v12

    new-instance v15, Lwia;

    int-to-long v3, v1

    mul-long v5, v3, v13

    iget v11, v0, Lcom/transsion/video_edit/ThumbnailBar;->e:I

    iget v12, v0, Lcom/transsion/video_edit/ThumbnailBar;->f:I

    move-object v3, v15

    move-object/from16 v4, p1

    move-wide/from16 v7, p4

    move-wide/from16 v9, p4

    invoke-direct/range {v3 .. v12}, Lwia;-><init>(Ljava/lang/String;JJJII)V

    invoke-virtual {v0, v15}, Lcom/transsion/video_edit/ThumbnailBar;->appendThumbnailInfo(Lwia;)V

    :goto_1
    add-int/lit8 v9, v1, 0x1

    move v12, v2

    move/from16 v11, v17

    const/high16 v15, 0x3f800000    # 1.0f

    move-wide/from16 v1, p2

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/transsion/video_edit/ThumbnailBar;->j:Lxia;

    iget-object v0, v0, Lcom/transsion/video_edit/ThumbnailBar;->c:Lcom/transsion/video_edit/ThumbAdapter;

    invoke-virtual {v0}, Lcom/transsion/video_edit/ThumbAdapter;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lxia;->b(Ljava/util/List;)V

    return-void
.end method

.method public isRtl()Z
    .locals 0

    invoke-static {}, Lolb;->l0()Z

    move-result p0

    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailBar;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailBar;->k:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setCanScoll(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailBar;->d:Lcom/transsion/video_edit/ThumbItemLayoutManager;

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbItemLayoutManager;->g(Z)V

    return-void
.end method

.method public setOnThumbnailBarScrollListener(Lcom/transsion/video_edit/ThumbnailBar$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/video_edit/ThumbnailBar;->l:Lcom/transsion/video_edit/ThumbnailBar$c;

    return-void
.end method

.method public setThumbNailCount(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailBar;->c:Lcom/transsion/video_edit/ThumbAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbAdapter;->r(I)V

    return-void
.end method
