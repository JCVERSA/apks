.class public Lcom/transsion/magicvideo/fragments/VideosFragment;
.super Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# instance fields
.field public A0:I

.field public B0:Landroid/widget/ProgressBar;

.field public C0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public D0:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

.field public E0:J

.field public F0:Z

.field public G0:Landroid/view/View;

.field public H0:Landroid/view/View;

.field public I0:Landroid/view/View;

.field public J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

.field public K0:Landroidx/recyclerview/widget/RecyclerView;

.field public L0:Ljava/util/List;

.field public M0:Z

.field public N0:Z

.field public O0:Z

.field public P0:Ljava/lang/Boolean;

.field public Q0:Z

.field public R0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public S0:I

.field public T0:Ljava/lang/Runnable;

.field public U0:Lcom/transsion/vishaads/views/AdBannerView;

.field public V0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

.field public W0:Z

.field public X0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public Y0:I

.field public Z0:I

.field public q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

.field public r0:Z

.field public s0:Lcom/transsion/utils/CustomGridLayoutManager;

.field public t0:Z

.field public u0:Landroid/view/View;

.field public v0:Landroid/widget/TextView;

.field public volatile w0:Z

.field public x0:Z

.field public y0:Lcom/transsion/mediationads/beans/TabStrategy;

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->F0:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->P0:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->W0:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Y0:I

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Z0:I

    return-void
.end method

.method public static bridge synthetic A2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    return p0
.end method

.method public static bridge synthetic B2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->N0:Z

    return p0
.end method

