.class public Lcom/transsion/onlinevideo/topic/AllTagFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:I

.field public D:J

.field public E:Z

.field public F:I

.field public G:Landroid/widget/LinearLayout;

.field public H:Landroid/widget/LinearLayout;

.field public I:Lcom/google/android/material/appbar/AppBarLayout;

.field public J:Landroid/widget/FrameLayout;

.field public K:J

.field public L:I

.field public M:I

.field public N:Ljava/lang/String;

.field public O:Ljava/util/List;

.field public final P:Ljava/util/List;

.field public final Q:Ljava/util/List;

.field public R:Z

.field public S:Lcom/transsion/utils/CustomGridLayoutManager;

.field public T:I

.field public U:Landroid/view/View;

.field public V:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

.field public n:J

.field public o:Ljava/util/List;

.field public p:Ljava/lang/String;

.field public q:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

.field public r:I

.field public final s:I

.field public t:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

.field public u:Landroid/view/View;

.field public v:Z

.field public w:Landroid/widget/LinearLayout;

.field public x:Landroid/widget/LinearLayout;

.field public y:Landroid/widget/LinearLayout;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->s:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->E:Z

    const-string v0, "vd_ott_label_cl"

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->N:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->P:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->Q:Ljava/util/List;

    return-void
.end method

.method private B0(Z)V
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->E:Z

    if-eqz p0, :cond_0

    invoke-static {p1}, Lvz5;->c(Z)V

    :cond_0
    return-void
.end method

