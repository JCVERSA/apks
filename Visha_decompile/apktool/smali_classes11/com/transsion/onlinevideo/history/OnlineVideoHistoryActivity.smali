.class public Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;
.super Lcom/transsion/onlinevideo/OnlineBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;
.implements Lcom/transsion/widgetslib/widget/FootOperationBar$n;


# static fields
.field public static s0:Z = false


# instance fields
.field public N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

.field public O:Lcom/transsion/playercommon/widgets/AppFootActionBar;

.field public P:I

.field public Q:Landroidx/recyclerview/widget/RecyclerView;

.field public R:Landroid/view/View;

.field public S:Landroid/widget/ImageView;

.field public T:Landroid/widget/TextView;

.field public U:Landroid/widget/CheckBox;

.field public V:I

.field public W:Z

.field public X:I

.field public Y:Ljava/lang/String;

.field public Z:J

.field public a0:Ljava/util/List;

.field public final b0:Ljava/util/ArrayList;

.field public final c0:Ljava/util/ArrayList;

.field public d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field public e0:Landroid/view/View;

.field public f0:Landroid/widget/TextView;

.field public g0:Landroid/widget/TextView;

.field public h0:Landroid/widget/Switch;

.field public i0:Lcom/transsion/widgets/InterceptLinearLayout;

.field public j0:Z

.field public k0:Landroid/widget/LinearLayout;

.field public l0:Landroid/widget/LinearLayout;

.field public m0:Landroid/widget/LinearLayout;

.field public n0:Landroid/widget/ImageView;

.field public o0:Landroidx/recyclerview/widget/RecyclerView;

.field public p0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

.field public q0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

