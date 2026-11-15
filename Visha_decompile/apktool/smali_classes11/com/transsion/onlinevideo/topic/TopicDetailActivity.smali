.class public Lcom/transsion/onlinevideo/topic/TopicDetailActivity;
.super Lcom/transsion/onlinevideo/OnlineBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public N:Landroidx/recyclerview/widget/RecyclerView;

.field public O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/view/View;

.field public R:J

.field public S:Ljava/util/List;

.field public T:Ljava/lang/String;

.field public U:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

.field public V:I

.field public final W:I

.field public X:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

.field public Y:Landroid/view/View;

.field public Z:Z

.field public a0:Landroid/widget/LinearLayout;

.field public b0:Landroid/widget/LinearLayout;

.field public c0:Landroid/widget/LinearLayout;

.field public d0:Landroid/widget/TextView;

.field public e0:Landroid/widget/TextView;

.field public f0:Landroid/widget/TextView;

.field public g0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

.field public h0:I

.field public i0:J

.field public j0:Z

.field public k0:I

.field public l0:Landroid/widget/LinearLayout;

.field public m0:Landroid/widget/LinearLayout;

.field public n0:Lcom/google/android/material/appbar/AppBarLayout;

.field public o0:Landroid/widget/FrameLayout;

.field public p0:J

.field public q0:I

.field public r0:I

.field public s0:Ljava/lang/String;

.field public t0:Ljava/util/List;

.field public final u0:Ljava/util/List;

.field public final v0:Ljava/util/List;

.field public w0:Z

.field public x0:Lcom/transsion/utils/CustomGridLayoutManager;

.field public y0:I

.field public z0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->W:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->j0:Z

    const-string v0, "vd_ott_label_cl"

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->s0:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->u0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->v0:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    return-object p0
.end method

.method public static bridge synthetic B0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->X:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    return-object p0
.end method

.method public static bridge synthetic C0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->R:J

    return-wide v0
.end method

.method public static bridge synthetic D0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->n0:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method public static bridge synthetic E0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->e1(Z)V

    return-void
.end method

.method public static bridge synthetic F0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->f1()V

    return-void
.end method

.method public static bridge synthetic G0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g1(I)V

    return-void
.end method

.method public static bridge synthetic H0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->h1()V

    return-void
.end method

