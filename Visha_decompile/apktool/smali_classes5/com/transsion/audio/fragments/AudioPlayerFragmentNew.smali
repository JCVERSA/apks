.class public Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;
.super Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$m;
    }
.end annotation


# instance fields
.field public A:Landroid/view/ViewStub;

.field public B:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

.field public C:Ljava/lang/String;

.field public D:I

.field public E:Ljava/util/List;

.field public F:Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

.field public G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

.field public H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

.field public I:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

.field public J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

.field public final K:Ljava/util/ArrayList;

.field public L:Landroid/animation/ObjectAnimator;

.field public M:Landroid/animation/ObjectAnimator;

.field public N:Landroid/os/Handler;

.field public final O:Landroidx/lifecycle/Observer;

.field public final P:Landroidx/lifecycle/Observer;

.field public final Q:Landroidx/lifecycle/Observer;

.field public R:I

.field public S:Z

.field public T:Landroid/graphics/Bitmap;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public X:Landroid/database/ContentObserver;

.field public Y:Landroid/database/ContentObserver;

.field public Z:Z

.field public a0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public b0:Ljava/lang/Runnable;

.field public c0:Landroidx/activity/result/ActivityResultLauncher;

.field public final d0:Landroidx/lifecycle/Observer;

.field public final e0:Lcom/transsion/audio/player/MusicPlayManager$d;

.field public t:Landroid/widget/ImageView;

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/view/View;

.field public w:Z

.field public x:Z

.field public y:Landroidx/viewpager2/widget/ViewPager2;

