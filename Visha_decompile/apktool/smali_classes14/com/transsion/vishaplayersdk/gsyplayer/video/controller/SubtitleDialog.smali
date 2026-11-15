.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog$SubtitleCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog$SubtitleCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;-><init>()V

    return-void
.end method

.method private synthetic lambda$initView$0(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    if-ltz p5, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lt p5, p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getLanguage()I

    move-result p2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->switchSubtitleSource(I)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p3

    iput p2, p3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCode:I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p3

    iput p2, p3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCodeByUser:I

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;->callback:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog$SubtitleCallback;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog$SubtitleCallback;->update(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string p3, "ott_subtitle_init"

    invoke-static {p1, p3, p2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->dismiss()V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x445

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static newInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;-><init>()V

    return-object v0
.end method

.method public static synthetic v(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;->lambda$initView$0(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic w(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/R$layout;->dialog_controller_options_list:I

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getSubtitleList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-direct {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;-><init>()V

    sget v5, Lcom/transsion/vishaplayersdk/R$string;->tip_no_subtitle:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setSelect(Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance v1, Lq2a;

    invoke-direct {v1, p0, v0, v2}, Lq2a;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;Z)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->feedback:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lr2a;

    invoke-direct {v2}, Lr2a;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->addDismissListener(Landroid/view/View;)V

    return-void
.end method

.method public setCallback(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog$SubtitleCallback;)Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;->callback:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog$SubtitleCallback;

    return-object p0
.end method
