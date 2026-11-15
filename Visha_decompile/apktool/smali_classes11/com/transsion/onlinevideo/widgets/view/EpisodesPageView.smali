.class public Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$d;,
        Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$e;
    }
.end annotation


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/transsion/widgets/CustomTabLayout;

.field public h:Landroidx/viewpager2/widget/ViewPager2;

.field public i:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$d;

.field public m:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$e;

.field public n:Landroid/view/View;

.field public o:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public p:F

.field public q:F

.field public r:Z

.field public s:I

.field public t:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;Ljava/util/List;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->o(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->m(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->n(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->p(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->m:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$e;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)Lcom/transsion/widgets/CustomTabLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->g:Lcom/transsion/widgets/CustomTabLayout;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->h:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method private setEpisodes(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->g:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout;->removeAllTabs()V

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->k:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->g:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {v4}, Lcom/transsion/widgets/CustomTabLayout;->newTab()Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgets/CustomTabLayout$Tab;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->g:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {v1, v4}, Lcom/transsion/widgets/CustomTabLayout;->addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->g:Lcom/transsion/widgets/CustomTabLayout;

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->n:Landroid/view/View;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->i:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->q()V

    return-void

    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->i:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setVideoInfo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getCoverY()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    invoke-static {v0, v1, v2, v3}, Lly4;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getUpdateSerialNo()I

    move-result v1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/onlinevideo/R$string;->video_onlinevideo_episodes_update:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getUpdateSerialNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getUpdateSerialNo()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/onlinevideo/R$string;->video_onlinevideo_episodes_all:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final h()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->t:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->t:Landroid/animation/ValueAnimator;

    new-instance v1, Lxb3;

    invoke-direct {v1, p0}, Lxb3;-><init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->t:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$c;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$c;-><init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final i()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->t:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->t:Landroid/animation/ValueAnimator;

    new-instance v1, Lyb3;

    invoke-direct {v1, p0}, Lyb3;-><init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final j()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->h()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->i()V

    :goto_0
    return-void
.end method

.method public final k(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->p:F

    sub-float v0, p1, v0

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->r:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->s:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iput-boolean v2, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->r:Z

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->r:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iput p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->q:F

    return v2

    :cond_3
    iget-boolean p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->r:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->j()V

    :cond_4
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->r:Z

    return v2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->p:F

    iput p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->q:F

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->r:Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->t:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    return v2
.end method

.method public final l()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$layout;->view_episodes_page:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->drag_handle:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->b:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_episode_header:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->c:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_episode_cover:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->d:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_episode_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->e:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_episode_count:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->f:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tab_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->g:Lcom/transsion/widgets/CustomTabLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->view_pager:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->h:Landroidx/viewpager2/widget/ViewPager2;

    sget v0, Lcom/transsion/onlinevideo/R$id;->space_between:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->n:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->s:I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->r()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->k:Ljava/util/List;

    new-instance v0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->k:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->i:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->h:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->s()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->i:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;

    new-instance v1, Lvb3;

    invoke-direct {v1, p0}, Lvb3;-><init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;->setOnEpisodeClickListener(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter$a;)V

    return-void
.end method

.method public final synthetic m(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final synthetic n(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public notifyAdapter()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->i:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final synthetic o(Ljava/util/List;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->l:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->h:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1e

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->l:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$d;

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->j:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$d;->a(Ljava/util/List;I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->i:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->h:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->o:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->t:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->l:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$d;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->m:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$e;

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->k:Ljava/util/List;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public final synthetic p(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->k(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final q()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v2

    sget-wide v4, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    div-int/lit8 v1, v1, 0x1e

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->h:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->h:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 1

    new-instance v0, Lwb3;

    invoke-direct {v0, p0}, Lwb3;-><init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final s()V
    .locals 3

    new-instance v0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$a;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$a;-><init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->o:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->h:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->g:Lcom/transsion/widgets/CustomTabLayout;

    new-instance v1, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$b;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$b;-><init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->g:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$color;->os_color_white40:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/onlinevideo/R$color;->os_color_white90:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgets/CustomTabLayout;->setTabTextColors(II)V

    return-void
.end method

.method public setOnEpisodeClickListener(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->l:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$d;

    return-void
.end method

.method public setOnViewHiddenListener(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->m:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$e;

    return-void
.end method

.method public setVideoDetail(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->setVideoInfo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSeriesId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->setEpisodes(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method
