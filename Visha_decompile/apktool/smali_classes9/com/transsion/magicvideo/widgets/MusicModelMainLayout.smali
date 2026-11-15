.class public Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;
.super Landroidx/constraintlayout/motion/widget/MotionLayout;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/ImageView;

.field public c:Landroidx/viewpager2/widget/ViewPager2;

.field public d:Lcom/transsion/playercommon/adapter/CustomViewAdapter2;

.field public e:Ljava/util/List;

.field public f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

.field public g:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayCurrentListView;

.field public h:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

.field public i:Landroid/os/Handler;

.field public j:Z

.field public k:Lcom/transsion/playercommon/activities/BaseActivity;

.field public l:J

.field public m:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->e:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->j:Z

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->l:J

    .line 6
    new-instance v0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->m:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 7
    new-instance v0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$2;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$2;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->n:Ljava/lang/Runnable;

    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->e:Ljava/util/List;

    .line 11
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->i:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->j:Z

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->l:J

    .line 14
    new-instance p2, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->m:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 15
    new-instance p2, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$2;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$2;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->n:Ljava/lang/Runnable;

    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->e:Ljava/util/List;

    .line 19
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->i:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->j:Z

    const-wide/16 p2, 0x0

    .line 21
    iput-wide p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->l:J

    .line 22
    new-instance p2, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->m:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 23
    new-instance p2, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$2;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$2;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->n:Ljava/lang/Runnable;

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->n(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;JLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->o(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;JLjava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->p(JLjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->m(I)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->j:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->l:J

    return-wide v0
.end method

.method public static bridge synthetic g(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->i:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->h:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->j:Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$layout;->layout_audio_mode_main_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_cover_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/magicvideo/R$id;->audio_player_main_viewpager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->c:Landroidx/viewpager2/widget/ViewPager2;

    sget v0, Lcom/transsion/magicvideo/R$id;->page_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->h:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->l()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;Landroid/graphics/Bitmap;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->t(Landroid/graphics/Bitmap;J)V

    return-void
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->k()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/magicvideo/R$drawable;->error_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private setWindowBg(Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->s(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->k()V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v0

    invoke-direct {p1, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p0, 0x168

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getBaseActivity()Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->k:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public getMediaBottomControllerLayout()Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->getMediaBottomControllerLayout()Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    return-void
.end method

.method public final l()V
    .locals 4

    new-instance v0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    new-instance v0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayCurrentListView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayCurrentListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->g:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayCurrentListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->setDayNightType(Z)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->g:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayCurrentListView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42960000    # 75.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->setTopMargin(I)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->g:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayCurrentListView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/utils/a;->f(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->setBottomMargin(I)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->g:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayCurrentListView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->d:Lcom/transsion/playercommon/adapter/CustomViewAdapter2;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->c:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->h:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->addMarkers(IZ)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->h:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setActiveMarker(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->m:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public final synthetic m(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->resume()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->pause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic n(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0xff

    invoke-static {p0, p1, p2, p3, v0}, Lvk1;->b(Landroid/content/Context;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lvk1;->n(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lvk1;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic o(JLandroid/graphics/Bitmap;)V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->l:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "blurBitmap: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicModelMainLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_1

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->r()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->setWindowBg(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->setTransparentNav()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->m:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lru6;

    invoke-direct {p1, p0, p2}, Lru6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic p(JLjava/lang/Throwable;)V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->l:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "MusicModelMainLayout"

    const-string p2, "Error in loadBackground"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->r()V

    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->pause()V

    :cond_0
    return-void
.end method

.method public final q(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicModelMainLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-wide v2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->l:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->l:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    iget-wide v4, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/transsion/magicvideo/R$drawable;->error_bg:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;

    invoke-direct {v0, p0, v2, v3}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;J)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBackground skip decode, invalid size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->r()V

    :cond_2
    :goto_1
    return-void
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->resume()V

    :cond_0
    return-void
.end method

.method public final s(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_1
    return-object v0

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_7
    return-object p1
.end method

.method public setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->k:Lcom/transsion/playercommon/activities/BaseActivity;

    return-void
.end method

.method public setCoverImg(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->setCoverImg(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->q(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public setIvCoverSize(Lwoc;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowOptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicModelMainLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lwoc;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->setIvCoverVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->setIvCoverVisibility(I)V

    :goto_0
    iget p1, p1, Lwoc;->a:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x439e0000    # 316.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->setIvCoverSize(II)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-virtual {p0, v1, v1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->setIvCoverSize(II)V

    :goto_1
    return-void
.end method

.method public setOnMusicModeLayoutItemListener(Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->setOnMusicModeLayoutItemListener(Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;)V

    :cond_0
    return-void
.end method

.method public setTransparentNav()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->k:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->setWindowFullScreen(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->k:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->k:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Le80;->t(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final t(Landroid/graphics/Bitmap;J)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->r()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Lsu6;

    invoke-direct {v2, p0, p1, v0, v1}, Lsu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;Landroid/graphics/Bitmap;II)V

    invoke-static {v2}, Lmc7;->D(Ljava/util/concurrent/Callable;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Ltu6;

    invoke-direct {v0, p0, p2, p3}, Ltu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;J)V

    new-instance v1, Luu6;

    invoke-direct {v1, p0, p2, p3}, Luu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;J)V

    invoke-virtual {p1, v0, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void

    :goto_1
    const-string p2, "MusicModelMainLayout"

    const-string p3, "copy bitmap failed"

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->r()V

    return-void

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->r()V

    return-void
.end method

.method public updateAddToAudioListIcon(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updateVideoAddToAudioListIcon(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_0
    return-void
.end method

.method public updateFavoriteIcon(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updateFavoriteIcon(ZZ)V

    :cond_0
    return-void
.end method

.method public updateMediaName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updateMediaName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePlayPauseIcon(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updatePlayPauseIcon(Z)V

    :cond_0
    return-void
.end method

.method public updateRepeatMode()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updateRepeatMode()V

    :cond_0
    return-void
.end method

.method public updateSpeed()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updateSpeed()V

    :cond_0
    return-void
.end method

.method public updateTimer(J)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updateTimer(J)V

    return-void
.end method
