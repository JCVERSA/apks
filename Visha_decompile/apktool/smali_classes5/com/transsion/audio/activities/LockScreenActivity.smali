.class public Lcom/transsion/audio/activities/LockScreenActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/ImageView;

.field public Q:Landroid/widget/ImageView;

.field public R:Landroid/widget/ImageView;

.field public S:Landroid/widget/ImageView;

.field public T:Landroid/widget/ImageView;

.field public U:Lcom/transsion/audio/player/MusicPlayManager;

.field public V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

.field public W:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final X:Ljava/util/ArrayList;

.field public Y:Z

.field public Z:Landroid/view/ViewGroup;

.field public a0:Lcom/transsion/audio/widgets/LrcViewNew;

.field public b0:Lcom/transsion/widgets/FadingEdgeLayout;

.field public c0:Lcom/transsion/WindowInfoViewModel;

.field public d0:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field public e0:Landroid/view/View;

.field public f0:Z

.field public g0:Lcom/transsion/widgets/CustomSwipeBackLayout;

.field public final h0:Landroidx/lifecycle/Observer;

.field public final i0:Lcom/transsion/audio/player/MusicPlayManager$d;

.field public j0:Ljava/lang/Runnable;

.field public k0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->X:Ljava/util/ArrayList;

    new-instance v0, Lso5;

    invoke-direct {v0, p0}, Lso5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->h0:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/transsion/audio/activities/LockScreenActivity$b;

    invoke-direct {v0, p0}, Lcom/transsion/audio/activities/LockScreenActivity$b;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->i0:Lcom/transsion/audio/player/MusicPlayManager$d;

    new-instance v0, Lap5;

    invoke-direct {v0, p0}, Lap5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->j0:Ljava/lang/Runnable;

    new-instance v0, Lbp5;

    invoke-direct {v0, p0}, Lbp5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->k0:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/audio/activities/LockScreenActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->h1()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/audio/activities/LockScreenActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->e1()V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/audio/activities/LockScreenActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->Z0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/audio/activities/LockScreenActivity;Landroid/util/Pair;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->b1(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/LyricData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->g1(Lcom/transsion/dbdata/beans/LyricData;)V

    return-void
.end method

.method public static synthetic F0(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->i1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static bridge synthetic G0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->W:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public static bridge synthetic H0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/widgets/FadingEdgeLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->b0:Lcom/transsion/widgets/FadingEdgeLayout;

    return-object p0
.end method

.method public static bridge synthetic I0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/widgets/LrcViewNew;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    return-object p0
.end method

.method public static bridge synthetic J0(Lcom/transsion/audio/activities/LockScreenActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->k0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic K0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/player/MusicPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    return-object p0
.end method

.method public static bridge synthetic L0(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->W:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method

.method public static bridge synthetic M0(Lcom/transsion/audio/activities/LockScreenActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->x1(Z)V

    return-void
.end method

.method public static Q0(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x800000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic V0(Lcom/transsion/audio/activities/LockScreenActivity;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lao;->y(Z)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private synthetic f1()V
    .locals 1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/LockScreenActivity;->E1(I)V

    return-void
.end method

.method private k1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->s1()V

    if-nez p1, :cond_0

    const-string p0, "LockScreenActivity"

    const-string p1, "loadPlayBackground failed,audio item is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lhp5;

    invoke-direct {v1, p0, p1}, Lhp5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

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

    new-instance v0, Lip5;

    invoke-direct {v0, p0}, Lip5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    new-instance v1, Lto5;

    invoke-direct {v1, p0}, Lto5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    invoke-virtual {p1, v0, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void

    :cond_1
    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Luo5;

    invoke-direct {v1, p0, p1}, Luo5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

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

    new-instance v0, Lvo5;

    invoke-direct {v0, p0}, Lvo5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    new-instance v1, Lwo5;

    invoke-direct {v1, p0}, Lwo5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    invoke-virtual {p1, v0, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/audio/activities/LockScreenActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->f1()V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/activities/LockScreenActivity;->X0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/util/Pair;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/activities/LockScreenActivity;->a1(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lcom/transsion/audio/activities/LockScreenActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->S0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/audio/activities/LockScreenActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->c1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/audio/activities/LockScreenActivity;Lwoc;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->d1(Lwoc;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/audio/activities/LockScreenActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->T0(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Lcom/transsion/audio/activities/LockScreenActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->Y0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic x0(Lcom/transsion/audio/activities/LockScreenActivity;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->V0(Lcom/transsion/audio/activities/LockScreenActivity;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y0(Lcom/transsion/audio/activities/LockScreenActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->W0(Ljava/util/ArrayList;)V

    return-void
.end method

.method private y1()V
    .locals 4

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "LockScreenActivity"

    const-string v0, "triggerFavoriteButton failed,not get audio item"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->Y:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-boolean v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->Y:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vd_audio_locmusic_cl"

    const-string v3, "play_favorite"

    invoke-static {v2, v3, v1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcp5;

    invoke-direct {v1, p0, v0}, Lcp5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {v1}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic z0(Lcom/transsion/audio/activities/LockScreenActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->U0(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final A1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public B1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->d0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->W:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->c(ILandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->C1()V

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v2, v3, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    :cond_4
    iget v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v3}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/transsion/audio/activities/LockScreenActivity;->A1(Z)V

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->k0:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->k1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->q1()V

    return-void
.end method

.method public C1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->X:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->W:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->Y:Z

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->T:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/audio/R$drawable;->ic_farvorited_on_audio:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/audio/R$drawable;->ic_favorites:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public D1(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->C1()V

    return-void
.end method

.method public E1(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->S:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    sget v1, Lcom/transsion/audio/R$drawable;->ic_pause_lrc:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/transsion/audio/R$drawable;->ic_play_lrc:I

    :goto_1
    invoke-static {v0, v1}, Lkdc;->b(Landroid/widget/ImageView;I)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->setPause(Z)V

    return-void
.end method

.method public F1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->Q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->h0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->R:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->g0()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final N0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->c0:Lcom/transsion/WindowInfoViewModel;

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->e0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0}, Lwoc;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lwoc;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lwoc;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x42640000    # 57.0f

    goto :goto_0

    :cond_1
    const/high16 v3, 0x428e0000    # 71.0f

    :goto_0
    invoke-static {v2, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/transsion/audio/activities/LockScreenActivity;->e0:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lwoc;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x435c0000    # 220.0f

    goto :goto_1

    :cond_2
    const/high16 v3, 0x43660000    # 230.0f

    :goto_1
    invoke-static {v2, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lwoc;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x438e0000    # 284.0f

    goto :goto_2

    :cond_3
    const/high16 v3, 0x43320000    # 178.0f

    :goto_2
    invoke-static {v2, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lwoc;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_3

    :cond_4
    const/high16 v0, 0x42000000    # 32.0f

    :goto_3
    invoke-static {v2, v0}, Loc2;->a(Landroid/content/Context;F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public final O0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->c0:Lcom/transsion/WindowInfoViewModel;

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->h0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final P0(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->s1()V

    return-void

    :cond_0
    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lxo5;

    invoke-direct {v0, p0}, Lxo5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

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

    new-instance v0, Lyo5;

    invoke-direct {v0, p0}, Lyo5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    new-instance v1, Lzo5;

    invoke-direct {v1, p0}, Lzo5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    invoke-virtual {p1, v0, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final R0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setCurrentColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$color;->lyric_timeline_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setTimeTextColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$color;->lyric_second_highlight_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setTimelineTextColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$color;->lyric_normal_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setNormalColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->no_lyrics:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->setDraggable(ZLcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->setOnTapListener(Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;)V

    return-void
.end method

.method public final synthetic S0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->s1()V

    return-void
.end method

.method public final synthetic T0(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lvk1;->b(Landroid/content/Context;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic U0(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->v1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final synthetic W0(Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->D1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final synthetic X0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;
    .locals 3

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
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

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
    const-string p1, "LockScreenActivity"

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

.method public final synthetic Y0(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->setCoverImg(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->P0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final synthetic Z0(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "LockScreenActivity"

    const-string v1, "Error in loadBackground"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->s1()V

    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    sget v0, Lcom/transsion/audio/R$drawable;->def_music_cover:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->setDefCoverImgSync(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final synthetic a1(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/util/Pair;
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v1}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p2}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/activities/LockScreenActivity;->m1(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p2}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_2

    invoke-static {p1}, Ltn;->j(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic b1(Landroid/util/Pair;)V
    .locals 3

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/LockScreenActivity;->P0(Landroid/graphics/Bitmap;)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/dbdata/database/AudioAlbum;

    if-eqz p1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    iget-object p1, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->setCoverImg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->setCoverImg(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->setCoverImg(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->setCoverImg(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final synthetic c1(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->s1()V

    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    sget v0, Lcom/transsion/audio/R$drawable;->def_music_cover:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->setDefCoverImgSync(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final synthetic d1(Lwoc;)V
    .locals 2

    iget p1, p1, Lwoc;->a:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->N0()V

    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->scale(FZ)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    iget-boolean v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->f0:Z

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->onFoldScreenChange()V

    :cond_2
    return-void
.end method

.method public final synthetic e1()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->p1()V

    return-void
.end method

.method public final synthetic g1(Lcom/transsion/dbdata/beans/LyricData;)V
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/LyricData;->offset:I

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->r1(I)V

    return-void
.end method

.method public final synthetic h1()V
    .locals 3

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x41f

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->C1()V

    invoke-static {p0}, Lvf;->f(Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic i1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->Y:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Lao;->l0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    new-instance p1, Lep5;

    invoke-direct {p1, p0}, Lep5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j1()V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lfp5;

    invoke-direct {v1}, Lfp5;-><init>()V

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

    new-instance v1, Lgp5;

    invoke-direct {v1, p0}, Lgp5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final l1()V
    .locals 3

    const-string v0, "audio_play_repeat_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->P:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/audio/activities/LockScreenActivity;->u1(ILandroid/widget/ImageView;Z)V

    return-void
.end method

.method public m1(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final n1(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->U0()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->Y0()V

    :goto_0
    return-void
.end method

.method public o1()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->j0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/audio/R$id;->iv_loop:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->z1()I

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x421

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/transsion/audio/R$id;->iv_play_pre:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/transsion/audio/activities/LockScreenActivity;->n1(Z)V

    const-string p0, "Previous song"

    invoke-static {p0}, Lmz5;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/audio/R$id;->iv_play:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->w1()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "pause"

    goto :goto_0

    :cond_2
    const-string p0, "play"

    :goto_0
    invoke-static {p0}, Lmz5;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget v0, Lcom/transsion/audio/R$id;->iv_play_next:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/transsion/audio/activities/LockScreenActivity;->n1(Z)V

    const-string p0, "next song"

    invoke-static {p0}, Lmz5;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget v0, Lcom/transsion/audio/R$id;->iv_far:I

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->y1()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->t1(Landroid/view/Window;)V

    sget p1, Lcom/transsion/audio/R$layout;->activity_lock_screen_player:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lpp3;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    const-class p1, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/WindowInfoViewModel;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->c0:Lcom/transsion/WindowInfoViewModel;

    sget p1, Lcom/transsion/audio/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->N:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget p1, Lcom/transsion/audio/R$id;->tv_artist:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->O:Landroid/widget/TextView;

    sget p1, Lcom/transsion/audio/R$id;->iv_loop:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/audio/R$id;->iv_play_pre:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/audio/R$id;->iv_play:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/audio/R$id;->iv_play_next:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/audio/R$id;->iv_far:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/audio/R$id;->container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->Z:Landroid/view/ViewGroup;

    sget p1, Lcom/transsion/audio/R$id;->music_alumb_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/MusicAlbumView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    sget p1, Lcom/transsion/audio/R$id;->fading_edge_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/FadingEdgeLayout;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->b0:Lcom/transsion/widgets/FadingEdgeLayout;

    sget p1, Lcom/transsion/audio/R$id;->lyrics_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/widgets/LrcViewNew;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->R0()V

    const-class p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->d0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->h()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Ldp5;

    invoke-direct {v0, p0}, Ldp5;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->i0:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->j1()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->l1()V

    sget p1, Lcom/transsion/audio/R$id;->ll_operate:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->e0:Landroid/view/View;

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->O0()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->N0()V

    sget p1, Lcom/transsion/audio/R$id;->swipeBackLayout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/CustomSwipeBackLayout;

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->g0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    new-instance v0, Lcom/transsion/audio/activities/LockScreenActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/activities/LockScreenActivity$a;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    invoke-virtual {p1, v0}, Lcom/gw/swipeback/SwipeBackLayout;->setSwipeBackListener(Lcom/gw/swipeback/SwipeBackLayout$c;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->c0:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->h0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->i0:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->o1()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onPause()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->o1()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(JZ)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LockScreenActivity;->p1()V

    :cond_0
    return-void
.end method

.method public p1()V
    .locals 10

    const-wide/16 v0, 0x1f4

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->R()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v4, v4

    :try_start_1
    iget-object v6, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v6}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v6, v6

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/transsion/audio/activities/LockScreenActivity;->j0:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v9, p0, Lcom/transsion/audio/activities/LockScreenActivity;->j0:Ljava/lang/Runnable;

    invoke-virtual {v8, v9, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0, v6, v7}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(J)V

    :cond_1
    return-void

    :catchall_0
    move-exception v6

    goto :goto_0

    :catchall_1
    move-exception v6

    move-wide v4, v2

    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/audio/activities/LockScreenActivity;->j0:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/transsion/audio/activities/LockScreenActivity;->j0:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long v0, v4, v2

    if-gtz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0, v2, v3}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(J)V

    :cond_3
    throw v6
.end method

.method public q1()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/LockScreenActivity;->x1(Z)V

    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-direct {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->u()V

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->W:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->E(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->onLrcLoaded(Ljava/util/List;)V

    new-instance v1, Lcom/transsion/audio/activities/LockScreenActivity$3;

    invoke-direct {v1, p0}, Lcom/transsion/audio/activities/LockScreenActivity$3;-><init>(Lcom/transsion/audio/activities/LockScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->C(Lcom/transsion/audio/lyrics/LrcSearcher$i;)V

    return-void
.end method

.method public final r1(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->setDelayMs(I)V

    return-void
.end method

.method public final s1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->Z:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/audio/R$drawable;->bg_audio_play:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final t1(Landroid/view/Window;)V
    .locals 3

    sget v0, Lcom/transsion/audio/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1302

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public final u1(ILandroid/widget/ImageView;Z)V
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget p0, Lcom/transsion/audio/R$drawable;->ic_lock_screen_loop_list:I

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    sget p0, Lcom/transsion/audio/R$drawable;->ic_lock_screen_loop_one:I

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/audio/R$drawable;->ic_lock_screen_loop_random:I

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    if-eqz p3, :cond_2

    invoke-static {p1}, Lp10;->b(I)V

    :cond_2
    return-void
.end method

.method public final v1(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->Z:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public w1()Z
    .locals 1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final x1(Z)V
    .locals 4

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->f0:Z

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->b0:Lcom/transsion/widgets/FadingEdgeLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->V:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->a0:Lcom/transsion/audio/widgets/LrcViewNew;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final z1()I
    .locals 4

    const/4 v0, 0x1

    const-string v1, "audio_play_repeat_mode"

    invoke-static {p0, v1, v0}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Liz;->d(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/audio/activities/LockScreenActivity;->P:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/transsion/audio/activities/LockScreenActivity;->u1(ILandroid/widget/ImageView;Z)V

    invoke-static {p0, v1, v0}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->U:Lcom/transsion/audio/player/MusicPlayManager;

    new-instance v1, Liz;

    invoke-direct {v1, v0}, Liz;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->k1(Liz;)V

    invoke-static {v0}, Lmz5;->c(I)V

    return v0
.end method