.method public static bridge synthetic C2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic D2(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->W0:Z

    return-void
.end method

.method public static bridge synthetic E2(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->M0:Z

    return-void
.end method

.method public static bridge synthetic F2(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->N0:Z

    return-void
.end method

.method public static F3(I)Lcom/transsion/magicvideo/fragments/VideosFragment;
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "list_flag"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic G2(Lcom/transsion/magicvideo/fragments/VideosFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadDataChange()V

    return-void
.end method

.method public static synthetic H2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic I2(Lcom/transsion/magicvideo/fragments/VideosFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public static synthetic J2(Lcom/transsion/magicvideo/fragments/VideosFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method private J3()V
    .locals 7

    invoke-static {}, Lzdc;->f()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    if-eqz v1, :cond_1

    sget v2, Lzdc;->b:I

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;->g()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v1, :cond_6

    sget v2, Lzdc;->b:I

    if-ne v0, v2, :cond_2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->C()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v5

    if-ge v2, v5, :cond_6

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v5, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v3, v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->Y(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v3, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->refreshNotifyItemChanged(I)V

    move v3, v6

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v5, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v4, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->refreshNotifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    return-void
.end method

.method public static L2(Ljava/util/List;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v1, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->W2(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic V1(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->m3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic W1(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->u3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static W2(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v1, p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-nez v2, :cond_3

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public static synthetic X1(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->X2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic Y1(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->y3(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Z1(Lcom/transsion/magicvideo/fragments/VideosFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideosFragment;->f3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic a2(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->Y2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b2(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->o3(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c2(Lcom/transsion/magicvideo/fragments/VideosFragment;ZLcom/transsion/magicvideo/fragments/VideosFragment;)Landroid/util/Pair;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->q3(ZLcom/transsion/magicvideo/fragments/VideosFragment;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d2(Lcom/transsion/magicvideo/fragments/VideosFragment;Lcom/transsion/magicvideo/fragments/VideosFragment;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->b3(Lcom/transsion/magicvideo/fragments/VideosFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d3(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSort error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideosFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic e2(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->p3(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f2(Lcom/transsion/magicvideo/fragments/VideosFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideosFragment;->i3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic g2(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->c3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic h2(Lcom/transsion/magicvideo/fragments/VideosFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->g3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h3(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x487

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i2(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->h3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->t3(Lcom/transsion/magicvideo/fragments/VideosFragment;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k2(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->s3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic l2(Lcom/transsion/magicvideo/fragments/VideosFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->z3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic m2(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->x3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n2(Lcom/transsion/magicvideo/fragments/VideosFragment;ZLandroid/util/Pair;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->n3(ZLandroid/util/Pair;)V

    return-void
.end method

.method public static synthetic o2(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->d3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic o3(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltpb;->m0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic p2(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->Z2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic p3(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltpb;->m0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic q2(Lcom/transsion/magicvideo/fragments/VideosFragment;Lcom/transsion/magicvideo/fragments/VideosFragment;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->w3(Lcom/transsion/magicvideo/fragments/VideosFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r2(Lcom/transsion/magicvideo/fragments/VideosFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideosFragment;->e3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic s2(Lcom/transsion/magicvideo/fragments/VideosFragment;ZLjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->l3(ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic t2(Lcom/transsion/magicvideo/fragments/VideosFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->k3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t3(Lcom/transsion/magicvideo/fragments/VideosFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    invoke-virtual {p0}, Ltpb;->R()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u2(Lcom/transsion/magicvideo/fragments/VideosFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->a3()V

    return-void
.end method

.method public static synthetic v2(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->r3(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic w2(Lcom/transsion/magicvideo/fragments/VideosFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->v3()V

    return-void
.end method

.method public static synthetic x2(Lcom/transsion/magicvideo/fragments/VideosFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideosFragment;->j3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic y2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Lcom/transsion/vishaads/views/AdBannerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->U0:Lcom/transsion/vishaads/views/AdBannerView;

    return-object p0
.end method

.method public static synthetic y3(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static bridge synthetic z2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->V0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    return-object p0
.end method


# virtual methods
.method public A1(III)V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    if-nez p3, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p3}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    new-instance p3, Luac;

    invoke-direct {p3, p0}, Luac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {p1, p2, p3}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/magicvideo/R$string;->cancel:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public final A3(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Q0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/mediationads/manager/b;->c()Lcom/transsion/mediationads/manager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->O2()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->y0:Lcom/transsion/mediationads/beans/TabStrategy;

    iget v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    invoke-static {p1, v2, v3, v0}, Leda;->d(Ljava/util/ArrayList;Lcom/transsion/mediationads/beans/TabStrategy;II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->y0:Lcom/transsion/mediationads/beans/TabStrategy;

    invoke-static {p1, p0, v0}, Leda;->a(Ljava/util/List;Lcom/transsion/mediationads/beans/TabStrategy;I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->y0:Lcom/transsion/mediationads/beans/TabStrategy;

    iget v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    invoke-static {p1, v2, v3}, Leda;->e(Ljava/util/ArrayList;Lcom/transsion/mediationads/beans/TabStrategy;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->y0:Lcom/transsion/mediationads/beans/TabStrategy;

    invoke-static {v2, v3}, Leda;->c(ILcom/transsion/mediationads/beans/TabStrategy;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->y0:Lcom/transsion/mediationads/beans/TabStrategy;

    invoke-virtual {v4}, Lcom/transsion/mediationads/beans/TabStrategy;->getAdvertisingId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->S0:I

    invoke-static {v4, v5}, Lcom/transsion/mediationads/beans/AdMediaItem;->create(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/mediationads/beans/AdMediaItem;->setContext(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->y0:Lcom/transsion/mediationads/beans/TabStrategy;

    invoke-static {p1, v0, p0}, Leda;->b(Ljava/util/List;Ljava/util/List;Lcom/transsion/mediationads/beans/TabStrategy;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final B3()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->V0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v0, "vd_ad_vdbanner_show"

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, La9;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public C3()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    new-instance v3, Lcom/transsion/magicvideo/fragments/VideosFragment$5;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/transsion/magicvideo/fragments/VideosFragment$5;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/util/ArrayList;IZ)V

    invoke-static {v3}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final D3(Ljava/util/ArrayList;)V
    .locals 2

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Leac;

    invoke-direct {p1, p0, v0}, Leac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/util/ArrayList;)V

    invoke-static {p1}, Liia;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public E3()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-eqz v0, :cond_0

    const-string v0, "thumbnail"

    goto :goto_0

    :cond_0
    const-string v0, "list"

    :goto_0
    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-static {v0, p0}, Lp06;->N(Ljava/lang/String;I)V

    return-void
.end method

.method public G3()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S0()V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Labc;

    invoke-direct {v1}, Labc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lbbc;

    invoke-direct {v1, p0}, Lbbc;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method public final H3()V
    .locals 3

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->A0:I

    const-string v2, "vd_listenbtn_cl"

    invoke-static {v2, v0, v1}, Llz5;->f(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lqac;

    invoke-direct {v1}, Lqac;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W1(Z)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->U3(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    :cond_0
    return-void
.end method

.method public final I3(Z)Ljava/util/ArrayList;
    .locals 5

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    const v2, 0x7fffffff

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p0, v2}, Ltpb;->U(I)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v0, "have_video"

    invoke-virtual {p1, v0}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_2
    if-ne v0, v4, :cond_4

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p0, v4, v2, v4}, Ltpb;->O(ZIZ)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-nez p1, :cond_5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_5
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p1, p0}, Ltpb;->i(Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final K2(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->V2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    new-instance p1, Libc;

    invoke-direct {p1, p0, v0}, Libc;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v1, Ldac;

    invoke-direct {v1, p0, p1}, Ldac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final K3()V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->l()Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$SortType;->COUNT:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->M2()V

    :cond_0
    return-void
.end method

.method public final L3()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->R0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->R0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->R0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public final M2()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Q0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/mediationads/manager/b;->c()Lcom/transsion/mediationads/manager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->refresh()V

    return-void

    :cond_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lrac;

    invoke-direct {v1, p0}, Lrac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lsac;

    invoke-direct {v1, p0}, Lsac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    new-instance p0, Ltac;

    invoke-direct {p0}, Ltac;-><init>()V

    invoke-virtual {v0, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final M3()V
    .locals 2

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->X0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Y0:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->K0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Z0:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method public final N2(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 2

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->convertToPlayVideoData(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setShowPicInPic(Z)V

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setNeedRecordVideoStates(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    iput-boolean p2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    :cond_1
    return-object p1
.end method

.method public final N3()V
    .locals 2

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->X0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->K0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Y0:I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->K0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Z0:I

    :cond_0
    return-void
.end method

.method public O0()I
    .locals 2

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O0()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public O2()I
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->O0:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method public O3()V
    .locals 6

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeAllHeaderView()V

    :cond_1
    invoke-static {}, Lxdc;->c()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->V0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeaderView videoBanner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->V0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->V0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->W0:Z

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setHeaderAndEmpty(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->U0:Lcom/transsion/vishaads/views/AdBannerView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/transsion/magicvideo/R$layout;->ad_view_layout:I

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaads/views/AdBannerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->U0:Lcom/transsion/vishaads/views/AdBannerView;

    new-instance v3, Lcom/transsion/magicvideo/fragments/VideosFragment$8;

    invoke-direct {v3, p0}, Lcom/transsion/magicvideo/fragments/VideosFragment$8;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {v0, v3}, Lcom/transsion/vishaads/views/AdBannerView;->setAdBannerClick(Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->U0:Lcom/transsion/vishaads/views/AdBannerView;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->V0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {v0, v3}, Lcom/transsion/vishaads/views/AdBannerView;->showAd(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->U0:Lcom/transsion/vishaads/views/AdBannerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->U0:Lcom/transsion/vishaads/views/AdBannerView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->B3()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeaderView "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->U0:Lcom/transsion/vishaads/views/AdBannerView;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->U0:Lcom/transsion/vishaads/views/AdBannerView;

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderView(Landroid/view/View;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->b4()V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_4

    const-string v0, "setHeaderView , add top short videos header"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setHeaderAndEmpty(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->G0:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    :cond_4
    return-void
.end method

.method public P0()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P0()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/magicvideo/R$id;->add_video_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lraa;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    sget v2, Lcom/transsion/magicvideo/R$string;->file_empty:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    sget-boolean v1, Lpp3;->k:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/magicvideo/R$string;->go_download:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/transsion/magicvideo/fragments/VideosFragment$f;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/fragments/VideosFragment$f;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public P2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setOnSelectListener(Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    new-instance v1, Liac;

    invoke-direct {v1, p0}, Liac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    new-instance v1, Ljac;

    invoke-direct {v1, p0}, Ljac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->I1()V

    :cond_0
    return-void
.end method

.method public P3()V
    .locals 0

    return-void
.end method

.method public final Q2(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->t0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->Q0(Landroid/view/View;Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvOverScrollDecorListener(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public final Q3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "search_more_cl"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->R3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;ILjava/lang/String;)V

    return-void
.end method

.method public final R2(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$id;->play_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->u0:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->media_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->v0:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->u0:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance v0, Lkac;

    invoke-direct {v0, p0}, Lkac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->z0:Z

    return-void
.end method

.method public R3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;ILjava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showListDialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideosFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "data"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "list_flag"

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->G:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "from_list_more_icon"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0}, Lvg9;->g(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v1, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->U:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->P3()V

    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-direct {p1, v0, p2, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideosFragment$e;

    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/magicvideo/fragments/VideosFragment$e;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance p3, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p3}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {v0, v1}, Lp06;->b(J)D

    move-result-wide v0

    const-string v2, "from"

    invoke-virtual {p1, v2, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "vd_size"

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    iget-wide v5, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-string v7, "vd_length"

    invoke-virtual {p1, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    const-string v6, "listName"

    invoke-virtual {p1, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    const-string v8, "vd_format"

    invoke-virtual {p1, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2, p4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object p4, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p3, v4, p4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p3, v3, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;D)Lcom/transsion/athena/data/TrackData;

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {p3, v7, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {p3, v6, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-virtual {p3, v8, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_vmore_show"

    const-wide/16 v0, 0x246c

    invoke-static {p3, p1, p0, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public S2(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_main_fragment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance p1, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lraa;->i(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasStableIds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideosFragment"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {p1, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->X(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmy8;->a(Landroid/content/Context;)Z

    move-result p1

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->W3()V

    new-instance p1, Lcom/transsion/magicvideo/fragments/VideosFragment$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->O2()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/transsion/magicvideo/fragments/VideosFragment$c;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->s0:Lcom/transsion/utils/CustomGridLayoutManager;

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideosFragment$d;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideosFragment$d;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p1, v2}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setRecyclerItemAnimator(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->e4()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->a4()V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->y()I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->a0:I

    return-void
.end method

.method public final S3()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPageContent mListFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mDataList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mShortVideoList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VideosFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->B0:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->N3()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->O0:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v3, v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->b0(Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->O0:Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmy8;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->b0(Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v4, v3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->Y(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->a4()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->e4()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->O3()V

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->K2(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->f4()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->x1()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->R(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->z0:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->u0:Landroid/view/View;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->T0()Z

    move-result v3

    if-nez v3, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    sub-int v1, v0, v1

    :goto_1
    iput v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->A0:I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->v0:Landroid/widget/TextView;

    invoke-static {v1}, Lr44;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->A0:I

    const-string v2, "vd_listenbtn_show"

    invoke-static {v2, v0, v1}, Llz5;->f(Ljava/lang/String;II)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->G0()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->D3(Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->C3()V

    :cond_8
    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result p0

    invoke-static {p0}, Lxdc;->e(I)V

    return-void

    :cond_9
    :goto_2
    const-string p0, "showPageContent mBucketDateAdapter is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public T0()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final T2()V
    .locals 4

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->video_top_header_view_layout:I

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->G0:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->ll_short_videos_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->H0:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->G0:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->ll_long_videos_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->I0:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->G0:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->rv_short_videos:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->K0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    invoke-direct {v0}, Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->X0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->K0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->K0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->H0:Landroid/view/View;

    new-instance v1, Lcbc;

    invoke-direct {v1}, Lcbc;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    new-instance v1, Ldbc;

    invoke-direct {v1, p0}, Ldbc;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    new-instance v1, Lebc;

    invoke-direct {v1, p0}, Lebc;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->b4()V

    return-void
.end method

.method public T3(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->N2(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    const/16 v0, 0xe

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput-boolean p2, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->M:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startOpenShortVideo "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideosFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isAlertWindowPermissionGranted()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->G2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :goto_0
    return-void
.end method

.method public final U2()V
    .locals 4

    const-class v0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->D0:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->D0:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    iget-object v1, v1, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lnac;

    invoke-direct {v3, p0, v0}, Lnac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->D0:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    iget-object v1, v1, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lyac;

    invoke-direct {v3, p0}, Lyac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->D0:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {v1}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->D0:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->d()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->Z3(Ljava/util/List;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public U3(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->N2(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput-boolean p2, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->M:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startOpenVideo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isAlertWindowPermissionGranted()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->G2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :goto_0
    return-void
.end method

.method public final V2()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public V3()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmy8;->a(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->e4()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->a4()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->Q1()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->O0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->S3()V

    :cond_1
    return-void
.end method

.method public final W3()V
    .locals 4

    const-string v0, "VideosFragment"

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Q0:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/mediationads/manager/b;->c()Lcom/transsion/mediationads/manager/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/mediationads/manager/b;->f()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->y0:Lcom/transsion/mediationads/beans/TabStrategy;

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->S0:I

    invoke-virtual {v1, v2}, Lcom/transsion/mediationads/manager/b;->d(I)Lcom/transsion/mediationads/beans/TabStrategy;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdStrategyForCurrentMode: Ad new strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->y0:Lcom/transsion/mediationads/beans/TabStrategy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdStrategyForCurrentMode: Error updating ad strategy - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final synthetic X2(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->V2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final X3()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    if-le v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCurrentPlayItemPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideosFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic Y2(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->V2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->L3()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->L3()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Y3(Ljava/util/ArrayList;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object v0

    iget-object v0, v0, Ldp3;->b:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v1}, Ltpb;->b(I)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltpb;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ltpb;->j(ZLcom/transsion/dbdata/beans/media/MediaItem;)Z

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    iget-object p0, p0, Ldp3;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final synthetic Z2(Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->V2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->L3()V

    new-instance v0, Lvac;

    invoke-direct {v0, p0, p1}, Lvac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->R0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->R0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final Z3(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lpp3;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->w0:Z

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->S0()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    iput-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->w0:Z

    iput-boolean p2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->w0:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    :cond_5
    return-void
.end method

.method public final synthetic a3()V
    .locals 1

    invoke-static {}, Luq3;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadDataChange()V

    :cond_0
    return-void
.end method

.method public final a4()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->s0:Lcom/transsion/utils/CustomGridLayoutManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->O2()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    invoke-virtual {v1, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->U(Z)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-virtual {v1, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->Z(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v4, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->s0:Lcom/transsion/utils/CustomGridLayoutManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->s0:Lcom/transsion/utils/CustomGridLayoutManager;

    new-instance v4, Lcom/transsion/magicvideo/fragments/VideosFragment$b;

    invoke-direct {v4, p0, v0}, Lcom/transsion/magicvideo/fragments/VideosFragment$b;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;I)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setRecyclerItemAnimator(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->s0:Lcom/transsion/utils/CustomGridLayoutManager;

    if-eq v0, v2, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final synthetic b3(Lcom/transsion/magicvideo/fragments/VideosFragment;)Ljava/util/List;
    .locals 3

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/transsion/dbdata/utils/SortUtil;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->H0(Ljava/util/List;)V

    return-object p1

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b4()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->U0:Lcom/transsion/vishaads/views/AdBannerView;

    const/4 v1, 0x0

    const/high16 v2, 0x41a00000    # 20.0f

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->U0:Lcom/transsion/vishaads/views/AdBannerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->U0:Lcom/transsion/vishaads/views/AdBannerView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v0, v4, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->G0:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->G0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->G0:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public final synthetic c3(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSort result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->updateShowUI()V

    return-void
.end method

.method public final c4()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->a4()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->Q1()V

    :cond_0
    return-void
.end method

.method public d4()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmy8;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->O0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-eq v2, v0, :cond_2

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->e4()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->a4()V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_2
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x404

    const/4 v1, 0x0

    if-eq p1, v0, :cond_14

    const/16 v0, 0x42b

    const-string v2, "video"

    if-eq p1, v0, :cond_12

    const/16 v0, 0x43f

    if-eq p1, v0, :cond_11

    const/16 v0, 0x456

    if-eq p1, v0, :cond_f

    const/16 v0, 0x460

    if-eq p1, v0, :cond_e

    const/16 v0, 0x482

    if-eq p1, v0, :cond_d

    const/16 v0, 0x486

    if-eq p1, v0, :cond_c

    const/16 v0, 0x48b

    const-string v3, "VideosFragment"

    if-eq p1, v0, :cond_a

    const/16 v0, 0x48f

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4a4

    if-eq p1, v0, :cond_8

    const/16 v0, 0x41c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x41d

    if-eq p1, v0, :cond_14

    const/16 v0, 0x499

    if-eq p1, v0, :cond_4

    const/16 v0, 0x49a

    if-eq p1, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p2, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "update video list position error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_4
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_15

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->x(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->refresh()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_7
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "from"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "type"

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    aget-object p2, p2, p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "status"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "vd_vmore_favorite_cl"

    invoke-static {p0, p1}, Lp06;->b0(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->K3()V

    goto/16 :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->W3()V

    goto :goto_4

    :cond_a
    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    if-eqz p1, :cond_15

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_b
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "remove media list error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->refresh()V

    goto/16 :goto_5

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->V3()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->E3()V

    goto :goto_5

    :cond_e
    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 p2, 0x29

    if-ne p1, p2, :cond_15

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    goto :goto_5

    :cond_f
    invoke-static {}, Luq3;->a()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lfac;

    invoke-direct {p2, p0}, Lfac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadDataChange()V

    goto :goto_5

    :cond_11
    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p1, :cond_15

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_5

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Laf9;->f:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long p1, v3, v5

    if-gez p1, :cond_13

    return-void

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Laf9;->f:J

    invoke-static {v2}, Luy5;->l(Ljava/lang/String;)V

    aget-object p1, p2, v1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    const-string p2, "file_operate_menu_tag"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->Q3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_5

    :cond_14
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_15
    :goto_5
    return-void
.end method

.method public final synthetic e3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mIsDialogShowing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_d

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    invoke-virtual {p0, v0, p2}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->M1(Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;)V

    goto/16 :goto_6

    :cond_3
    iget-boolean p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0, p3}, Lcom/transsion/dbdata/beans/media/MediaItem;->setSelectedPos(I)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz p1, :cond_7

    :try_start_0
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-wide p2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {p1, p2, p3}, Lwna;->g(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/playercommon/R$string;->today:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "today"

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-wide p2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {p1, p2, p3}, Lwna;->g(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/playercommon/R$string;->yesterday:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "yesterday"

    goto :goto_1

    :cond_6
    const-string p1, "past"
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    :goto_1
    invoke-static {p1}, Lp06;->v(Ljava/lang/String;)V

    invoke-static {}, Li06;->c()V

    goto :goto_3

    :cond_7
    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-eqz p1, :cond_8

    const-string p1, "thumbnail"

    goto :goto_2

    :cond_8
    const-string p1, "list"

    :goto_2
    iget p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p3

    invoke-virtual {p3, v0}, Ltpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p3

    invoke-static {p1, p2, p3}, Lp06;->Q(Ljava/lang/String;IZ)V

    :goto_3
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_4

    :cond_9
    move p1, v2

    :goto_4
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b0()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget v5, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/magicvideo/player/VideoPlayManager;->n0(Landroid/content/Context;ZZZI)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "launch_intent_video_player_activity"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y1()V

    :cond_b
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, v0, v2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->T3(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0, v0, v2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->U3(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    :goto_5
    sget-object p0, Lo06;->f:Ljava/lang/String;

    invoke-static {p0}, Lo06;->e(Ljava/lang/String;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public e4()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x41600000    # 14.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41a00000    # 20.0f

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->b4()V

    :cond_2
    return-void
.end method

.method public editMode(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->editMode(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->O1()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->C0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->l:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->L1(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->V(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->u0:Landroid/view/View;

    if-eqz v0, :cond_4

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->u0:Landroid/view/View;

    if-eqz p1, :cond_3

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->G0:Landroid/view/View;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->H0:Landroid/view/View;

    if-eqz v0, :cond_7

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->e4()V

    return-void
.end method

.method public final synthetic f3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->M1(Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez p1, :cond_4

    iget-boolean p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_item_more:I

    if-eq p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/magicvideo/R$id;->iv_more:I

    if-ne p1, p2, :cond_4

    :cond_3
    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-static {p1}, Lp06;->A(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "file_operate_menu_tag"

    invoke-virtual {p0, p2, v0, p3, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->R3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;ILjava/lang/String;)V

    nop

    :cond_4
    :goto_0
    return-void
.end method

.method public final f4()V
    .locals 5

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->K0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->I0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/transsion/magicvideo/R$dimen;->video_top_long_title_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->I0:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->I0:Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 v3, 0x4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->H0:Landroid/view/View;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    move v3, v2

    goto :goto_5

    :cond_6
    :goto_4
    move v3, v4

    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->K0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    move v2, v4

    :cond_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShortVideoView list count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->M3()V

    :cond_b
    return-void
.end method

.method public final synthetic g3(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->H3()V

    return-void
.end method

.method public getActivityMenuSwitchFlag()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDeleteIconResId()I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/magicvideo/R$drawable;->ic_delete_all:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/magicvideo/R$drawable;->ic_delete:I

    :goto_0
    return p0
.end method

.method public getDeleteTextResId()I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/magicvideo/R$string;->clear:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/magicvideo/R$string;->delete:I

    :goto_0
    return p0
.end method

.method public final synthetic i3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b0()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->T3(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    sget-object p2, Lo06;->f:Ljava/lang/String;

    invoke-static {p2}, Lo06;->e(Ljava/lang/String;)V

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p2

    invoke-virtual {p2, p1}, Ltpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p1

    const-string p2, "thumbnail"

    invoke-static {p2, p0, p1}, Lp06;->Q(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public inflateOperationBar()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->bottom_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setListFlag(I)V

    :cond_0
    return-void
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x41c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x41d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x42b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x43f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x460

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x482

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x483

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x486

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x48f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x48b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x499

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x49a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x4a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x456

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    sget v0, Lcom/transsion/magicvideo/R$id;->title_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicvideo/R$id;->title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    new-instance v1, Llac;

    invoke-direct {v1, p0}, Llac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->title_bar_checkBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    sget v0, Lcom/transsion/magicvideo/R$id;->menu_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initSortView(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "12 mSortIv:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideosFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->U(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$string;->history_list:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicvideo/R$string;->os_clean:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->talkback_clear_history:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideosFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideosFragment$a;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final synthetic j3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_more:I

    if-ne p2, v0, :cond_0

    iget p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-static {p2}, Lp06;->A(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "file_operate_menu_tag"

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->R3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic k3(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public final synthetic l3(ZLjava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AllVideoDataListLiveData onChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->D0:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->d()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->Z3(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public loadData(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(ZZ)V

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    const-string v2, "VideosFragment"

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->w0:Z

    if-nez v0, :cond_0

    const-string p0, "loadData, not finished preload"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Q0:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/mediationads/manager/b;->c()Lcom/transsion/mediationads/manager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->y0:Lcom/transsion/mediationads/beans/TabStrategy;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->W3()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData start,mListFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lgbc;

    invoke-direct {v1, p0, p1}, Lgbc;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lhbc;

    invoke-direct {v0, p0, p2}, Lhbc;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic m3(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AllShortVideoDataListLiveData onChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->D0:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->Z3(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "vd_filemg_ep"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "vd_all_video_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "vd_history_more"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 6

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointVisiable(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->E0:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->F0:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iput-wide v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->E0:J

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->C3()V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v0, "vd_all_video_show"

    const-wide/16 v1, 0x246c

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Lr06;->e(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->B3()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->F0:Z

    :cond_1
    return-void
.end method

.method public markSecondPageShow()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->markSecondPageShow()V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v0, "vd_history_more"

    const-wide/16 v1, 0x246c

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Lr06;->e(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final synthetic n3(ZLandroid/util/Pair;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData end:data size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", shortData size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mListFlag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideosFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->M0:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->N0:Z

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->N0:Z

    if-eqz p2, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->X3()V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lpp3;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lye6;->b(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->S0()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x477

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->M()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d;->g(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->c4()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "list_flag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O:Z

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-eqz p1, :cond_2

    const-string v3, "bucket_fragment_buicket_id"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string v3, "bucket_fragment_is_internet"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    const-string v1, "bucket_fragment_buicket_name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string v3, "bucket_fragment_buicket_isVirtual"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setVirtualFolder(Z)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string v3, "bucket_fragment_buicket_virtual_match_name"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setVirtualFolderMatchName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string v3, "bucket_fragment_buicket_path"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->G:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->i()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v1, Lgac;

    invoke-direct {v1, p0}, Lgac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_3
    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v3, "vd_filemg_ep"

    const-wide v4, 0xd91af27304L

    const/4 v6, 0x0

    invoke-static {p1, v6, v3, v4, v5}, Lr06;->e(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Q0:Z

    if-nez v3, :cond_7

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    :cond_7
    :goto_2
    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->t0:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->registerBottomBarVisibleChanged()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->l:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->L3()V

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    const-string v1, "VideosFragment"

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->removeScreenTypeListener(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "bottom_delete_menu"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "video_sheet_dialog_destroy"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->T0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->Q0:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/transsion/mediationads/manager/b;->c()Lcom/transsion/mediationads/manager/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/b;->a()V

    :cond_1
    return-void
.end method

.method public onFinishRequestPermission(IZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onFinishRequestPermission(IZ)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x83

    const-string v1, "video"

    if-ne p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_2

    invoke-static {}, Lcac;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x84

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->W(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->c4()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->l:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->editMode(Z)V

    :cond_0
    new-instance p1, Lfbc;

    invoke-direct {p1, p0}, Lfbc;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->T0:Ljava/lang/Runnable;

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->T0:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->t0:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/magicvideo/R$layout;->videos_fragment_pull_damping:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/magicvideo/R$layout;->videos_fragment:I

    :goto_0
    return p0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onPause()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->K0()V

    return-void
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->J3()V

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;->d(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->L2(Ljava/util/List;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->J3()V

    goto/16 :goto_3

    :cond_2
    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->L2(Ljava/util/List;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;->d(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    if-eqz p1, :cond_a

    :cond_4
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->C()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v2, :cond_7

    iget-boolean v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez v3, :cond_7

    iget-boolean v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->W2(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->refreshNotifyItemChanged(I)V

    goto :goto_2

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    :goto_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->Y(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_9
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;->g()V

    :cond_a
    :goto_3
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onResume()V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->C1(Lcom/transsion/magicvideo/player/VideoPlayManager$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->U0()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->P0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->L0()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->P0:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->J3()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-instance v1, Lhac;

    invoke-direct {v1, p0}, Lhac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "list_flag"

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSelectInViewPage()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStart()V

    return-void
.end method

.method public onUnSelectInViewPage()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget v0, Lcom/transsion/magicvideo/R$id;->play_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->u0:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->media_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->v0:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->S2(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->T2()V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->R2(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->P2()V

    sget v0, Lcom/transsion/magicvideo/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->B0:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->Q2(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->initTitleBar(Landroid/view/View;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->cl_drag_animation_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->C0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->U2()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic q3(ZLcom/transsion/magicvideo/fragments/VideosFragment;)Landroid/util/Pair;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->I3(Z)Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {p1}, Lls1;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->restoreShuffle(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->restore(Ljava/util/ArrayList;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    const/16 v4, 0x4a0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->D0:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->D0:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {v4}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->f()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/magicvideo/player/VideoPlayManager;->M1(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lwac;

    invoke-direct {v2}, Lwac;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lxac;

    invoke-direct {v2}, Lxac;-><init>()V

    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p2}, Lls1;->a(Ljava/util/List;)V

    new-instance v2, Lzac;

    invoke-direct {v2}, Lzac;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadData,query end cost: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->F0(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->Y3(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->H0(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->A3(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->W(Z)V

    :cond_3
    new-instance p0, Landroid/util/Pair;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic r3(Ljava/util/ArrayList;)V
    .locals 9

    const-string v0, "size"

    const-string v1, "num"

    const-string v2, "name"

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v7, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    add-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v6}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object v7, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {p1, v2, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v0, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v6, v1, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v0, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_filemg_ep_p"

    const-wide/16 v0, 0x246c

    invoke-static {v6, p1, p0, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public final synthetic s3(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoRecordLiveData onChanged size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mListFlag:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideosFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    return-void
.end method

.method public scrollToTop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->scrollToTop()V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public t(Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->x0:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->M2()V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lpp3;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lpp3;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lmac;

    invoke-direct {v0, p0}, Lmac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Loac;

    invoke-direct {v0, p0}, Loac;-><init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    new-instance v1, Lpac;

    invoke-direct {v1}, Lpac;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    :cond_1
    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lp06;->B(ILjava/lang/Boolean;)V

    :cond_2
    return-void
.end method

.method public u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    if-eqz p0, :cond_1

    iget-boolean p0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez p0, :cond_1

    sget p0, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox_grid:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    :goto_0
    if-eqz p0, :cond_3

    check-cast p1, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-ne p4, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, v0, p0, p3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->T(Lcom/transsion/dbdata/beans/media/MediaItem;ZI)V

    :cond_3
    return-void
.end method

.method public final synthetic u3(Ljava/lang/Boolean;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->editMode(Z)V

    return-void
.end method

.method public updateShowUI()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateShowUI()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->S3()V

    return-void
.end method

.method public final synthetic v3()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public final synthetic w3(Lcom/transsion/magicvideo/fragments/VideosFragment;)Ljava/util/List;
    .locals 3

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/transsion/dbdata/utils/SortUtil;->z(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0 updateShortVideoView list count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideosFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    return-object p0
.end method

.method public x1()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->x1()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mMenuShowListener:Lcom/transsion/playercommon/fragments/BaseFragment$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment$d;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lraa;->i(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->T0()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_5

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->T0()Z

    move-result p0

    const/16 v0, 0x489

    if-eqz p0, :cond_4

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->T0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "video"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    return-void
.end method

.method public final synthetic x3(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->L0:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->J0:Lcom/transsion/magicvideo/adapter/ShortVideoAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final synthetic z3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->G3()V

    return-void
.end method
