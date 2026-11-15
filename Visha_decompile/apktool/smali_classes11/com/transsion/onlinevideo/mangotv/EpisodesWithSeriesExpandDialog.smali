.class public Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;
.super Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog$a;
    }
.end annotation


# instance fields
.field public n:I

.field public o:Landroid/widget/TextView;

.field public p:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

.field public q:Landroidx/recyclerview/widget/RecyclerView;

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public s:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

.field public t:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

.field public u:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

.field public v:Z

.field public w:Z

.field public x:Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog$a;

.field public y:Ljava/util/List;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->n:I

    return-void
.end method

.method public static synthetic D(Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->L(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->I(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic F(Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->K(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private H(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->p:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->z:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_series:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->q:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_episodes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->r:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->p:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCover()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->v:Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->p:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->p:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->w:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSeriesId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->p:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->y:Ljava/util/List;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->v:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->r:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/transsion/widgets/CenterLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0}, Lcom/transsion/widgets/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->p:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getCategory()I

    move-result v4

    invoke-direct {v1, v3, v2, v4}, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;-><init>(Landroid/content/Context;ZI)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->s:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->y:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->s:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->s:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    new-instance v2, Lzb3;

    invoke-direct {v2, p0}, Lzb3;-><init>(Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->t:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->y:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->r:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->t:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->t:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    new-instance v2, Lac3;

    invoke-direct {v2, p0}, Lac3;-><init>(Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :goto_3
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->w:Z

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_4

    :cond_6
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->w:Z

    if-eqz v1, :cond_7

    new-instance v1, Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/onlinevideo/adapter/SessionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->u:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->p:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->u:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSeriesId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSeries(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->c(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->u:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    new-instance v1, Lbc3;

    invoke-direct {v1, p0}, Lbc3;-><init>(Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;)V

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->u:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_7
    :goto_5
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_9

    sget-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->y:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-void
.end method

.method private synthetic I(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->N(IZ)V

    return-void
.end method

.method private synthetic J(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->N(IZ)V

    return-void
.end method

.method private synthetic K(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->O(I)V

    return-void
.end method

.method private synthetic L(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lwz5;->j()V

    iget p2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->n:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->n:I

    const-string p0, "back"

    invoke-static {p0, p2}, Lwz5;->s(Ljava/lang/String;I)V

    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method

.method public static M(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog$a;)Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;
    .locals 1

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;-><init>()V

    iput-object p0, v0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->p:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    iput-object p1, v0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->x:Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog$a;

    return-object v0
.end method

.method public static synthetic w(Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->J(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public G()I
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {p0, v1}, Loc2;->a(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public N(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->x:Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog$a;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->p:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->y:Ljava/util/List;

    :goto_0
    invoke-interface {v0, p2, p1}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog$a;->a(Ljava/util/List;I)V

    :cond_1
    iget-boolean p2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->v:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->s:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->t:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public O(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->u:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->c(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->u:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->u:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeriesId()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->v:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->s:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->t:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->layout_multi_episodes:I

    return p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->z:Z

    if-nez p0, :cond_0

    invoke-static {}, Lwz5;->j()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$id;->design_bottom_sheet:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->G()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;->l:Landroid/view/View;

    sget v2, Lcom/transsion/onlinevideo/R$id;->episode_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcc3;

    invoke-direct {v2, p0, v0}, Lcc3;-><init>(Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public v(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/onlinevideo/R$id;->episode_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->o:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->z:Z

    if-nez v1, :cond_0

    sget v1, Lcom/transsion/onlinevideo/R$string;->video_onlinevideo_episodes:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/onlinevideo/R$string;->video_onlinevideo_trivia:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->root_episodes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->H(Landroid/view/View;)V

    return-void
.end method
