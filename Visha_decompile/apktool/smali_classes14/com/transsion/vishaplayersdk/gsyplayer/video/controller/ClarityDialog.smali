.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog$ClarityCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog$ClarityCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;-><init>()V

    return-void
.end method

.method private synthetic lambda$initView$0(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/ClarityAdatpter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-gt p4, p2, :cond_1

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;->callback:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog$ClarityCallback;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;->callback:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog$ClarityCallback;

    invoke-interface {p2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog$ClarityCallback;->switchResolution(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->dismiss()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->dismiss()V

    return-void
.end method

.method public static newInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;-><init>()V

    return-object v0
.end method

.method public static synthetic v(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/ClarityAdatpter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;->lambda$initView$0(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/ClarityAdatpter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/R$layout;->dialog_controller_options_list:I

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/ClarityAdatpter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/ClarityAdatpter;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getVideoDefinitions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance v1, Ljw0;

    invoke-direct {v1, p0, v0}, Ljw0;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/ClarityAdatpter;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->addDismissListener(Landroid/view/View;)V

    return-void
.end method

.method public setCallback(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog$ClarityCallback;)Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;->callback:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog$ClarityCallback;

    return-object p0
.end method