.field public z:Lcom/transsion/playercommon/adapter/CustomViewAdapter2;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->C:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->E:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->K:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->N:Landroid/os/Handler;

    new-instance v0, Luv;

    invoke-direct {v0, p0}, Luv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->O:Landroidx/lifecycle/Observer;

    new-instance v0, Lvv;

    invoke-direct {v0, p0}, Lvv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->P:Landroidx/lifecycle/Observer;

    new-instance v0, Lpu;

    invoke-direct {v0, p0}, Lpu;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Q:Landroidx/lifecycle/Observer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->S:Z

    new-instance v1, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$d;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->X:Landroid/database/ContentObserver;

    new-instance v1, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$e;

    invoke-direct {v1, p0, v2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$e;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y:Landroid/database/ContentObserver;

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Z:Z

    new-instance v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->a0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    new-instance v0, Lqu;

    invoke-direct {v0, p0}, Lqu;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->b0:Ljava/lang/Runnable;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lru;

    invoke-direct {v1, p0}, Lru;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->c0:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Lsu;

    invoke-direct {v0, p0}, Lsu;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->d0:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$a;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->e0:Lcom/transsion/audio/player/MusicPlayManager$d;

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public static bridge synthetic B0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->T:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic C0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->M:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static bridge synthetic D0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->N:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic E0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->I:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    return-object p0
.end method

.method public static bridge synthetic F0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w:Z

    return-void
.end method

.method public static bridge synthetic G0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Z:Z

    return-void
.end method

.method public static bridge synthetic H0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->R:I

    return-void
.end method

.method public static bridge synthetic I0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->L:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static bridge synthetic J0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->M:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static bridge synthetic K0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->f1(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic L0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic M0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;I)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->m1(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic N0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->n1(ZLandroid/net/Uri;)V

    return-void
.end method

.method public static bridge synthetic O0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k2()V

    return-void
.end method

.method public static synthetic O1(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object p2

    invoke-virtual {p2, p0}, Lao;->G(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-eq p2, p1, :cond_1

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    iget p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, p2, v0, v1}, Lao;->s0(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-object p0
.end method

.method public static bridge synthetic P0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->p2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic Q(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->z1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic Q0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->q2()V

    return-void
.end method

.method public static synthetic Q1(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "AudioPlayerFragmentNew"

    const-string v0, "onRenameSuccess exception"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Luq3;->b(Z)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/util/Pair;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D1(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic R0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->v2()V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->K1(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static bridge synthetic S0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w2()V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/util/Pair;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->E1(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/util/Pair;)V

    return-void
.end method

.method public static bridge synthetic T0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->x2()V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J1(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic U0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->A2(I)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->r1(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic V1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lwoc;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->L1(Lwoc;)V

    return-void
.end method

.method public static synthetic W0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic X(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->C1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic X0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic Y(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->M1(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public static synthetic Y0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic Z(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->s1(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic Z0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic a0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->V1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->T1()V

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->I1(Ljava/util/List;)V

    return-void
.end method

.method private e1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->M()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->M()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->M()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->t1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->B1(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->W1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private initPagers()V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateDisplayUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->S:Z

    iput-boolean v1, v0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mFromShare:Z

    new-instance v0, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;

    new-instance v1, Ltv;

    invoke-direct {v1, p0}, Ltv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/transsion/playercommon/adapter/CustomViewAdapter2;-><init>(ILcom/transsion/playercommon/adapter/CustomViewAdapter2$a;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->z:Lcom/transsion/playercommon/adapter/CustomViewAdapter2;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->R:I

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->R:I

    invoke-virtual {p0, v1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->A2(I)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->I:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->addMarkers(IZ)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->I:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setActiveMarker(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->o1()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->N:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->b0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->a0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->A1(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->R1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic l0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Q1(Ljava/lang/Throwable;)V

    return-void
.end method

.method private l2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v1, Llv;

    invoke-direct {v1, p0}, Llv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->P1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method private m1(I)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->l1()Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->i1()Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->x1(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->v1(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->U1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private p2(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v1, Lov;

    invoke-direct {v1, p0, p1}, Lov;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G1(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private q2()V
    .locals 4

    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    const/4 p0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l0(ZLcom/transsion/playercommon/fragments/AlertDialogFragment$c;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->N1()V

    return-void
.end method

.method private r2()V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/playercommon/R$string;->permission_title:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->setting_permissions_message:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Lav;

    invoke-direct {v2}, Lav;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->go_setting:I

    new-instance v2, Lbv;

    invoke-direct {v2, p0}, Lbv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->S1()V

    return-void
.end method

.method public static synthetic t0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->u1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic u0(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->O1(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u1(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w1(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    return-object p0
.end method

.method public static bridge synthetic x0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Z:Z

    return p0
.end method

.method public static synthetic x1(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0}, Lao;->Z()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static bridge synthetic y0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->R:I

    return p0
.end method

.method public static bridge synthetic z0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->L:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static synthetic z1(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPlayListList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioPlayerFragmentNew"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final synthetic A1(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;
    .locals 4

    :try_start_0
    iget-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-nez p2, :cond_0

    iget p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    invoke-static {p2, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUriStringSafely(IZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x2d0

    if-le v2, v3, :cond_1

    int-to-float v2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lz7c$a;

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-direct {v0, p2, v1, v2}, Lz7c$a;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    const-string p1, "AudioPlayerFragmentNew"

    const-string p2, "Error loading bitmap"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TestLoadCover"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final A2(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->n2(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->n2(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F:Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->n2(Landroid/view/View;Z)V

    return-void
.end method

.method public final synthetic B1(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {v0, p2}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->changePlayImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->d1(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic C1(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "AudioPlayerFragmentNew"

    const-string v1, "Error in loadBackground"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->l2()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->m2()V

    return-void
.end method

.method public final synthetic D1(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/util/Pair;
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget v1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v1}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p3, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {v1, p3}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->a2(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p3, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {v1, p3}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    if-nez p3, :cond_2

    invoke-static {p1}, Ltn;->j(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic E1(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/util/Pair;)V
    .locals 4

    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->d1(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object p1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/dbdata/database/AudioAlbum;

    const/4 p4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->n:Lcom/transsion/dbdata/database/AudioAlbum;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-static {p2}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->n:Lcom/transsion/dbdata/database/AudioAlbum;

    iget-object p2, p2, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    iget-object p3, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadAudioAlbum same current album: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AudioPlayerFragmentNew"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->n:Lcom/transsion/dbdata/database/AudioAlbum;

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iget-object p1, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->changePlayImage(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setCoverTextVisibility(Z)V

    goto :goto_0

    :cond_1
    iput-object p4, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->n:Lcom/transsion/dbdata/database/AudioAlbum;

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->changePlayImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p1, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setCoverTextVisibility(Z)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iget-object p1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setCoverText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setCoverTextVisibility(Z)V

    goto :goto_0

    :cond_3
    iput-object p4, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->n:Lcom/transsion/dbdata/database/AudioAlbum;

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->changePlayImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p1, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setCoverTextVisibility(Z)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iget-object p1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setCoverText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setCoverTextVisibility(Z)V

    :goto_0
    return-void
.end method

.method public final synthetic F1(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "AudioPlayerFragmentNew"

    const-string v1, "Error in loadBackground: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setCoverTextVisibility(Z)V

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->l2()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->m2()V

    return-void
.end method

.method public final synthetic G1(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPlayBackground subscribe:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioPlayerFragmentNew"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {v1, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->changePlayImage(Ljava/lang/String;)V

    const-string p1, ".gif"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->d1(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->d1(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setCoverTextVisibility(Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lvf;->f(Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic H1(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->l2()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->m2()V

    return-void
.end method

.method public final synthetic I1(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->X1()V

    return-void
.end method

.method public final synthetic J1(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->X1()V

    return-void
.end method

.method public final synthetic K1(Landroidx/activity/result/ActivityResult;)V
    .locals 8

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "action_flag"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "out_data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/16 v2, 0xb

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    const/16 v6, 0x15

    const-string v7, "audio"

    if-eq v0, v2, :cond_3

    const/16 v2, 0x3eb

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioSpeedSettingActivity;->j0(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w2()V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->a1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    const-string p0, "audio_play_ringset"

    invoke-static {p0}, Lp06;->h0(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->q2()V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v6}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {v0, v4}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e0(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance v2, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$h;

    invoke-direct {v2, p0, v1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$h;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    const-string v0, "rename_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b0(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p1, v4}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e0(Z)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$i;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$i;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    const-string p1, "audioplay"

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    invoke-virtual {p0, v5, v5}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->Y(ZZ)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->t2()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->x2()V

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v3

    invoke-direct {p1, v0, v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p1, v5}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e0(Z)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$j;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$j;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    new-instance p1, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v0, Lcom/transsion/audio/R$drawable;->ic_rename:I

    sget v3, Lcom/transsion/audio/R$string;->rename:I

    invoke-direct {p1, v0, v3, v2}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0, p1, v7, v4}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->X(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    iget-boolean p0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p0, :cond_2

    const-string v7, "mv"

    :cond_2
    const-string p0, "vd_vmore_edit_pop"

    const-string p1, "from"

    const-string v0, "playshow"

    const-string v1, "file_type"

    invoke-static {p0, p1, v0, v1, v7}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v1, v6}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance p1, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v0, Lcom/transsion/audio/R$drawable;->ic_rename:I

    sget v1, Lcom/transsion/audio/R$string;->rename:I

    invoke-direct {p1, v0, v1, v3}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->J:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0, p1, v7, v5}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->X(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->J0(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const/4 v1, -0x2

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string v0, "click_flag"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "result_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0x1a

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->f2(Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    const/16 v0, 0x19

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->f2(Ljava/lang/String;I)V

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->q2()V

    :cond_a
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic L1(Lwoc;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->windowOptionsChange(Lwoc;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->windowOptionsChange(Lwoc;)V

    iget v0, p1, Lwoc;->b:I

    iget-boolean v1, p1, Lwoc;->g:Z

    iget-boolean v2, p1, Lwoc;->c:Z

    iget-boolean v3, p1, Lwoc;->f:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "windowOptionsObserver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AudioPlayerFragmentNew"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->adaptLayout(Lwoc;)V

    :cond_1
    const/4 v4, 0x0

    if-nez v3, :cond_b

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    iget p1, p1, Lwoc;->a:I

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    if-eq p1, v2, :cond_7

    const/4 v3, 0x3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_5

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_3
    if-ne v0, v5, :cond_4

    if-eqz v1, :cond_4

    move v4, v2

    :cond_4
    invoke-virtual {p0, v1, v4}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y2(ZZ)V

    goto :goto_2

    :cond_5
    if-ne v0, v3, :cond_6

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    move v2, v4

    :goto_0
    invoke-virtual {p0, v4, v2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y2(ZZ)V

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    move v4, v2

    :cond_8
    invoke-virtual {p0, v2, v4}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y2(ZZ)V

    goto :goto_2

    :cond_9
    if-ne v0, v2, :cond_a

    goto :goto_1

    :cond_a
    move v2, v4

    :goto_1
    invoke-virtual {p0, v4, v2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y2(ZZ)V

    :goto_2
    return-void

    :cond_b
    :goto_3
    invoke-virtual {p0, v4, v4}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y2(ZZ)V

    return-void
.end method

.method public final synthetic M1(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioItem(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_1
    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->u1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayList(Ljava/util/List;Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->T0(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateDisplayUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_3
    return-void
.end method

.method public final synthetic N1()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->I:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public P()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->q:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->c()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Q:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->r:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->m()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->O:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->r:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->i()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->P:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final synthetic P1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->W:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 p0, 0x0

    invoke-static {p0}, Luq3;->b(Z)V

    return-void
.end method

.method public final synthetic R1(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public final synthetic S1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    sget v1, Lcom/transsion/audio/R$drawable;->bg_mv_play:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->u2(Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    iget v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D:I

    return-void
.end method

.method public final synthetic T1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    sget v1, Lcom/transsion/audio/R$drawable;->bg_audio_play:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->u2(Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    iget v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D:I

    return-void
.end method

.method public final synthetic U1(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->u2(Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    iget p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D:I

    return-void
.end method

.method public final synthetic W1(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lv34;->i()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 p2, 0x7d2

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    return-void
.end method

.method public final X1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lhv;

    invoke-direct {v1}, Lhv;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Liv;

    invoke-direct {v1, p0}, Liv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    new-instance p0, Ljv;

    invoke-direct {p0}, Ljv;-><init>()V

    invoke-virtual {v0, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public Y1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerFragmentNew"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->g2(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->U:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->U:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->T:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->V:Ljava/lang/String;

    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-boolean v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v2, :cond_2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v1

    new-instance v2, Lzu;

    invoke-direct {v2, p0, p1}, Lzu;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v1}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v1, Lkv;

    invoke-direct {v1, p0, v0}, Lkv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;)V

    new-instance v0, Lpv;

    invoke-direct {v0, p0}, Lpv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {p1, v1, v0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void

    :cond_2
    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v2

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v2

    new-instance v3, Lqv;

    invoke-direct {v3, p0, p1, v1}, Lqv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v3}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v2

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v3}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v2

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v2

    new-instance v3, Lrv;

    invoke-direct {v3, p0, v0, v1, p1}, Lrv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    new-instance p1, Lsv;

    invoke-direct {p1, p0}, Lsv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {v2, v3, p1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public Z1(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPlayBackground:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerFragmentNew"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->m2()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->U:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->U:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->T:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->V:Ljava/lang/String;

    :cond_1
    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v1

    new-instance v2, Lcv;

    invoke-direct {v2, p0}, Lcv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {v1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v1

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v2}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v1

    new-instance v2, Ldv;

    invoke-direct {v2, p0, p1, v0}, Ldv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lev;

    invoke-direct {p1, p0}, Lev;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {v1, v2, p1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final a1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->s2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->r2()V

    :goto_0
    return-void
.end method

.method public a2(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadThumbByGlide:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerFragmentNew"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v0, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadThumb exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2
.end method

.method public final b1(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 4

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v1, Lt53;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {v1, v2, p2, v3, v0}, Lt53;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    new-instance p2, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$b;

    invoke-direct {p2, p0, p3}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$b;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b2(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lwu;

    invoke-direct {v1, p2, p1}, Lwu;-><init>(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lxu;

    invoke-direct {p2, p0}, Lxu;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    new-instance p0, Lyu;

    invoke-direct {p0}, Lyu;-><init>()V

    invoke-virtual {p1, p2, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final c1(Landroid/view/View;)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v2, Lt53;

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v0, v3, v1, v4}, Lt53;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$c;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$c;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public c2()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->onVolumeChange()V

    :cond_0
    return-void
.end method

.method public final d1(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->l2()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->V:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->T:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->p2(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->q:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->T:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Ltu;

    invoke-direct {v0, p0}, Ltu;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Luu;

    invoke-direct {v0, p0, p2}, Luu;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;)V

    new-instance p2, Lvu;

    invoke-direct {p2, p0}, Lvu;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {p1, v0, p2}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public d2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/BaseActivity;->isOnResumed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->i2()V

    invoke-static {}, Lmfb;->g()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lmfb;->n()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x7d1

    invoke-static {v0, v1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x496

    if-ne p1, v0, :cond_0

    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    instance-of p2, p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->W:Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_0
    return-void
.end method

.method public e2(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->setCurrentOffset(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->searchLyrics()V

    :cond_1
    return-void
.end method

.method public final f1(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->g1(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->g1(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F:Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->g1(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final f2(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/activities/AudioBucketListActivity;->B0(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public final g1(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    instance-of p0, p1, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$m;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$m;

    invoke-interface {p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$m;->onAudioLayoutSelected(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final g2(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    const-string v1, "|"

    if-eqz v0, :cond_2

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-nez p0, :cond_1

    iget p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    invoke-static {p0, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUriStringSafely(IZ)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v2}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album|"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p1, :cond_4

    move-object p0, p1

    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/audio/R$layout;->audio_player_fragment_new:I

    return p0
.end method

.method public final h1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->l:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioItem(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v1

    new-instance v2, Lfv;

    invoke-direct {v2, p0, v0}, Lfv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v0, Lgv;

    invoke-direct {v0}, Lgv;-><init>()V

    invoke-virtual {p0, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method public h2()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->showSearchRemoteLrcDialog()V

    :cond_0
    return-void
.end method

.method public final i1()Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->initAudioItem(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    return-object p0
.end method

.method public final i2()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->q:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->f(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    return-void
.end method

.method public final j1()[I
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x2d0

    if-le v1, v2, :cond_0

    int-to-float v1, v2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public j2(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    return-object p0
.end method

.method public final k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;
    .locals 2

    invoke-static {}, Lydc;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->B:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->A:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$id;->half_open_audio_player_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->B:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->isStop:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->onCallStartOrStop(Z)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->B:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final k2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v1, Lnv;

    invoke-direct {v1, p0}, Lnv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l1()Lcom/transsion/audio/widgets/MusicCurrentPlayListView;
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F:Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audio/widgets/MusicCurrentPlayListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F:Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setNightType(Z)Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F:Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setListColorFit(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F:Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/MusicPlayListView;->setForceNight()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F:Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42960000    # 75.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setTopMargin(I)Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F:Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/utils/a;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setBottomMargin(I)Lcom/transsion/audio/widgets/MusicPlayListView;

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F:Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    return-object p0
.end method

.method public final m2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    sget v1, Lcom/transsion/audio/R$drawable;->def_music_cover:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->changeDefImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    return-void
.end method

.method public final n1(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->W:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->W:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->W:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->b2(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final n2(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public final o1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->i2()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    new-instance v1, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;

    invoke-direct {v1, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setAudioPlayClickListener(Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->s:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->d0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_2
    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v0

    iget-boolean v0, v0, Lmc3;->a:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const-string v1, "vd_audio_play_equalizer_status"

    const-string v2, "equalizer"

    invoke-static {v1, v2, v0}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->h1()V

    return-void
.end method

.method public o2(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->setVolume(Z)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->e0:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->s:Lcom/transsion/WindowInfoViewModel;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioPlayerFragmentNew"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->X:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x496

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->T:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->U:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->V:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->N:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->b0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->E1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->q:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->c()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Q:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->r:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->i()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->P:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->r:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->m()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->O:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string v0, "change_audio_cover"

    invoke-virtual {p0, v0}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    return-void
.end method

.method public onDetach()V
    .locals 3

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->onDetach()V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->e0:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->X:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->X:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->X:Landroid/database/ContentObserver;

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x496

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F:Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/MusicPlayListView;->refresh()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    const-string v1, "video_play_fragment_bean"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStart()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->onStart()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "audio_list_item_click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updatePlayPauseButton(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->onStart()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->B:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->onCallStartOrStop(Z)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStop()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->onStop()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->onStop()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->B:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->onCallStartOrStop(Z)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onViewCreated "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->l:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AudioPlayerFragmentNew"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p2, Lcom/transsion/audio/R$id;->rootView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->v:Landroid/view/View;

    sget p2, Lcom/transsion/audio/R$id;->bgPrevious:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->t:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/audio/R$id;->bgNext:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->u:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/audio/R$id;->audio_player_main_viewpager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y:Landroidx/viewpager2/widget/ViewPager2;

    sget p2, Lcom/transsion/audio/R$id;->page_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->I:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    sget p2, Lcom/transsion/audio/R$id;->half_open_audio_player_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->A:Landroid/view/ViewStub;

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->initPagers()V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/audio/player/MusicPlayManager;->e1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string p2, "change_audio_cover"

    invoke-virtual {p1, p2}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    new-instance p2, Lou;

    invoke-direct {p2, p0}, Lou;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {p1, p0, p2}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public p1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final q1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->v:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x80

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public final synthetic r1(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->j1()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " screenHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioPlayerFragmentNew"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/16 v2, 0xff

    invoke-static {p0, p1, v1, v0, v2}, Lvk1;->b(Landroid/content/Context;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lvk1;->n(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lvk1;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public releaseWhenDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->releaseWhenDestroyView()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->a0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public final synthetic s1(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->U:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->V:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->T:Landroid/graphics/Bitmap;

    invoke-direct {p0, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->p2(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->q:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final s2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/audio/activities/AudioRingSheetDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "data"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->j2(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic t1(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->l2()V

    return-void
.end method

.method public final t2()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "data"

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "from_page"

    const-string v2, "AudioPlayPage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->K:Ljava/util/ArrayList;

    invoke-static {v1}, Lvg9;->e(Ljava/util/ArrayList;)V

    const-string v1, "from_list_more_icon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v2, Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final u2(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->x:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string p0, "AudioPlayerFragmentNew"

    const-string p1, "startAnimAlbumFade defWindow has been set"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->x:Z

    iget-boolean p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->t:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->c1(Landroid/view/View;)V

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->u:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->b1(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->u:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->c1(Landroid/view/View;)V

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->t:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->b1(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    return-void
.end method

.method public final synthetic v1(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Ljava/lang/Boolean;
    .locals 6

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-static {}, Llc3;->d()Z

    move-result p2

    xor-int/lit8 v2, p2, 0x1

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v5, 0x1

    const-string v3, "vd_audio_playpage_show"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audio/player/MusicPlayManager;->D0(Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/lang/String;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Z)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final v2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/BaseActivity;->isOnResumed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Loa1;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmv;

    invoke-direct {v1, p0}, Lmv;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic w1(I)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->l1()Lcom/transsion/audio/widgets/MusicCurrentPlayListView;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->i1()Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    move-result-object p0

    return-object p0
.end method

.method public final w2()V
    .locals 1

    sget-boolean v0, Lpp3;->u:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->showEqDialog(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/audio/widgets/EqDialog;->showEqDialog(Landroid/content/Context;)V

    const-string p0, "vd_audio_equalizer_pop_show"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public final x2()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/transsion/audio/activities/TimerDialogSheetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic y1(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->K:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final y2(ZZ)V
    .locals 9

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->L:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->M:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    const p2, 0x3f28f5c3    # 0.66f

    const v3, 0x3ea8f5c3    # 0.33f

    const-wide/16 v4, 0xc8

    const-string v6, "alpha"

    const/4 v7, 0x0

    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y:Landroidx/viewpager2/widget/ViewPager2;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v8, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->L:Landroid/animation/ObjectAnimator;

    new-instance v4, Lt53;

    invoke-direct {v4, v3, v7, p2, v2}, Lt53;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->L:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->L:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$k;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$k;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object v8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v8, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->M:Landroid/animation/ObjectAnimator;

    new-instance v4, Lt53;

    invoke-direct {v4, v3, v7, p2, v2}, Lt53;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->M:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->M:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y:Landroidx/viewpager2/widget/ViewPager2;

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p2

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p2, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->setVisibility(I)V

    :cond_6
    if-nez p1, :cond_7

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->k1()Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->setAlpha(F)V

    :cond_8
    :goto_1
    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->e1()V

    :cond_9
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->q1(Z)V

    if-eqz p1, :cond_a

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x463

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_a
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public z2(II)V
    .locals 0

    return-void
.end method