.method private F0()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->g0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->w:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->y:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->w:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->t:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private G0(I)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->g0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->y:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->w:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->t:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->B:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private H0()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->g0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->x:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->y:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->x:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->t:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic P(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r0()V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/onlinevideo/topic/AllTagFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->w0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/onlinevideo/topic/AllTagFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->v0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/onlinevideo/topic/AllTagFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->q0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/onlinevideo/topic/AllTagFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->t0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->n0()V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->o0()V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->s0()V

    return-void
.end method

.method public static synthetic X(Lcom/transsion/onlinevideo/topic/AllTagFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->p0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->lambda$onViewCreated$0()V

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->x0()V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/onlinevideo/topic/AllTagFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic b0(Lcom/transsion/onlinevideo/topic/AllTagFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c0(Lcom/transsion/onlinevideo/topic/AllTagFragment;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->t:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    return-object p0
.end method

.method public static bridge synthetic d0(Lcom/transsion/onlinevideo/topic/AllTagFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->n:J

    return-wide v0
.end method

.method public static bridge synthetic e0(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F0()V

    return-void
.end method

.method private f0(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->U:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/onlinevideo/R$layout;->adapter_video_tag:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->U:Landroid/view/View;

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->U:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->U:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->U:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    :cond_2
    add-int/2addr p1, v1

    return p1
.end method

.method private g0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->j0(ZLandroid/view/View;)V

    return-void
.end method

.method private h0()V
    .locals 12

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->R:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->O:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->P:Ljava/util/List;

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
    iget-object v3, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->O:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->O:Ljava/util/List;

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
    iget-object v4, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->P:Ljava/util/List;

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

.method private synthetic lambda$onViewCreated$0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->g0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private m0(ILjava/util/List;Z)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    iget-object p3, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->Q:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->P:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p3, :cond_1

    const/high16 p3, 0x41a00000    # 20.0f

    goto :goto_0

    :cond_1
    const/high16 p3, 0x41200000    # 10.0f

    :goto_0
    invoke-static {v2, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p3

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p3, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p3

    invoke-virtual {p1, p3, v1, p3, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    new-instance p3, Lcom/transsion/onlinevideo/topic/AllTagFragment$c;

    invoke-direct {p3, p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment$c;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance p3, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lab;

    invoke-direct {v0, p0}, Lab;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    invoke-virtual {p3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->P:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, p3

    move-object p3, p1

    move-object p1, v8

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p2, :cond_c

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->o:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

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

    if-eq v3, v2, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagId()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_7

    invoke-virtual {p1, v3}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->f0(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v5, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->T:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->s()Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object p0

    if-nez p0, :cond_c

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    goto :goto_6

    :cond_9
    :goto_4
    iget v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->L:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagType()I

    move-result v2

    if-ne v0, v2, :cond_b

    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    iget-wide v2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->K:J

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    invoke-virtual {p1, v0}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->f0(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->T:I

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p3, v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_6

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {p1, p3}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->C0(Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;Ljava/util/List;)V

    :cond_c
    :goto_6
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method private synthetic r0()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->t:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    sget p0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/onlinevideo/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method private synthetic s0()V
    .locals 6

    const/4 v3, 0x1

    iput v3, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r:I

    iget v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->n:J

    const/16 v4, 0x12

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->z0(JIIZ)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v0, v1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->y0(IIZ)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->t:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance v1, Lqa;

    invoke-direct {v1, p0}, Lqa;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic v0(Ljava/util/List;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->v:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v3, Lcom/transsion/onlinevideo/topic/AllTagFragment$3;

    invoke-direct {v3, p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment$3;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSource_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;->g(Z)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->S:Lcom/transsion/utils/CustomGridLayoutManager;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    :goto_1
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->parseMediaBean(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->g0()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->H0()V

    goto :goto_2

    :cond_6
    sget p1, Lcom/transsion/onlinevideo/R$string;->net_not_connect:I

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->G0(I)V

    :goto_2
    return-void
.end method

.method private synthetic w0(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->G:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->O:Ljava/util/List;

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
    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m0(ILjava/util/List;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->O:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->O:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->O:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->O:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->O:Ljava/util/List;

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
    iput-boolean v3, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->R:Z

    :cond_4
    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->h0()V

    iget p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r:I

    const/16 v1, 0x12

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->y0(IIZ)V

    :cond_5
    return-void
.end method


# virtual methods
.method public A0()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->q:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->h()V

    return-void
.end method

.method public C0(Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;Ljava/util/List;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->i0(Ljava/util/List;)Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public D0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->V:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    return-void
.end method

.method public E0()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->V:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;->a(Z)V

    :cond_0
    return-void
.end method

.method public i0(Ljava/util/List;)Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public initViewModel()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->q:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lva;

    invoke-direct {v2, p0}, Lva;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->q:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->g()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lwa;

    invoke-direct {v2, p0}, Lwa;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lxa;

    invoke-direct {v1, p0}, Lxa;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->q:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->getLoadStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lya;

    invoke-direct {v2, p0}, Lya;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public j0(ZLandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/onlinevideo/R$id;->online_video_empty_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_empty:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->y:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_loading_topic:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->w:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_no_wifi:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->x:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_content_retry:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->z:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_wifi_retry:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->A:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->u:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_no_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->B:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->y:Landroid/widget/LinearLayout;

    const/16 p2, 0x31

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p2, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->A:Landroid/widget/TextView;

    new-instance p2, Lcom/transsion/onlinevideo/topic/AllTagFragment$a;

    invoke-direct {p2, p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment$a;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->z:Landroid/widget/TextView;

    new-instance p2, Lcom/transsion/onlinevideo/topic/AllTagFragment$b;

    invoke-direct {p2, p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment$b;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public k0(Landroid/view/View;)V
    .locals 6

    new-instance v0, Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;->d(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    iget v2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->M:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;->g(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    new-instance v2, Luqa;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Luqa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_media:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->M:I

    if-ne v5, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    :goto_1
    invoke-direct {v0, v2, v5}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->S:Lcom/transsion/utils/CustomGridLayoutManager;

    iget-object v2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setPreLoadNumber(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->disableLoadMoreIfNotFullPage(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->enableLoadMoreEndClick(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    new-instance v1, Lsa;

    invoke-direct {v1, p0}, Lsa;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    new-instance v1, Lta;

    invoke-direct {v1, p0}, Lta;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->top_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->I:Lcom/google/android/material/appbar/AppBarLayout;

    iget v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F:I

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    iget v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F:I

    if-eq v0, v4, :cond_3

    return-void

    :cond_3
    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->G:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_filter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->H:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->fl_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->J:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->I:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->H:Landroid/widget/LinearLayout;

    new-instance v0, Lua;

    invoke-direct {v0, p0}, Lua;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public l0(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$id;->topic_pull_damping_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->t:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lza;

    invoke-direct {v0, p0}, Lza;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public final synthetic n0()V
    .locals 8

    iget v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-wide v3, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->n:J

    iget v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r:I

    const/16 v6, 0x12

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->z0(JIIZ)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->y0(IIZ)V

    :goto_0
    return-void
.end method

.method public final synthetic o0()V
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lra;

    invoke-direct {v1, p0}, Lra;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lpp3;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->D:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-wide v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->n:J

    iget v3, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->C:I

    invoke-static {v1, v2, v0, v3}, Lg16;->d(JFI)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->P:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->fragment_all:I

    return p0
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->J:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->J:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->H:Landroid/widget/LinearLayout;

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

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-wide/16 v0, 0xc9

    iput-wide v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->n:J

    const/4 p2, 0x2

    iput p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->L:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->K:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->M:I

    const-string v0, "all"

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->N:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->o:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->k0(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->initTitleBar(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->initViewModel()V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->l0(Landroid/view/View;)V

    new-instance v0, Lpa;

    invoke-direct {v0, p0}, Lpa;-><init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->D:J

    iget p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F:I

    if-ne p1, p2, :cond_0

    const-string p1, "topicname"

    iget-object p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->p:Ljava/lang/String;

    const-string v0, "vd_ott_label_more_show"

    invoke-static {v0, p1, p2}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->T:I

    return-void
.end method

.method public final synthetic p0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
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

    iget-object v2, v0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->N:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    iget-wide v1, v0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->n:J

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v3

    iget v6, v0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F:I

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getPay_type()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lhb0;->checkPayType(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v5, p3

    invoke-static/range {v1 .. v7}, Lg16;->b(JJIILjava/lang/String;)V

    iget-wide v12, v0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->n:J

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v14

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getPay_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const-string v16, "topic_more"

    invoke-static/range {v12 .. v17}, Ld06;->h(JJLjava/lang/String;I)V

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v1

    invoke-virtual {v9}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSource_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lzz5;->c(JLjava/lang/String;)V

    iget v1, v0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->G:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    iget-object v0, v0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->G:Landroid/widget/LinearLayout;

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

.method public final synthetic q0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->I:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public releaseWhenDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->releaseWhenDestroyView()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->I:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lzz5;->b()V

    :cond_0
    return-void
.end method

.method public final synthetic t0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    move-object p2, p1

    check-cast p2, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {p2, p3}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->r(I)Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r:I

    iget-wide v0, v0, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->tagId:J

    invoke-static {v0, v1}, Lzz5;->e(J)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->h0()V

    iget v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r:I

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1, p2}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->y0(IIZ)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->tagName:Ljava/lang/String;

    invoke-static {p0, p1}, Let7;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic u0(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_5

    invoke-direct {p0, v1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->B0(Z)V

    invoke-static {}, Lvz5;->b()V

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->H0()V

    invoke-direct {p0, v1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->B0(Z)V

    invoke-static {}, Lvz5;->b()V

    goto :goto_0

    :cond_2
    sget p1, Lcom/transsion/onlinevideo/R$string;->loading_error:I

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->G0(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->B0(Z)V

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->E:Z

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->m:Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->B0(Z)V

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->E:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public final synthetic x0()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->q:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-wide v3, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->n:J

    const/16 v6, 0x12

    const/4 v7, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->z0(JIIZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->A0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public y0(IIZ)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-array v1, v0, [Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;

    invoke-virtual {v3}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->s()Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->q:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->e([Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;IIZ)V

    return-void
.end method

.method public z0(JIIZ)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->q:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->d(JIIZ)V

    return-void
.end method
