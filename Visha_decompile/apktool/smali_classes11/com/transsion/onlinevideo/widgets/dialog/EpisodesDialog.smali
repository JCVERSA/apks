.class public Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog$a;
    }
.end annotation


# instance fields
.field public l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public o:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

.field public q:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

.field public r:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

.field public s:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

.field public x:Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog$a;

.field public y:Ljava/util/List;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;-><init>()V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->J(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->K(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static L(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;ZLcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog$a;)Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;
    .locals 1

    new-instance v0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;-><init>()V

    iput-object p0, v0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    iput-object p2, v0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->x:Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog$a;

    iput-boolean p1, v0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->z:Z

    return-object v0
.end method

.method public static synthetic v(Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->H(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic w(Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->I(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final F(Landroid/view/View;)V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->z:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_series:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->m:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_episodes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->n:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->n:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCover()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->t:Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->u:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSeriesId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->y:Ljava/util/List;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->t:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->n:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/transsion/widgets/CenterLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0}, Lcom/transsion/widgets/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2, v2}, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->p:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->y:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->p:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->p:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    new-instance v2, Lob3;

    invoke-direct {v2, p0}, Lob3;-><init>(Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2, v2}, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->r:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->y:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->n:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->r:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->r:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    new-instance v2, Lpb3;

    invoke-direct {v2, p0}, Lpb3;-><init>(Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :goto_3
    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->u:Z

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->u:Z

    if-eqz v1, :cond_6

    new-instance v1, Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/onlinevideo/adapter/SessionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->s:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->s:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSeriesId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSeries(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->c(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->s:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    new-instance v1, Lqb3;

    invoke-direct {v1, p0}, Lqb3;-><init>(Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;)V

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->s:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    sget-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->y:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    return-void
.end method

.method public final G(Landroid/view/View;)V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->z:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_trivia:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/widgets/CenterLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/widgets/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->v:Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->v:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v3, v3}, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->q:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->q:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->q:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    new-instance v1, Lnb3;

    invoke-direct {v1, p0}, Lnb3;-><init>(Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;)V

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_3
    sget-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-static {v1, v2}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSerial(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->w:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    :goto_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    sget-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final synthetic H(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->M(IZ)V

    return-void
.end method

.method public final synthetic I(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->M(IZ)V

    return-void
.end method

.method public final synthetic J(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->N(I)V

    return-void
.end method

.method public final synthetic K(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->M(IZ)V

    return-void
.end method

.method public M(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->x:Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog$a;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog$a;->a(Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->y:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog$a;->a(Ljava/util/List;I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->dismiss()V

    return-void
.end method

.method public N(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->s:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->c(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->s:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->s:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeriesId()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->t:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->p:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->r:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->dialog_episodes:I

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->initView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->G(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->F(Landroid/view/View;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->addDismissListener(Landroid/view/View;)V

    return-void
.end method
