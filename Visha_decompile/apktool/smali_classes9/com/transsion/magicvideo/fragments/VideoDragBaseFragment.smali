.class public Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;
.super Lcom/transsion/magicvideo/fragments/VideosBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/adapter/BucketDateAdapter$a;
.implements Lcom/transsion/magicvideo/adapter/BucketDateAdapter$c;


# instance fields
.field public Z:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public a0:I

.field public b0:Landroid/view/View$DragShadowBuilder;

.field public c0:Lcec;

.field public d0:I

.field public e0:Ljava/lang/String;

.field public f0:I

.field public g0:Landroid/widget/FrameLayout;

.field public h0:Ljava/util/List;

.field public i0:Z

.field public j0:[F

.field public k0:Landroid/os/Bundle;

.field public l0:F

.field public m0:F

.field public n0:F

.field public o0:Z

.field public p0:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->a0:I

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->e0:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->f0:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->h0:Ljava/util/List;

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->i0:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->o0:Z

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lgrb;

    invoke-direct {v1, p0}, Lgrb;-><init>(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->p0:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic D1(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->N1(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic E1(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->h0:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic F1(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->i0:Z

    return-void
.end method

.method public static synthetic G1(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic H1(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private K1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->c0:Lcec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcec;->release()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbec;->a(Landroid/content/Context;Z)Lcec;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->c0:Lcec;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$d;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$d;-><init>(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)V

    invoke-interface {v0, v1}, Lcec;->a(Laec;)V

    return-void
.end method

.method private synthetic N1(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->i0:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v3, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    if-ne v2, v3, :cond_1

    iget-boolean v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    if-ne v2, v3, :cond_4

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->S1(Landroid/view/View;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->b0:Landroid/view/View$DragShadowBuilder;

    invoke-virtual {p1, p0}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public I1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setOnDragListener(Lcom/transsion/magicvideo/adapter/BucketDateAdapter$a;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setOnTitleClickListener(Lcom/transsion/magicvideo/adapter/BucketDateAdapter$c;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setOnSelectListener(Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v1, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$b;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$b;-><init>(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v1, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$c;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$c;-><init>(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public final J1(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    if-ne v1, v2, :cond_0

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object p0
.end method

.method public L1(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->getDragAnimationView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->getDragAnimationView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->Z:Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/magicvideo/R$id;->vs_video_stack:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$a;-><init>(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public M1(Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->Q1()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->f0:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbec;->b(Landroid/content/Context;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->T1(Landroid/view/View;Lcom/transsion/dbdata/beans/media/MediaItem;[FZ)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->cancelDragAndDrop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoDragBaseFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->e0:Ljava/lang/String;

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->f0:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->U1(Landroid/view/View;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public O1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->cancelDragAndDrop()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->h0:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public final P1()V
    .locals 15

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->J1(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    const/16 v4, 0x8

    if-eqz v3, :cond_8

    if-lez v1, :cond_8

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    iget v6, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->a0:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v9, Lcom/transsion/magicvideo/R$layout;->item_video_stack_list:I

    invoke-virtual {v6, v9, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    goto :goto_2

    :cond_2
    if-ne v6, v2, :cond_3

    iget-object v6, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v9, Lcom/transsion/magicvideo/R$layout;->item_video_stack_grid:I

    invoke-virtual {v6, v9, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    :cond_3
    :goto_2
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v6, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/media/MediaItem;

    sget v9, Lcom/transsion/magicvideo/R$id;->iv_avatar:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    sget v10, Lcom/transsion/magicvideo/R$id;->tv_time:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    iget-object v13, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v12, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v13

    invoke-static {v12, v13, v11, v9}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    iget-wide v11, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-nez v9, :cond_4

    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    iget-wide v11, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v11, v12}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Landroid/view/View;->setRotation(F)V

    const/high16 v6, 0x40800000    # 4.0f

    if-ne v5, v7, :cond_5

    invoke-static {v6}, Lc39;->a(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v6}, Lc39;->a(F)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    const/4 v7, 0x2

    if-ne v5, v7, :cond_6

    const/high16 v7, -0x3f600000    # -5.0f

    invoke-virtual {v8, v7}, Landroid/view/View;->setRotation(F)V

    invoke-static {v6}, Lc39;->a(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v6}, Lc39;->a(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v8, v6}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    iget-object v6, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_7
    new-instance v1, Lcom/transsion/widgets/BadgeView;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgets/BadgeView;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/transsion/widgets/BadgeView;->setRedPointType(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x35

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_8
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public Q1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->y()I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->a0:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->P1()V

    return-void
.end method

.method public R1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->o0:Z

    return-void
.end method

.method public final S1(Landroid/view/View;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 7

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "VideoDragBaseFragment"

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v5, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v5, :cond_1

    sget v5, Lcom/transsion/magicvideo/R$string;->yoututbe_video_drag_error:I

    invoke-static {v5}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v6, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v5, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :cond_2
    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skip drag item for null uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vishaplayerhd"

    invoke-static {v2, v3, v5}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    goto :goto_0

    :cond_4
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    const-string p0, "setRefreshDragData abort: no valid uri in selection"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/transsion/magicvideo/R$string;->operation_fail:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_6
    :try_start_0
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->b0:Landroid/view/View$DragShadowBuilder;

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->K1()V

    const/16 v0, 0x301

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->d0:I

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->b0:Landroid/view/View$DragShadowBuilder;

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w1(Z)V

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->z1(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lbec;->b(Landroid/content/Context;)[F

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lb39;->b(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->h0:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->h0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->h0:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    if-le v1, v3, :cond_7

    return-void

    :cond_7
    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->h0:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lbec;->b(Landroid/content/Context;)[F

    move-result-object v5

    invoke-virtual {p0, v3, v2, v5, p1}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->T1(Landroid/view/View;Lcom/transsion/dbdata/beans/media/MediaItem;[FZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startDragAnimation error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-void
.end method

.method public final T1(Landroid/view/View;Lcom/transsion/dbdata/beans/media/MediaItem;[FZ)V
    .locals 11

    invoke-static {}, Lav3;->z()Z

    move-result v3

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    if-ne v0, v1, :cond_e

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x2

    new-array v6, p3, [I

    new-array v7, p3, [I

    sget p3, Lcom/transsion/magicvideo/R$id;->ll_bucket_fragment_item:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    if-nez p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p3, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljf;->m(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljf;->f(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->k0:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    const-string v4, "position_x"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->l0:F

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->k0:Landroid/os/Bundle;

    const-string v4, "position_y"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->m0:F

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->k0:Landroid/os/Bundle;

    const-string v4, "scale"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    aget v4, v6, v2

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->l0:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v6, v2

    aget v4, v6, v1

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget v8, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->m0:F

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, v6, v1

    aget v4, v7, v2

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v7, v2

    aget v4, v7, v1

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v8

    float-to-int v0, v4

    aput v0, v7, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->l0:F

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->m0:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->a0:I

    const/16 v4, 0x64

    const v5, 0x3f333333    # 0.7f

    const/high16 v8, 0x42dc0000    # 110.0f

    if-ne v0, v1, :cond_7

    new-instance p4, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p4, v0, p2}, Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-direct {p2, v0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    aget v9, v6, v2

    sub-int/2addr v0, v9

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v0, v9

    aget v2, v7, v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_5
    aget v0, v6, v2

    aget v2, v7, v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    sget v0, Lcom/transsion/magicvideo/R$id;->cl_drag_animation_view:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    aget v0, v6, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->m0:F

    add-float/2addr v8, v9

    sub-float/2addr v0, v8

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p4, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p4, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->Z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    filled-new-array {v1, v4}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v8, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$e;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$e;-><init>(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;Lcom/transsion/magicvideo/widgets/VideoDragAnimationView;ZLandroid/view/View;Lcom/transsion/playercommon/widgets/RoundFrameLayout;[I[I)V

    invoke-virtual {p2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_5

    :cond_7
    const/4 p1, 0x3

    if-ne v0, p1, :cond_c

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result p1

    new-instance v7, Lcom/transsion/magicvideo/widgets/VideoGridDragAnimationView;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, p2}, Lcom/transsion/magicvideo/widgets/VideoGridDragAnimationView;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-direct {p2, v0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x1f4

    if-eqz v3, :cond_9

    aget v9, v6, v2

    sub-int v9, p1, v9

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    if-eqz p4, :cond_8

    goto :goto_2

    :cond_8
    move v2, v0

    :goto_2
    int-to-float v0, v2

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    mul-float/2addr v0, v2

    iget v10, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->l0:F

    add-float/2addr v0, v10

    sub-float/2addr v9, v0

    div-float/2addr v9, v2

    float-to-int v0, v9

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_4

    :cond_9
    aget v9, v6, v2

    int-to-float v9, v9

    if-eqz p4, :cond_a

    goto :goto_3

    :cond_a
    move v2, v0

    :goto_3
    int-to-float v0, v2

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    mul-float/2addr v0, v2

    iget v10, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->l0:F

    add-float/2addr v0, v10

    sub-float/2addr v9, v0

    div-float/2addr v9, v2

    float-to-int v0, v9

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_4
    sget v0, Lcom/transsion/magicvideo/R$id;->cl_drag_animation_view:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    aget v0, v6, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->m0:F

    add-float/2addr v8, v9

    sub-float/2addr v0, v8

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v7, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->Z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_b

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    filled-new-array {v1, v4}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v8, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    move v4, p1

    move v5, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;-><init>(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;Lcom/transsion/magicvideo/widgets/VideoGridDragAnimationView;ZIZ[ILcom/transsion/playercommon/widgets/RoundFrameLayout;)V

    invoke-virtual {p2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_5

    :cond_c
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_d

    const-wide/16 p3, 0x12c

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->e0:Ljava/lang/String;

    const/4 p3, 0x4

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->U1(Landroid/view/View;Ljava/lang/String;I)V

    :cond_e
    return-void
.end method

.method public U1(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->f0:I

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->e0:Ljava/lang/String;

    const/4 p1, 0x4

    if-ne p3, p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->Q1()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->p0:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->L:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->p0:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->e0:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->f0:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->U1(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->O1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Landroid/view/View;ILcom/transsion/dbdata/beans/media/MediaItem;ZLandroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->L:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->o0:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ":::::::"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "VideoDragBaseFragment"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    const/4 p4, 0x1

    if-nez p1, :cond_2

    invoke-virtual {p0, p4}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->editMode(Z)V

    :cond_2
    iget-object p5, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p5, p3, p4, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->T(Lcom/transsion/dbdata/beans/media/MediaItem;ZI)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->g0:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_3

    const/4 p4, 0x4

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->P1()V

    invoke-static {}, Lydc;->f()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->p0:Landroid/os/Handler;

    const/4 p4, 0x2

    invoke-virtual {p2, p4}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p4, p2, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->p0:Landroid/os/Handler;

    if-eqz p1, :cond_4

    const-wide/16 p3, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 p3, 0x320

    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->c0:Lcec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcec;->release()V

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->c0:Lcec;

    :cond_0
    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->p0:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
