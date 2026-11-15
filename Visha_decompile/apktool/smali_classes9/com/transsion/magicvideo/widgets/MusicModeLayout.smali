.class public Lcom/transsion/magicvideo/widgets/MusicModeLayout;
.super Landroidx/constraintlayout/motion/widget/MotionLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public c:Landroid/widget/ImageView;

.field public d:Ljava/lang/Boolean;

.field public e:Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;

.field public f:Ljava/util/HashMap;

.field public final g:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;

.field public h:J

.field public i:J

.field public ivMediaCover:Lcom/transsion/widgets/RoundImageView;

.field public j:I

.field public k:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field public l:Z

.field public m:F

.field public mediaBottomControllerLayout:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;

.field public mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

.field public mediaProgressInfoLayout:Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;

.field public musicTip:Landroid/widget/TextView;

.field public n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->g:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;

    .line 4
    new-instance v0, Lhu6;

    invoke-direct {v0, p0}, Lhu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->n:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    .line 8
    new-instance p2, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->g:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;

    .line 9
    new-instance p2, Lhu6;

    invoke-direct {p2, p0}, Lhu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->n:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    .line 13
    new-instance p2, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->g:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;

    .line 14
    new-instance p2, Lhu6;

    invoke-direct {p2, p0}, Lhu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->n:Ljava/lang/Runnable;

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private I(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updatePlayPauseIcon(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->w(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->s(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->v(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->u()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->t(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->i:J

    return-wide v0
.end method

.method public static bridge synthetic g(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    return-object p0
.end method

.method private getCustomEqIndex()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public static bridge synthetic h(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->j:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->e:Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/magicvideo/widgets/MusicModeLayout;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->i:J

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/magicvideo/widgets/MusicModeLayout;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->j:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/magicvideo/widgets/MusicModeLayout;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->A(I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->D(Z)V

    return-void
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaProgressInfoLayout:Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->getTvMediaPlayTitle()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Liu6;

    invoke-direct {v1, p0}, Liu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lju6;

    invoke-direct {v1, p0}, Lju6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->g:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->setOnItemClick(Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->h:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->r()Z

    move-result p1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k:Lcom/transsion/magicvideo/player/VideoPlayManager;

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Q1(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->shouldShowPauseButton()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->I(Z)V

    return-void
.end method

.method public B(Z)V
    .locals 13

    const-wide/16 v0, 0x64

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v6}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    int-to-long v6, v6

    :try_start_1
    iget-object v8, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v8}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v8, v8

    :try_start_2
    iget-wide v10, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->h:J

    cmp-long v10, v10, v6

    if-eqz v10, :cond_0

    iput-wide v6, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->h:J

    invoke-static {v6, v7}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updateMediaTotalProgress(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v10

    goto :goto_2

    :cond_0
    :goto_0
    iget-wide v10, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->h:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v12, v8, v10

    if-lez v12, :cond_1

    move-wide v8, v10

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v10, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v10, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v10, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    cmp-long p1, v6, v4

    if-gtz p1, :cond_3

    invoke-virtual {p0, v8, v9, v6, v7}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->x(JJ)V

    goto :goto_1

    :cond_3
    invoke-static {v8, v9}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, v7}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->G(Ljava/lang/String;Ljava/lang/String;)V

    mul-long/2addr v8, v0

    long-to-float p1, v8

    long-to-float v0, v6

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->H(I)V

    :goto_1
    return-void

    :catchall_1
    move-exception v10

    move-wide v8, v4

    goto :goto_2

    :catchall_2
    move-exception v10

    move-wide v6, v4

    move-wide v8, v6

    :goto_2
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v11, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v11, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v11, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    cmp-long p1, v6, v4

    if-gtz p1, :cond_5

    invoke-virtual {p0, v8, v9, v6, v7}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->x(JJ)V

    goto :goto_3

    :cond_5
    invoke-static {v8, v9}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, v7}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->G(Ljava/lang/String;Ljava/lang/String;)V

    mul-long/2addr v8, v0

    long-to-float p1, v8

    long-to-float v0, v6

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->H(I)V

    :goto_3
    throw v10
.end method

.method public final C()V
    .locals 1

    sget-object v0, Ljrb;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final D(Z)V
    .locals 9

    sget-boolean v0, Lpp3;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->removeCustomView(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->getItemViewIndex(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    new-instance v8, Lcom/transsion/playercommon/data/CustomIconItemData;

    sget v3, Lcom/transsion/magicvideo/R$drawable;->ic_music_add_to_audio_list:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/magicvideo/R$string;->visha_add_to_audio_playlist:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x6

    const/4 v5, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/transsion/playercommon/data/CustomIconItemData;-><init>(ILjava/lang/String;ZZI)V

    invoke-virtual {v1, v8, p1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->addItem(Lcom/transsion/playercommon/data/CustomIconItemData;I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final E()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->F()V

    return-void
.end method

.method public final F()V
    .locals 13

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_audio_player_eq_on_new:I

    sget-boolean v0, Lpp3;->u:Z

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Llc3;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/magicvideo/R$drawable;->ic_custom_dolby_open:I

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_0
    sget v0, Lcom/transsion/magicvideo/R$drawable;->ic_custom_dolby_close:I

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    new-instance v1, Lcom/transsion/playercommon/data/CustomIconItemData;

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/transsion/playercommon/data/CustomIconItemData;-><init>(ILjava/lang/String;ZZI)V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->addItem(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0, v8}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->updateItemIcon(Landroid/view/View;I)V

    goto :goto_2

    :cond_2
    invoke-static {}, Ljrb;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v7, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    new-instance v9, Lcom/transsion/playercommon/data/CustomIconItemData;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/playercommon/data/CustomIconItemData;-><init>(ILjava/lang/String;ZZI)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->getCustomEqIndex()I

    move-result p0

    invoke-virtual {v8, v9, p0}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->addItem(Lcom/transsion/playercommon/data/CustomIconItemData;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v7, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljrb;->c()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->removeCustomView(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaProgressInfoLayout:Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->setTvMediaCurrentProgress(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaProgressInfoLayout:Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->setTvMediaTotalProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final H(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaProgressInfoLayout:Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->setMediaProgressBar(I)V

    :cond_0
    return-void
.end method

.method public getMediaBottomControllerLayout()Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaBottomControllerLayout:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$layout;->layout_video_play_by_audio_mode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k:Lcom/transsion/magicvideo/player/VideoPlayManager;

    sget p1, Lcom/transsion/magicvideo/R$id;->iv_play_cover:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/RoundImageView;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    sget p1, Lcom/transsion/magicvideo/R$id;->tv_music_tip:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->musicTip:Landroid/widget/TextView;

    sget p1, Lcom/transsion/magicvideo/R$id;->media_control_icon_view_group:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    sget p1, Lcom/transsion/magicvideo/R$id;->media_progress_info_layout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaProgressInfoLayout:Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_favorite:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->c:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/magicvideo/R$id;->media_bottom_controller_layout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaBottomControllerLayout:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaProgressInfoLayout:Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->getMediaSeekBar()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->q()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->p()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updateSpeed()V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->h:J

    return-void
.end method

.method public final n(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$id;->media_control_icon_view_group:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v0, 0x2

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_play_cover:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    sget v0, Lcom/transsion/magicvideo/R$id;->media_progress_info_layout:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final o(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 3

    const/4 v0, -0x1

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v1, 0x0

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_play_cover:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->y()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->z()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->C()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final p()V
    .locals 10

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->F()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    new-instance v9, Lcom/transsion/playercommon/data/CustomIconItemData;

    sget v4, Lcom/transsion/magicvideo/R$drawable;->ic_custom_back_video:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/magicvideo/R$string;->talkback_back:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v6, 0x1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/transsion/playercommon/data/CustomIconItemData;-><init>(ILjava/lang/String;ZZI)V

    invoke-virtual {v2, v9}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->addItem(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    new-instance v9, Lcom/transsion/playercommon/data/CustomIconItemData;

    sget v4, Lcom/transsion/magicvideo/R$drawable;->ic_custom_video_convert_mp3:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/transsion/magicvideo/R$string;->convert_to_audio:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/transsion/playercommon/data/CustomIconItemData;-><init>(ILjava/lang/String;ZZI)V

    invoke-virtual {v2, v9}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->addItem(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pause()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->z()V

    return-void
.end method

.method public r()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k:Lcom/transsion/magicvideo/player/VideoPlayManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeCustomView(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->getItemViewIndex(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->removeItem(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resume()V
    .locals 1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->B(Z)V

    return-void
.end method

.method public final synthetic s(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->e:Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;->b()V

    :cond_0
    return-void
.end method

.method public setCoverImg(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lku6;

    invoke-direct {v1, p0, p1}, Lku6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIvCoverSize(II)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->n(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v1, :cond_1

    const-string p1, "1:1"

    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->o(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIvCoverVisibility(I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIvCoverVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isInUiThread:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MusicModeLayout"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, -0x1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget p1, Lcom/transsion/magicvideo/R$id;->iv_play_cover:I

    iput p1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-lez p1, :cond_1

    sget p1, Lcom/transsion/magicvideo/R$id;->media_control_icon_view_group:I

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 p1, 0x2

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    const p1, 0x3ecccccd    # 0.4f

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    sget p1, Lcom/transsion/magicvideo/R$id;->media_progress_info_layout:I

    iput p1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sget p1, Lcom/transsion/magicvideo/R$id;->media_progress_info_layout:I

    iput p1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnMusicModeLayoutItemListener(Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->e:Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;

    return-void
.end method

.method public shouldShowPauseButton()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p0

    return p0
.end method

.method public final synthetic t(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->e:Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;->a()V

    return-void
.end method

.method public final synthetic u()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->B(Z)V

    return-void
.end method

.method public updateFavoriteIcon(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_farvorited_on_music:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_favorites_music:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->c:Landroid/widget/ImageView;

    invoke-static {p1, p0}, Lcd;->g(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->c:Landroid/widget/ImageView;

    invoke-static {p0}, Lcd;->i(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateMediaName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaProgressInfoLayout:Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->setMediaPlayTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateMediaTotalProgress(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaProgressInfoLayout:Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->setTvMediaTotalProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePlayPauseIcon(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaBottomControllerLayout:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->getPlayPauseImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    sget v1, Lcom/transsion/magicvideo/R$drawable;->icon_video_play_pause_new:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/transsion/magicvideo/R$drawable;->icon_video_play_play_new:I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayPauseIcon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->d:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",isPlaying:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicModeLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->d:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->d:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->z()V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->B(Z)V

    invoke-static {v0, v1}, Lcd;->f(Landroid/widget/ImageView;I)V

    return-void

    :cond_4
    :goto_1
    invoke-static {v0, v1}, Lcd;->d(Landroid/widget/ImageView;I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public updateRepeatMode()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw6c;->a(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lhsb;->a:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/transsion/widgetslib/R$string;->os_play:I

    goto :goto_0

    :cond_0
    sget-object v1, Lhsb;->a:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/transsion/widgetslib/R$string;->os_List_loop:I

    goto :goto_0

    :cond_1
    sget-object v1, Lhsb;->a:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget v0, Lcom/transsion/widgetslib/R$string;->os_shuffle:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/widgetslib/R$string;->os_single_loop:I

    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaBottomControllerLayout:Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;->updateRepeatBtnState(I)V

    return-void
.end method

.method public updateSpeed()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw6c;->i(Landroid/content/Context;)F

    move-result v0

    iget v1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->m:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const-string v0, ""

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/magicvideo/R$string;->speed_icon:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->removeCustomView(I)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v1, p0, v4}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->updateItemText(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    new-instance v8, Lcom/transsion/playercommon/data/CustomIconItemData;

    sget v3, Lcom/transsion/magicvideo/R$drawable;->ic_music_speed_light:I

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v5, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/transsion/playercommon/data/CustomIconItemData;-><init>(ILjava/lang/String;ZZI)V

    const/4 v2, 0x0

    invoke-virtual {p0, v8, v2}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->addItem(Lcom/transsion/playercommon/data/CustomIconItemData;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public updateTimer(J)V
    .locals 9

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    invoke-static {p1, p2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->updateItemText(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    new-instance v1, Lcom/transsion/playercommon/data/CustomIconItemData;

    sget v4, Lcom/transsion/magicvideo/R$drawable;->music_custom_timer:I

    invoke-static {p1, p2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v6, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/playercommon/data/CustomIconItemData;-><init>(ILjava/lang/String;ZZI)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->addItem(Lcom/transsion/playercommon/data/CustomIconItemData;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->removeCustomView(I)V

    :goto_0
    return-void
.end method

.method public updateVideoAddToAudioListIcon(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic v(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->E()V

    return-void
.end method

.method public final synthetic w(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/transsion/magicvideo/R$drawable;->def_music_cover:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    iget-wide v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    sget v0, Lcom/transsion/magicvideo/R$drawable;->def_music_cover:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->ivMediaCover:Lcom/transsion/widgets/RoundImageView;

    invoke-static {p0}, Lpcc;->b(Lcom/transsion/widgets/RoundImageView;)V

    nop

    :cond_2
    :goto_1
    return-void
.end method

.method public final x(JJ)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->h:J

    invoke-static {p1, p2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updateMediaTotalProgress(Ljava/lang/String;)V

    return-void
.end method

.method public final y()V
    .locals 3

    sget-object v0, Ljrb;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lgu6;

    invoke-direct {v2, p0}, Lgu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->E()V

    return-void
.end method

.method public z()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
