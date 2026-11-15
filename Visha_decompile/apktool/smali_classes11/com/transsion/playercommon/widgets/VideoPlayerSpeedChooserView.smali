.class public Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;
.super Landroidx/constraintlayout/motion/widget/MotionLayout;
.source "SourceFile"


# static fields
.field public static final SPEED_CHANGING_1:I = 0x0

.field public static final SPEED_CHANGING_2:I = 0x1

.field public static final SPEED_CHANGING_3:I = 0x2

.field public static final SPEED_CHANGING_4:I = 0x3

.field public static final SPEED_FIXED:I = -0x1


# instance fields
.field public b:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public c:Landroid/widget/TextView;

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;

.field public f:Landroid/widget/LinearLayout;

.field public g:Ljava/util/List;

.field public h:Landroid/content/Context;

.field public i:I

.field public j:Lcom/transsion/WindowInfoViewModel;

.field public k:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

.field public l:Z

.field public final m:Landroidx/lifecycle/Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->g:Ljava/util/List;

    const/4 v0, -0x2

    .line 3
    iput v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->i:I

    .line 4
    new-instance v0, Lr4c;

    invoke-direct {v0, p0}, Lr4c;-><init>(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->m:Landroidx/lifecycle/Observer;

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->g:Ljava/util/List;

    const/4 p2, -0x2

    .line 8
    iput p2, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->i:I

    .line 9
    new-instance p2, Lr4c;

    invoke-direct {p2, p0}, Lr4c;-><init>(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;)V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->m:Landroidx/lifecycle/Observer;

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->g:Ljava/util/List;

    const/4 p2, -0x2

    .line 13
    iput p2, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->i:I

    .line 14
    new-instance p2, Lr4c;

    invoke-direct {p2, p0}, Lr4c;-><init>(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;)V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->m:Landroidx/lifecycle/Observer;

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;Lwoc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->h(Lwoc;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->i:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->l:Z

    return-void
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v1, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/transsion/WindowInfoViewModel;

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->j:Lcom/transsion/WindowInfoViewModel;

    iget-object v1, v1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->m:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private h(Lwoc;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->b:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lwoc;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lwoc;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lwoc;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/playercommon/R$id;->start:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/playercommon/R$id;->land:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->d(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public changeChildVisible(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/transsion/playercommon/R$color;->transparent:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$drawable;->speed_chooser_view_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->e:Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;->setSelectedItemPosition(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->e:Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->h:Landroid/content/Context;

    sget v1, Lcom/transsion/playercommon/R$string;->play_speed_circle_2_0:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/transsion/playercommon/R$color;->transparent:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public final d(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->b:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->l:Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->k:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView$a;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView$a;-><init>(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->k:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->b:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->b:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->k:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->h:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;

    invoke-direct {v0}, Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->e:Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget v0, Lmb8;->a:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->play_speed_circle_3_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget v0, Lmb8;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->play_speed_circle_2_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget v0, Lmb8;->a:F

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->play_speed_circle_1_5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget v0, Lmb8;->a:F

    const/high16 v1, 0x3fa00000    # 1.25f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->play_speed_circle_1_25:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->e:Lcom/transsion/playercommon/adapter/VideoSpeedAdapter;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->g:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->b:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v1, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/WindowInfoViewModel;

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lwoc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$id;->start:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$id;->land:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->d(I)V

    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->h:Landroid/content/Context;

    sget v0, Lcom/transsion/playercommon/R$layout;->player_speed_choose_view:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$id;->motionLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->b:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v0, Lcom/transsion/playercommon/R$id;->ll_play_speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->f:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/playercommon/R$id;->rv_speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->d:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/playercommon/R$id;->tv_play_speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->f()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->e()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->j:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->m:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->b:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V

    return-void
.end method

.method public setSpeedLayout(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget p1, Lcom/transsion/playercommon/R$id;->half_up:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/playercommon/R$id;->half_down:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->d(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->g()V

    :goto_1
    return-void
.end method

.method public setSpeedState(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->i:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->i:I

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->changeChildVisible(I)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->l:Z

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->setSpeedState(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
