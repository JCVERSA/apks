.class public Lcom/transsion/playercommon/widgets/MusicAlbumView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field public static final AUDIO:I = 0x0

.field public static final LOCK_SCREEN:I = 0x2

.field public static final VIDEO:I = 0x1

.field public static n:I = 0x56

.field public static o:I = 0x44


# instance fields
.field public b:Lcom/transsion/playercommon/widgets/CircleImageView;

.field public c:Lcom/google/android/material/imageview/ShapeableImageView;

.field public d:Landroid/widget/TextView;

.field public e:I

.field public f:Landroid/animation/ObjectAnimator;

.field public g:I

.field public h:Z

.field public i:Lcom/transsion/WindowInfoViewModel;

.field public j:Lrc2;

.field public volatile k:Z

.field public l:Landroidx/constraintlayout/utils/widget/ImageFilterView;

.field public final m:Landroidx/lifecycle/Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->e:I

    .line 3
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->k:Z

    .line 4
    new-instance v1, Lkt6;

    invoke-direct {v1, p0}, Lkt6;-><init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;)V

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->m:Landroidx/lifecycle/Observer;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->j(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->init(Landroid/content/Context;)V

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

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->e:I

    .line 9
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->k:Z

    .line 10
    new-instance v1, Lkt6;

    invoke-direct {v1, p0}, Lkt6;-><init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;)V

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->m:Landroidx/lifecycle/Observer;

    .line 11
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->j(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->e:I

    .line 15
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->k:Z

    .line 16
    new-instance v1, Lkt6;

    invoke-direct {v1, p0}, Lkt6;-><init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;)V

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->m:Landroidx/lifecycle/Observer;

    .line 17
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->j(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/widgets/MusicAlbumView;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->o(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/widgets/MusicAlbumView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->q(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/playercommon/widgets/MusicAlbumView;Lwoc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->l(Lwoc;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/playercommon/widgets/MusicAlbumView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->r(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/playercommon/widgets/MusicAlbumView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->n(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/playercommon/widgets/MusicAlbumView;Lcom/trello/rxlifecycle3/android/ActivityEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->k(Lcom/trello/rxlifecycle3/android/ActivityEvent;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/playercommon/widgets/MusicAlbumView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->p(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/playercommon/widgets/MusicAlbumView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->m(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l(Lwoc;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "windowOptions  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lwoc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAlbumView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lwoc;->a:I

    iget-boolean v1, p1, Lwoc;->g:Z

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->k:Z

    iget-boolean p1, p1, Lwoc;->f:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$id;->siv_album:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->k:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xfe

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0xe4

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->k:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 p1, 0xea

    goto :goto_3

    :cond_4
    :goto_2
    const/16 p1, 0xd2

    :goto_3
    sget v0, Lcom/transsion/playercommon/R$id;->circleView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_4
    return-void
.end method


# virtual methods
.method public getAlbumView()Lcom/google/android/material/imageview/ShapeableImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    return-object p0
.end method

.method public getLayoutId()I
    .locals 1

    iget p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->e:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$layout;->music_photo_lock_screen_view_layout:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/playercommon/R$layout;->music_photo_view_layout:I

    :goto_0
    return p0
.end method

.method public i(Landroid/content/Context;)I
    .locals 2

    iget v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->k:Z

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    sget p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->n:I

    :goto_0
    int-to-float p0, p0

    goto :goto_2

    :cond_1
    :goto_1
    sget p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->o:I

    goto :goto_0

    :goto_2
    invoke-static {p1, p0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/WindowInfoViewModel;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->i:Lcom/transsion/WindowInfoViewModel;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/transsion/playercommon/R$id;->circleView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/CircleImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->b:Lcom/transsion/playercommon/widgets/CircleImageView;

    sget v0, Lcom/transsion/playercommon/R$id;->siv_album:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    sget v0, Lcom/transsion/playercommon/R$id;->tv_cover:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->d:Landroid/widget/TextView;

    sget v0, Lcom/transsion/playercommon/R$id;->album_shadow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/utils/widget/ImageFilterView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->l:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    iget v1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->e:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->e:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/high16 v1, 0x429c0000    # 78.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->i(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->g:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->b:Lcom/transsion/playercommon/widgets/CircleImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v3, "rotation"

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    check-cast p1, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->lifecycle()Lmc7;

    move-result-object p1

    new-instance v0, Lqt6;

    invoke-direct {v0, p0}, Lqt6;-><init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->j:Lrc2;

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->i:Lcom/transsion/WindowInfoViewModel;

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->m:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final j(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    if-eqz p2, :cond_0

    sget-object p3, Lcom/transsion/playercommon/R$styleable;->MusicAlbumView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/transsion/playercommon/R$styleable;->MusicAlbumView_musicAlbumScene:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->e:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public final synthetic k(Lcom/trello/rxlifecycle3/android/ActivityEvent;)V
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/widgets/MusicAlbumView$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->pause()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final synthetic m(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    sget p1, Lcom/transsion/playercommon/R$drawable;->def_music_cover:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/transsion/playercommon/R$drawable;->def_music_cover:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/transsion/playercommon/R$drawable;->def_music_cover:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method public final synthetic n(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCoverImg "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MusicAlbumView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    sget p1, Lcom/transsion/playercommon/R$drawable;->def_music_cover:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public final synthetic o(Lcom/transsion/dbdata/beans/media/MediaItem;)V
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

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

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

    sget v1, Lcom/transsion/playercommon/R$drawable;->def_music_cover:I

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

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    sget p1, Lcom/transsion/playercommon/R$drawable;->def_music_cover:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->onFoldScreenChange()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->j:Lrc2;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lrc2;->dispose()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->i:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->m:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method

.method public onFoldScreenChange()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->h:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->i:Lcom/transsion/WindowInfoViewModel;

    iget-object v1, v1, Lcom/transsion/WindowInfoViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->k:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->v()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->u()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final synthetic p(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->d:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final synthetic q(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final synthetic r(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final s()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->i(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->g:I

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->b:Lcom/transsion/playercommon/widgets/CircleImageView;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->i:Lcom/transsion/WindowInfoViewModel;

    iget-object v4, v4, Lcom/transsion/WindowInfoViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->k:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "translationY"

    goto :goto_2

    :cond_2
    const-string v3, "translationX"

    :goto_2
    iget p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->g:I

    neg-int p0, p0

    int-to-float p0, p0

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v1

    aput p0, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public scale(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method

.method public setAlbumShadowVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->l:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setCoverImg(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v1, Lnt6;

    invoke-direct {v1, p0, p1}, Lnt6;-><init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCoverImg(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Llt6;

    invoke-direct {v1, p0, p1}, Llt6;-><init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCoverImg(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lot6;

    invoke-direct {v1, p0, p1}, Lot6;-><init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCoverText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->d:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->d:Landroid/widget/TextView;

    new-instance v1, Lpt6;

    invoke-direct {v1, p0, p1}, Lpt6;-><init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setCoverTextVisiable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->d:Landroid/widget/TextView;

    new-instance v1, Lmt6;

    invoke-direct {v1, p0, p1}, Lmt6;-><init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public setDefCoverImg(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v1, Ljt6;

    invoke-direct {v1, p0, p1}, Ljt6;-><init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MusicAlbumView"

    const-string v0, "setDefCoverImg: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setDefCoverImgSync(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MusicAlbumView"

    const-string v0, "setDefCoverImgSync: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setMusicMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->h:Z

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->setPause(Z)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->pause()V

    :goto_0
    return-void
.end method

.method public setPause(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->h:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->s()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->t()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final t()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->i(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->g:I

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->b:Lcom/transsion/playercommon/widgets/CircleImageView;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->i:Lcom/transsion/WindowInfoViewModel;

    iget-object v4, v4, Lcom/transsion/WindowInfoViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->k:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "translationY"

    goto :goto_2

    :cond_2
    const-string v3, "translationX"

    :goto_2
    iget p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->g:I

    neg-int p0, p0

    int-to-float p0, p0

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput p0, v4, v1

    const/4 p0, 0x0

    aput p0, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->i(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->g:I

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->b:Lcom/transsion/playercommon/widgets/CircleImageView;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->b:Lcom/transsion/playercommon/widgets/CircleImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final v()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->i(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->g:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->b:Lcom/transsion/playercommon/widgets/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->b:Lcom/transsion/playercommon/widgets/CircleImageView;

    iget p0, p0, Lcom/transsion/playercommon/widgets/MusicAlbumView;->g:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