.field public r0:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->a0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->c0:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->j0:Z

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->l1()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->j1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->r1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->h1()V

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->o1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic F0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic G0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->p1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic H0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic I0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->f1(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic J0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->j0:Z

    return p0
.end method

.method public static bridge synthetic K0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->a0:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic L0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->j0:Z

    return-void
.end method

.method public static bridge synthetic M0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->T0()V

    return-void
.end method

.method private Q0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->setOnSelectListener(Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    new-instance v1, Lei7;

    invoke-direct {v1, p0}, Lei7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    new-instance v1, Lfi7;

    invoke-direct {v1, p0}, Lfi7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    new-instance v1, Lgi7;

    invoke-direct {v1, p0}, Lgi7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method private R0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->e0:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$id;->vs_empty_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->e0:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->rv_recommends:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->o0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->e0:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->ll_recommend:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->m0:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->e0:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_content_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->f0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->e0:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_no_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->g0:Landroid/widget/TextView;

    :cond_0
    new-instance v0, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->p0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->d(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->p0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->g(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->p0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    new-instance v2, Lyh7;

    invoke-direct {v2, p0}, Lyh7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->g0:Landroid/widget/TextView;

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/transsion/onlinevideo/R$string;->no_have_history:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/transsion/onlinevideo/R$string;->empty_history_content:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->f0:Landroid/widget/TextView;

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->f0:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$b;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->o0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->o0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->p0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->Y(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    new-instance v1, Lzh7;

    invoke-direct {v1, p0}, Lzh7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->W(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string p0, "vd_ott_history_more_nodata_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method private S0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->T0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->k0:Landroid/widget/LinearLayout;

    sget-boolean v1, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->s0:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->n0:Landroid/widget/ImageView;

    new-instance v1, Lhi7;

    invoke-direct {v1, p0}, Lhi7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic Y0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->U:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->v(Z)V

    return-void
.end method

.method private synthetic Z0(ZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N0(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method private synthetic b1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->P0()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->Z:J

    invoke-virtual/range {p1 .. p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-boolean v3, v0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->W:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-virtual {v0, v3, v5, v1, v4}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    goto/16 :goto_3

    :cond_1
    iget-boolean v1, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-wide v5, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    const-string v1, "history_more"

    iget v3, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    invoke-static {v5, v6, v1, v3}, Luz5;->d(JLjava/lang/String;I)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->getmIsYoutube()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iget-object v7, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    iget-object v8, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->getChannelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->getChannelCover()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v1, "5"

    iget-object v5, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iget-object v6, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    iget-object v7, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    iget-object v8, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    iget-object v5, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iget-wide v12, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    iget-object v14, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    iget-wide v5, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    const/16 v17, 0x1

    move-object v11, v1

    move-wide v15, v5

    invoke-direct/range {v11 .. v17}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;JI)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isShortVideo()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    move v5, v4

    goto :goto_1

    :cond_6
    :goto_0
    move v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v1

    :goto_2
    new-instance v5, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v5}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {v5, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    const-string v3, "vd_ott_history_more_video_cl"

    invoke-virtual {v1, v3, v4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    iget-wide v3, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    iget-wide v5, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    iget v0, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    invoke-static {v0}, Lhb0;->checkPayType(I)Ljava/lang/String;

    move-result-object v8

    const-string v7, "vd_ott_history_more_video_cl"

    invoke-static/range {v3 .. v8}, Luz5;->c(JJLjava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private synthetic c1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-boolean v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->W:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N0(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {p0, v0, v2, p3}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->w(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;ZI)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :goto_0
    return v2
.end method

.method private synthetic d1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->P0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->W:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->Z:J

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->W:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_1
    return-void
.end method

.method private synthetic g1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->s0:Z

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->k0:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const-string p0, "vd_ott_history_more_loginclose_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 4

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->l0:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_login:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->k0:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_close_login:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->n0:Landroid/widget/ImageView;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->r0:I

    return-void
.end method

.method private synthetic j1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->onBackPressed()V

    return-void
.end method

.method public static synthetic k1(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)I
    .locals 3

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    iget-wide p0, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private synthetic o1(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->a0:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->O0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->Z0(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->c1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic r0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->n1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->i1()V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->e1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->a1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->Y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->g1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->q1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private x1(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->R:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/playercommon/R$string;->os_close:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$string;->os_back:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->R:Landroid/view/View;

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/playercommon/R$string;->talkback_close:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/transsion/playercommon/R$string;->talkback_back:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static synthetic y0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->m1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic z0(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->k1(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public N0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->q0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->W:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->inflateOperationBar()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->O:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    const-string v0, "vd_ott_history_more_mul"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {v0, v2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->v(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    if-nez p1, :cond_2

    iget v3, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->V:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    :goto_1
    invoke-virtual {v0, v3}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->z(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->U:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->U:Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->U:Landroid/widget/CheckBox;

    new-instance v3, Lii7;

    invoke-direct {v3, p0}, Lii7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->R:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->x1(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->R:Landroid/view/View;

    new-instance v3, Lji7;

    invoke-direct {v3, p0, p1}, Lji7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->T:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    iget-object v3, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->Y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->S:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->t1(Z)V

    return-void
.end method

.method public O0(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->X:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-boolean v3, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->j0:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoIsTact()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    const-string v5, "yyyy-MM-dd"

    invoke-static {v3, v4, v5}, Lvna;->d(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>()V

    iget-wide v4, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    iput-wide v4, v1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    iget-object v5, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->X:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->X:I

    move-object v1, v3

    :cond_1
    iget-object v3, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->Y(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    new-instance v1, Lth7;

    invoke-direct {v1, p0}, Lth7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {p1, p0, v1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->W(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->R0()V

    :goto_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->l0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    const/16 v2, 0x8

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_4

    :cond_6
    :goto_3
    move v1, v2

    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->e0:Landroid/view/View;

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6

    :cond_8
    :goto_5
    move v1, v0

    :goto_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->S:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->W:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    move v0, v2

    :cond_b
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->c0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->c0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_c
    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->z()V

    return-void
.end method

.method public P0()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->Z:J

    sub-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ingoreClickEvent interval:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "OnlineHistoryActivity"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final T0()V
    .locals 7

    sget v0, Lcom/transsion/onlinevideo/R$id;->ssptv_open:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v2, Lcom/transsion/onlinevideo/R$string;->history_login_content:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$a;

    invoke-direct {v2, p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$a;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/magicvideo/R$string;->login:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->r0:I

    invoke-direct {v4, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result p0

    const/4 v5, 0x0

    const/16 v6, 0x12

    invoke-virtual {v3, v2, v5, p0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result p0

    invoke-virtual {v3, v4, v5, p0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public U0()V
    .locals 2

    new-instance v0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->A(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->z(I)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_history:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public V0()V
    .locals 2

    sget v0, Lcom/transsion/onlinevideo/R$id;->topic_pull_damping_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->q0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ldi7;

    invoke-direct {v1, p0}, Ldi7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public W0()V
    .locals 5

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

    iput-object v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->T:Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$id;->title_bar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->R:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->x1(Z)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->R:Landroid/view/View;

    new-instance v3, Lki7;

    invoke-direct {v3, p0}, Lki7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/transsion/onlinevideo/R$id;->title_bar_checkBox:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->U:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/onlinevideo/R$string;->online_video_history_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->Y:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->T:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->T:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lcom/transsion/onlinevideo/R$id;->iv_history_clear:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->S:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_clear_history_all:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->S:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$c;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->ill_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/InterceptLinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->i0:Lcom/transsion/widgets/InterceptLinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->switch_hide:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->h0:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->j0:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->h0:Landroid/widget/Switch;

    new-instance v1, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$d;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$d;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public X0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    :cond_0
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    const-string v1, "OnlineHistoryActivity"

    if-eqz v0, :cond_1

    const-string v0, "init history palm is login!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/onlinevideo/history/HistoryManager;->h()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->G()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->G()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lrh7;

    invoke-direct {v1, p0}, Lrh7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_1
    const-string v0, "init local history"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->A()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->A()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lci7;

    invoke-direct {v1, p0}, Lci7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method

.method public final synthetic a1(Ljava/util/List;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->c0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/onlinevideo/R$string;->video_onlinevideo_recommend_tip:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>(Ljava/lang/String;)V

    iput-boolean v3, v1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    iget-object v3, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->c0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v2, v0, :cond_5

    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lt v3, v5, :cond_3

    move-object v3, v6

    goto :goto_2

    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    :goto_3
    filled-new-array {v1, v3, v6}, [Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->c0:Ljava/util/ArrayList;

    new-instance v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-direct {v4, v1}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>([Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->c0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->setTitle(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->O:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setAllEnable(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->X:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->setTitle(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->O:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setAllEnable(Z)V

    return-void
.end method

.method public final synthetic e1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->p0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_id()J

    move-result-wide p2

    const-string v0, "history_recommend"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getPay_type()I

    move-result v1

    invoke-static {p2, p3, v0, v1}, Luz5;->d(JLjava/lang/String;I)V

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    new-instance p3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_id()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_serial_source_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    sget-object p2, Ld06;->b:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    const-string p0, "vd_ott_history_more_nodata_video_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic f1(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->m0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->p0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->m0:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final synthetic h1()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->q0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public final synthetic i1()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->X0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->q0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance v1, Lwh7;

    invoke-direct {v1, p0}, Lwh7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public inflateOperationBar()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->O:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$id;->bottom_action_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iput-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->O:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->O:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->V:I

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setListFlag(I)V

    :cond_0
    return-void
.end method

.method public final synthetic l1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->a0:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->O0(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic m1(Ljava/util/List;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->b()Lzf7;

    move-result-object p1

    invoke-interface {p1}, Lzf7;->getYoutubeHistoryBeans()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lai7;

    invoke-direct {p1}, Lai7;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->a0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->a0:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->a0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    new-instance p1, Lbi7;

    invoke-direct {p1, p0}, Lbi7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic n1(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lxh7;

    invoke-direct {v0, p0, p1}, Lxh7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Ljava/util/List;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->W:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N0(Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/onlinevideo/R$layout;->activity_online_video_history:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->V:I

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "onlineHistory_is_hide_titbits"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->j0:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->initView()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->U0()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->Q0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->W0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->X0()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->S0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->registerPalmIdListeners()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->V0()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->unRegisterPalmIdListeners()V

    return-void
.end method

.method public onItemClick(I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->j()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->w1(Ljava/util/List;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "vd_ott_history_more_show"

    const-string v2, "status_0"

    invoke-static {v1, v2, v0}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->S:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->W:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->X0()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->S0()V

    return-void
.end method

.method public onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->X0()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->S0()V

    return-void
.end method

.method public final synthetic p1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OnlineHistoryActivity"

    const-string p2, "user is login clear all user history!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/onlinevideo/history/HistoryManager;->f(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->r(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public final synthetic q1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OnlineHistoryActivity"

    const-string p2, "user is login delete user history"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->j()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/onlinevideo/history/HistoryManager;->f(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object p2, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {p2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->j()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->s(Landroid/content/Context;Ljava/util/List;)V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N0(Z)V

    const-string p0, "vd_ott_history_more_mul_del_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic r1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->N0(Z)V

    return-void
.end method

.method public s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 4

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-ne p4, p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    invoke-virtual {v3, v0, p2, p3}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->w(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;ZI)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->O:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    check-cast p1, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->j()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->j()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setAllEnable(Z)V

    return-void
.end method

.method public setTitle(I)V
    .locals 4

    iput p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->P:I

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->T:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    sget v2, Lcom/transsion/magicvideo/R$string;->none_select:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-le p1, v1, :cond_1

    sget v2, Lcom/transsion/magicvideo/R$string;->items:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/transsion/magicvideo/R$string;->item:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->U:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->X:I

    sub-int/2addr v2, p0

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method public final t1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->i0:Lcom/transsion/widgets/InterceptLinearLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->i0:Lcom/transsion/widgets/InterceptLinearLayout;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public u1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    new-instance v0, Lsh7;

    invoke-direct {v0, p0}, Lsh7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public userLogout()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->userLogout()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->X0()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->S0()V

    return-void
.end method

.method public v1(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    new-instance p2, Luh7;

    invoke-direct {p2, p0}, Luh7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {p1, p3, p2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    new-instance p2, Lvh7;

    invoke-direct {p2, p0}, Lvh7;-><init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    invoke-virtual {p1, p4, p2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public w1(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$string;->clear_histories_recorded:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$string;->clear:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$string;->cancel:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->v1(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/onlinevideo/R$string;->clear_history:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$string;->clear:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$string;->cancel:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->v1(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