.method private synthetic W0(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSource_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;->g(Z)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->x0:Lcom/transsion/utils/CustomGridLayoutManager;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method private synthetic X0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method private synthetic Y0(Ljava/util/List;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Z:Z

    new-instance v0, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->parseMediaBean(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$5;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    new-instance v1, Loqa;

    invoke-direct {v1, p0, v0}, Loqa;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    new-instance p1, Lpqa;

    invoke-direct {p1, p0, v0}, Lpqa;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Ljava/util/List;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->J0()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->h1()V

    goto :goto_2

    :cond_5
    sget p1, Lcom/transsion/onlinevideo/R$string;->net_not_connect:I

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g1(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private synthetic Z0(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->l0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->t0:Ljava/util/List;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->P0(ILjava/util/List;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->t0:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->t0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->t0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->t0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->t0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagRelation()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    iput-boolean v3, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->w0:Z

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->K0()V

    iget p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    const/16 v1, 0x12

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b1(IIZ)V

    :cond_5
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Z0(Ljava/util/List;)V

    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "router_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTopic_id()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->R:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTopic_name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->T:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTop_position()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->h0:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getData_type()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSourceType()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->q0:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getChannel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->p0:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getBottom_position()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->r0:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getFrom_card()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->s0:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getLabelRal()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->S:Ljava/util/List;

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNewIntent mTopicId\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->R:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\uff0cmTitle:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->T:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mLabelType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->q0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mLabelId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->p0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",mLabelRal:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->S:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",dataType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_TopicDetailActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->T0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->S0()V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->X0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->R0()V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->a1()V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->W0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic x0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->U0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y0(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic z0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final I0(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->z0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->z0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public final J0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->L0(Z)V

    return-void
.end method

.method public final K0()V
    .locals 12

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->w0:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->u0:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->t0:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->u0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->s()Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->s()Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagRelation()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->s()Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagRelation()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->t0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->t0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagType()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    move v8, v1

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    if-nez v8, :cond_5

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_5
    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v6, v8}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->setNeedHide(Z)V

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->u0:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {v4, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    return-void
.end method

.method public L0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/onlinevideo/R$id;->online_video_empty_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->ll_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c0:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->ll_loading_topic:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->a0:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->ll_no_wifi:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b0:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_content_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->d0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_wifi_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->e0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_no_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->f0:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c0:Landroid/widget/LinearLayout;

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c0:Landroid/widget/LinearLayout;

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b0:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->e0:Landroid/widget/TextView;

    new-instance v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$a;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->d0:Landroid/widget/TextView;

    new-instance v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$b;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$b;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public M0()V
    .locals 5

    new-instance v0, Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;->d(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    iget v2, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->r0:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;->g(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    new-instance v2, Luqa;

    invoke-direct {v2, p0}, Luqa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_media:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/utils/CustomGridLayoutManager;

    iget v2, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->r0:I

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    :goto_1
    invoke-direct {v0, p0, v2}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->x0:Lcom/transsion/utils/CustomGridLayoutManager;

    iget-object v2, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setPreLoadNumber(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->disableLoadMoreIfNotFullPage(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->enableLoadMoreEndClick(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    new-instance v1, Lmqa;

    invoke-direct {v1, p0}, Lmqa;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    new-instance v1, Lnqa;

    invoke-direct {v1, p0}, Lnqa;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->top_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->n0:Lcom/google/android/material/appbar/AppBarLayout;

    iget v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    iget v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    if-eq v0, v4, :cond_3

    return-void

    :cond_3
    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_type:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->l0:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_filter:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->m0:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->fl_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->o0:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->n0:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->m0:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$d;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$d;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public N0()V
    .locals 2

    sget v0, Lcom/transsion/onlinevideo/R$id;->topic_pull_damping_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->X:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$c;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public O0()V
    .locals 2

    sget v0, Lcom/transsion/onlinevideo/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$id;->title_bar_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->P:Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$id;->title_bar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Q:Landroid/view/View;

    new-instance v1, Lrqa;

    invoke-direct {v1, p0}, Lrqa;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->P:Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$string;->tab_all:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->P:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final P0(ILjava/util/List;Z)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    iget-object p3, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->v0:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->u0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_1

    const/high16 p3, 0x41a00000    # 20.0f

    goto :goto_0

    :cond_1
    const/high16 p3, 0x41200000    # 10.0f

    :goto_0
    invoke-static {p0, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p3

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/high16 p3, 0x41500000    # 13.0f

    invoke-static {p0, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p3

    invoke-virtual {p1, p3, v1, p3, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    new-instance p3, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$f;

    invoke-direct {p3, p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$f;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance p3, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-direct {p3, p0}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lqqa;

    invoke-direct {v0, p0}, Lqqa;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    invoke-virtual {p3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->u0:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->v0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, p3

    move-object p3, p1

    move-object p1, v8

    :goto_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->l0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_a

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->S:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getTag_type()I

    move-result v3

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getTag_id()J

    move-result-wide v4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagType()I

    move-result v2

    if-eq v3, v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagId()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_5

    invoke-virtual {p1, v3}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->I0(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v5, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->y0:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->s()Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object p0

    if-nez p0, :cond_a

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    goto :goto_6

    :cond_7
    :goto_4
    iget v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->q0:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagType()I

    move-result v2

    if-ne v0, v2, :cond_9

    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    if-eqz v0, :cond_8

    iget-wide v2, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->p0:J

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    invoke-virtual {p1, v0}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->I0(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->y0:I

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p3, v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_6

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    :cond_a
    :goto_6
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public Q0()V
    .locals 8

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->U:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Ljqa;

    invoke-direct {v1, p0}, Ljqa;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->U:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->g()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lkqa;

    invoke-direct {v1, p0}, Lkqa;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-wide v3, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->R:J

    const/16 v6, 0x12

    const/4 v7, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c1(JIIZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->d1()V

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->U:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->getLoadStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final synthetic R0()V
    .locals 8

    iget v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-wide v3, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->R:J

    iget v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    const/16 v6, 0x12

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c1(JIIZ)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b1(IIZ)V

    :goto_0
    return-void
.end method

.method public final synthetic S0()V
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lsqa;

    invoke-direct {v1, p0}, Lsqa;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic T0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    if-eqz v9, :cond_1

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    new-instance v2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v3

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSource_id()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->s0:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    iget-wide v1, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->R:J

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v3

    iget v6, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getPay_type()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lhb0;->checkPayType(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v5, p3

    invoke-static/range {v1 .. v7}, Lg16;->b(JJIILjava/lang/String;)V

    iget-wide v12, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->R:J

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v14

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getPay_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const-string v16, "topic_more"

    invoke-static/range {v12 .. v17}, Ld06;->h(JJLjava/lang/String;I)V

    iget v1, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->l0:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    iget-object v1, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->l0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->l0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->l0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->s()Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->l0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->s()Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->l0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->s()Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagName()Ljava/lang/String;

    move-result-object v11

    :cond_0
    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getPay_type()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lhb0;->checkPayType(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v8, v11, v2}, Let7;->e(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final synthetic U0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public final synthetic V0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    move-object p2, p1

    check-cast p2, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {p2, p3}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->r(I)Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->K0()V

    iget v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1, p2}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b1(IIZ)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->T:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->tagName:Ljava/lang/String;

    invoke-static {p0, p1}, Let7;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic a1()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Z:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->J0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Y:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->f1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b1(IIZ)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->l0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string p0, "visha_TopicDetailActivity"

    const-string p1, "loadData ll_type is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-array v1, v0, [Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->l0:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_2

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {v3}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->s()Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->U:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->e([Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;IIZ)V

    return-void
.end method

.method public c1(JIIZ)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->U:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->d(JIIZ)V

    return-void
.end method

.method public d1()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->U:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->h()V

    return-void
.end method

.method public final e1(Z)V
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->j0:Z

    if-eqz p0, :cond_0

    invoke-static {p1}, Lvz5;->c(Z)V

    :cond_0
    return-void
.end method

.method public final f1()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->J0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->a0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->a0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->X:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final g1(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->J0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->a0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->X:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->f0:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final h1()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->J0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->X:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lpp3;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/onlinevideo/R$layout;->activity_single_topic:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->parseIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->M0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->O0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Q0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->N0()V

    sget p1, Lcom/transsion/onlinevideo/R$id;->topic_pull_damping_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Llqa;

    invoke-direct {v0, p0}, Llqa;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-wide v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->R:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->g0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getData_type()I

    move-result p1

    invoke-static {v0, v1, p1}, Lg16;->c(JI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->i0:J

    iget p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "topicname"

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->T:Ljava/lang/String;

    const-string v1, "vd_ott_label_more_show"

    invoke-static {v1, p1, v0}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->y0:I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$layout;->adapter_video_tag:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->z0:Landroid/view/View;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onDestroy()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->i0:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-wide v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->R:J

    iget v3, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->h0:I

    invoke-static {v1, v2, v0, v3}, Lg16;->d(JFI)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->u0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->n0:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->parseIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Q0()V

    const/4 p1, 0x1

    const/16 v0, 0x12

    invoke-virtual {p0, p1, v0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b1(IIZ)V

    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->o0:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->o0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->m0:Landroid/widget/LinearLayout;

    add-int/2addr p2, p1

    add-int/lit8 v0, v0, 0x3

    if-gt p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
