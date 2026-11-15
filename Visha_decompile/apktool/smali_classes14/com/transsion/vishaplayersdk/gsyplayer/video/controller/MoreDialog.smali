.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;
.source "SourceFile"


# instance fields
.field index:I

.field indexs:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->indexs:[I

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->index:I

    return-void
.end method

.method private getIndex()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mFitType:I

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->indexs:[I

    aget v4, v4, v1

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic lambda$initView$0(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;Landroid/view/View;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;

    invoke-virtual {p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->getType()I

    move-result p4

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p4, v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->indexs:[I

    iget p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->index:I

    rem-int/lit8 p4, p4, 0x3

    aget p3, p3, p4

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setAspectRatio(I)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->indexs:[I

    iget p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->index:I

    rem-int/lit8 p4, p4, 0x3

    aget p3, p3, p4

    iput p3, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mFitType:I

    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->index:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->index:I

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x3f1

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->getType()I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->dismiss()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getPipListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x3f2

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->getType()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x3f3

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->dismiss()V

    return-void
.end method

.method public static newInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;-><init>()V

    return-object v0
.end method

.method public static synthetic v(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;Landroid/view/View;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->lambda$initView$0(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;Landroid/view/View;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;-><init>()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getSettings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance v1, Lyq6;

    invoke-direct {v1, p0, v0, p1}, Lyq6;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->addDismissListener(Landroid/view/View;)V

    return-void
.end method
