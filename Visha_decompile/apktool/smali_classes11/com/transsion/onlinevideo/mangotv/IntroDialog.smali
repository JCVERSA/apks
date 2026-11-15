.class public Lcom/transsion/onlinevideo/mangotv/IntroDialog;
.super Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

.field public C:I

.field public D:J

.field public n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

.field public o:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/view/View;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->A:Ljava/lang/String;

    return-void
.end method

.method public static synthetic D(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->J(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/onlinevideo/mangotv/IntroDialog;Lcom/transsion/onlinevideo/adapter/TagAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->K(Lcom/transsion/onlinevideo/adapter/TagAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic F(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->H(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Landroid/view/View;)V
    .locals 1

    const-string p0, "ratingBarUnClickble"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "v"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic I(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic J(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lwz5;->n()V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method

.method public static L(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)Lcom/transsion/onlinevideo/mangotv/IntroDialog;
    .locals 1

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;-><init>()V

    iput-object p0, v0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    iput-object p1, v0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->B:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    return-object v0
.end method

.method private N(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V
    .locals 7

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getCategory()I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->C:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->D:J

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getYear()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getYear()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->A:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->p:Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getScores()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->x:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getScores()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getTags()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v4, 0x8

    if-eqz v0, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    const-string v0, "vd_ott_detail_label_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/onlinevideo/adapter/TagAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/TagAdapter;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v3, Ld55;

    invoke-direct {v3, p0, v0}, Ld55;-><init>(Lcom/transsion/onlinevideo/mangotv/IntroDialog;Lcom/transsion/onlinevideo/adapter/TagAdapter;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->t:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->w:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getCoverY()Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    invoke-static {v0, v1, v3, v5}, Lly4;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->hasDirectors()Z

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->hasActors()Z

    move-result v1

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v4

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->v:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v2, v4

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->u:Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$string;->video_onlinevideo_directors:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getDirectors()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->v:Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$string;->video_onlinevideo_actors:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getActors()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic w(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->I(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public G()I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    div-int/lit8 p0, p0, 0x10

    sub-int/2addr v0, p0

    return v0
.end method

.method public final synthetic K(Lcom/transsion/onlinevideo/adapter/TagAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/Tag;

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getTopicId()J

    move-result-wide p3

    long-to-int p3, p3

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setTopic_id(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setTopic_name(Ljava/lang/String;)V

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setData_type(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getTagType()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setSourceType(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getTagId()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-long v0, p4

    invoke-virtual {p2, v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setChannel(J)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getSourceType()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setBottom_position(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getName()Ljava/lang/String;

    move-result-object p4

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->D:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getTagId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "vd_ott_detail_label_cl"

    invoke-static {v2, p4, v0, v1, p1}, Lwz5;->g0(Ljava/lang/String;Ljava/lang/String;JI)V

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    const-string p2, "vd_ott_label_cl"

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    return-void
.end method

.method public final M()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {}, Lf38;->c()Lf38;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->B:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getDuration()I

    move-result v2

    int-to-long v2, v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Lf38;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget v2, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->C:I

    if-eq v2, v4, :cond_2

    :cond_1
    iget v2, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->C:I

    if-ne v2, v3, :cond_3

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    iget-object v6, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->r:Landroid/widget/TextView;

    const/16 v7, 0x8

    if-eqz v0, :cond_4

    move v8, v7

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->s:Landroid/view/View;

    if-eqz v0, :cond_5

    move v0, v7

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->z:Landroid/view/View;

    if-nez v2, :cond_6

    move v6, v7

    goto :goto_4

    :cond_6
    move v6, v5

    :goto_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->y:Landroid/widget/TextView;

    if-nez v2, :cond_7

    move v5, v7

    :cond_7
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->C:I

    if-ne v0, v4, :cond_8

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    if-ne v0, v3, :cond_9

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->y:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$string;->video_category_variety:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    :goto_5
    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->layout_introduce:I

    return p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    const-string v0, "IntroDialog"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->G()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->intro_close:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    new-instance v1, Lc55;

    invoke-direct {v1, v0}, Lc55;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public v(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/transsion/onlinevideo/R$id;->intro_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->q:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->intro_flow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->score:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->p:Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;

    sget v0, Lcom/transsion/onlinevideo/R$id;->intro_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->r:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->intro_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->y:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->intro_date_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->s:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->intro_time_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->z:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->intro_actors:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->v:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->w:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->introduce_infos:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->t:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->intro_directors:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->u:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->intro_score_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->x:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->score_container_unbale:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, La55;

    invoke-direct {v2}, La55;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lb55;

    invoke-direct {v0}, Lb55;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->N(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->M()V

    :cond_0
    return-void
.end method
