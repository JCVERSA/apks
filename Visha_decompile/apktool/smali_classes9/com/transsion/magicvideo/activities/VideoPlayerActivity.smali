.class public Lcom/transsion/magicvideo/activities/VideoPlayerActivity;
.super Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# static fields
.field public static R0:Z


# instance fields
.field public A0:I

.field public B0:I

.field public C0:[I

.field public D0:Z

.field public E0:Z

.field public final F0:Landroid/os/Handler;

.field public G0:Z

.field public H0:I

.field public I0:I

.field public J0:J

.field public final K0:Ljava/lang/Runnable;

.field public final L0:Ljava/lang/Runnable;

.field public M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

.field public final N0:Landroid/content/BroadcastReceiver;

.field public final O0:Ljava/lang/Runnable;

.field public final P0:Ljava/lang/Runnable;

.field public final Q0:Ljava/lang/Runnable;

.field public R:Z

.field public S:Z

.field public T:Landroid/view/View;

.field public U:Landroid/widget/TextView;

.field public V:I

.field public W:Z

.field public X:Z

.field public Y:Landroid/view/WindowInsets;

.field public Z:Z

.field public a0:Z

.field public b0:Lcom/transsion/magicvideo/widgets/VideoLoadingView;

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:I

.field public h0:Z

.field public i0:Z

.field public j0:Z

.field public k0:Z

.field public l0:Ljava/lang/String;

.field public m0:Z

.field public n0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public o0:Z

.field public p0:Lcom/transsion/dbdata/beans/media/PlayVideoData;

.field public q0:Z

.field public final r0:Ljava/lang/Runnable;

.field public s0:Lcom/transsion/widgets/CustomSwipeBackLayout;

.field public t0:Landroid/view/View;

.field public final u0:Z

.field public v0:Z

.field public w0:Landroid/view/OrientationEventListener;

.field public x0:I

.field public y0:I

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->a0:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->c0:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->d0:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->e0:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->f0:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->h0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->k0:Z

    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->m0:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->o0:Z

    new-instance v1, Layb;

    invoke-direct {v1, p0}, Layb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    iput-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->r0:Ljava/lang/Runnable;

    invoke-static {}, Lpp3;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->u0:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->x0:I

    iput v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y0:I

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->z0:Z

    iput v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A0:I

    iput v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->B0:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->C0:[I

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iput v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->H0:I

    iput v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->I0:I

    new-instance v0, Lbyb;

    invoke-direct {v0, p0}, Lbyb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->K0:Ljava/lang/Runnable;

    new-instance v0, Lcyb;

    invoke-direct {v0, p0}, Lcyb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->L0:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$d;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$d;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->N0:Landroid/content/BroadcastReceiver;

    new-instance v0, Ldyb;

    invoke-direct {v0, p0}, Ldyb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->O0:Ljava/lang/Runnable;

    new-instance v0, Llxb;

    invoke-direct {v0, p0}, Llxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->P0:Ljava/lang/Runnable;

    new-instance v0, Lmxb;

    invoke-direct {v0, p0}, Lmxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Q0:Ljava/lang/Runnable;

    return-void
.end method

.method private C1()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->Y()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic G0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic H0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Q1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic I0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Z1(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic J0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->e2()V

    return-void
.end method

.method public static synthetic K0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->U1()V

    return-void
.end method

.method public static synthetic L0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s1()V

    return-void
.end method

.method public static synthetic M0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->W1(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    return-void
.end method

.method public static synthetic N0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->d2()V

    return-void
.end method

.method public static synthetic O0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->V1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->R1(Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic Q0(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Y1(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->T1(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic S0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->X1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic T0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->a2()V

    return-void
.end method

.method public static synthetic U0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->k2()V

    return-void
.end method

.method public static synthetic V0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->c2()V

    return-void
.end method

.method public static synthetic W0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->f2(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->b2()V

    return-void
.end method

.method public static synthetic Y0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Intent;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->S1(Landroid/content/Intent;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic Y1(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 0

    invoke-static {p1}, Lsuc;->d(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-object p0
.end method

.method public static bridge synthetic Z0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->G0:Z

    return p0
.end method

.method public static bridge synthetic a1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->R:Z

    return p0
.end method

.method public static bridge synthetic b1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y0:I

    return p0
.end method

.method public static bridge synthetic c1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->o0:Z

    return-void
.end method

.method public static bridge synthetic d1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y0:I

    return-void
.end method

.method public static bridge synthetic e1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method public static bridge synthetic f1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->r1()V

    return-void
.end method

.method public static bridge synthetic g1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->u1()V

    return-void
.end method

.method public static bridge synthetic h1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->C1()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M1()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->O1()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic k1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->j2()V

    return-void
.end method

.method public static bridge synthetic l1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n2()V

    return-void
.end method

.method public static bridge synthetic m1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->q2()V

    return-void
.end method

.method public static bridge synthetic n1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->t2()V

    return-void
.end method

.method public static bridge synthetic o1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->v2()V

    return-void
.end method

.method public static q1()V
    .locals 3

    sget-object v0, Lo18;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeOttPip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoPlayer_Activity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A1(Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "external"

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lff6;->f()V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lce9;->a:Lvxc;

    :try_start_0
    invoke-virtual {v3, v1}, Lorg/schabi/newpipe/extractor/StreamingService;->k(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, La16;->a:J

    sget-object v4, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    if-ne v3, v4, :cond_1

    invoke-static {p0}, Leuc;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E2(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, La16;->a:J

    invoke-static {}, Lff6;->h()I

    move-result v3

    invoke-static {v3, v1}, Lff6;->i(ILjava/lang/String;)Lxm9;

    move-result-object v3

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v4

    invoke-virtual {v3, v4}, Lxm9;->c(Lpn9;)Lxm9;

    move-result-object v3

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object v3

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lxm9;->m(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object v3

    new-instance v4, Lpxb;

    invoke-direct {v4, p0, p1}, Lpxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Intent;)V

    new-instance p1, Lqxb;

    invoke-direct {p1, p0, v1}, Lqxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4, p1}, Lxm9;->p(Lzf1;Lzf1;)Lrc2;

    goto :goto_0

    :cond_1
    const-string p1, "youtube"

    invoke-static {p1}, La16;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->u2(Ljava/lang/String;)V

    const-string p1, "fail"

    const-string v3, "vd_play_ytb_loading"

    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5, v3}, La16;->c(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v2}, La16;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->u2(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, v0}, Llz5;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_1
    invoke-static {v2}, La16;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->u2(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v2}, La16;->b(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v1, :cond_4

    const-string v2, ""

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2, v0}, Llz5;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>(Landroid/net/Uri;Z)V

    invoke-virtual {p0, v0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final A2()V
    .locals 2

    new-instance v0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p0, v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    return-void
.end method

.method public B0()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->B0()V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->V()V

    :cond_0
    return-void
.end method

.method public final B1(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->t0:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A0:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->B0:I

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->D2()V

    :cond_2
    iget v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A0:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->B0:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->N1(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeBackLayout;->enableSwipeBack(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final B2(Landroid/content/res/Configuration;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->x0:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    move v0, v1

    :cond_3
    iput v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->x0:I

    :cond_4
    :goto_1
    iget p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->x0:I

    iput p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y0:I

    return-void
.end method

.method public C0(ILandroid/view/KeyEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->C0(ILandroid/view/KeyEvent;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->W(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public final C2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    return-void
.end method

.method public final D1()V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$id;->video_layout_permission:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->T:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->text_permission:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->U:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public final D2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->t0:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->C0:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->C0:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A0:I

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->t0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->B0:I

    :cond_0
    return-void
.end method

.method public final E1()V
    .locals 2

    invoke-static {}, Lw;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljw4;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->g2()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ln;->n()V

    new-instance v0, Lsxb;

    invoke-direct {v0, p0}, Lsxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final E2(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->b0:Lcom/transsion/magicvideo/widgets/VideoLoadingView;

    if-nez v1, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$id;->video_loading_ll:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/magicvideo/widgets/VideoLoadingView;

    iput-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->b0:Lcom/transsion/magicvideo/widgets/VideoLoadingView;

    invoke-virtual {v1, v0}, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->b0:Lcom/transsion/magicvideo/widgets/VideoLoadingView;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public F1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initData videoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initData mediaInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "play_bucket_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    invoke-static {p2}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p2

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance v0, Lyxb;

    invoke-direct {v0, p0, p1}, Lyxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    invoke-virtual {p2, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lzxb;

    invoke-direct {p2, p0}, Lzxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->checkThePlayUriIsFromNet()V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->p2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lm16;->a:J

    return-void
.end method

.method public final G1()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->u0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$f;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public final H1()V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$id;->video_back_area:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->t0:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->video_swipeBackLayout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomSwipeBackLayout;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gw/swipeback/SwipeBackLayout;->setSwipeFromEdge(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeBackLayout;->enableSwipeBack(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    new-instance v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$b;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/gw/swipeback/SwipeBackLayout;->setSwipeBackListener(Lcom/gw/swipeback/SwipeBackLayout$c;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->t0:Landroid/view/View;

    new-instance v1, Lrxb;

    invoke-direct {v1, p0}, Lrxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public I1(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Landroid/content/Intent;ZLcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Ltxb;

    invoke-direct {v1, p1}, Ltxb;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

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

    new-instance v0, Luxb;

    invoke-direct {v0, p0, p3, p4, p2}, Luxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final J1(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    const/16 v2, 0xb

    if-eq p1, v2, :cond_2

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    return v0

    :cond_0
    :pswitch_0
    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    :pswitch_1
    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    move v0, v1

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public K1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->G0:Z

    return p0
.end method

.method public final L1()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->restore(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->D0(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result p0

    return p0
.end method

.method public final M1()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final N1(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A0:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->B0:I

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->D2()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->v1()I

    move-result v1

    iget v2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->B0:I

    iget v3, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A0:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_3

    div-int/lit8 v3, v2, 0x2

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {p0, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A0:I

    add-int/2addr p0, v1

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public final O1()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->Z()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public P1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->z0:Z

    return p0
.end method

.method public final synthetic Q1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E2(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic R1(Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, v0, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->I1(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Landroid/content/Intent;ZLcom/transsion/dbdata/beans/media/PlayVideoData;)V

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E2(Z)V

    return-void
.end method

.method public final synthetic S1(Landroid/content/Intent;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->e0:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->f0:Z

    const-string v1, "youtube"

    invoke-static {v1}, La16;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->I1(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Landroid/content/Intent;ZLcom/transsion/dbdata/beans/media/PlayVideoData;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E2(Z)V

    return-void
.end method

.method public final synthetic T1(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string p2, "youtube"

    invoke-static {p2}, La16;->b(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E2(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->u2(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    const-string p2, "vd_play_ytb_loading"

    const-string v0, "fail"

    invoke-static {v0, p0, p1, p2}, La16;->c(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public final synthetic U1()V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;

    sget-object v1, Ln;->d:Ljava/lang/String;

    sget-object v2, Ln;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lj0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AIConfigHelper;->getAISubtitleConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->setSubConfigJson(Ljava/lang/String;)V

    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, v0, p0}, Ljw4;->k(Le74;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic V1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->l2(Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic W1(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->p2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    return-void
.end method

.method public final synthetic X1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->N1(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeBackLayout;->enableSwipeBack(Z)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->j2()V

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/widgets/CustomSwipeBackLayout;->enableSwipeBack(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    invoke-virtual {p0, p2}, Lcom/transsion/widgets/CustomSwipeBackLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public final synthetic Z1(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 10

    invoke-static {p4}, Lsuc;->c(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getHeight()I

    move-result v4

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v7

    move v9, p1

    invoke-static/range {v1 .. v9}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->createYoutubePlayData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZJZ)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-wide v1, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    :cond_0
    iget p2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->g0:I

    iput p2, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-virtual {p0, v0, p3}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E2(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    const-string p3, "vd_play_ytb_loading"

    invoke-static {p0, p1, p2, p3}, La16;->c(Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, La16;->a:J

    :cond_1
    return-void
.end method

.method public final synthetic a2()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->D0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lpp3;->w()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lpp3;->j()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string v2, "android.intent.action.MY_PACKAGE_SUSPENDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->N0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->D0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "VideoPlayer_Activity"

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E0:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->D0()V

    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E0:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic b2()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-direct {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setIgnoreUserExperience(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setGdprStyle(I)V

    sget v2, Lcom/transsion/magicvideo/R$string;->visha_welcome_to:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-boolean v4, Lpp3;->c:Z

    if-eqz v4, :cond_1

    sget v4, Lcom/transsion/magicvideo/R$string;->visha_Player_pre:I

    goto :goto_0

    :cond_1
    sget v4, Lcom/transsion/magicvideo/R$string;->visha_Player:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setTitleText(Ljava/lang/String;)V

    sget v2, Lcom/transsion/magicvideo/R$string;->gdpr_notice_visha_translatable:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setContentText(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {p0, v2, v1, v0}, Lcom/transsion/privacy/MarkPointUtil;->y(Landroid/content/Context;Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final synthetic c2()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic d2()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->q0:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->r1()V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x461

    if-eq p1, v0, :cond_0

    const/16 v0, 0x47c

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "didReceivedNotification eventId finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->finish()V

    :cond_1
    const/16 v0, 0x464

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_2
    const/16 v0, 0x47a

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->k0:Z

    :cond_3
    const/16 v0, 0x490

    if-ne p1, v0, :cond_5

    array-length v0, p2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->s0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    aget-object p2, p2, v1

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeBackLayout;->enableSwipeBack(Z)V

    :cond_5
    const/16 p2, 0x48c

    if-ne p1, p2, :cond_6

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->j0()V

    :cond_6
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->B1(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final synthetic e2()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v0, v1}, Lcom/transsion/utils/a;->B(Landroid/app/Activity;FF)V

    return-void
.end method

.method public final synthetic f2(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iput-object p2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Y:Landroid/view/WindowInsets;

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public finish()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->v2()V

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->X()V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->m0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->k0:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/magicvideo/R$anim;->activity_audio_slide_out_down:I

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "finish_media_player_activity"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final g2()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->h2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h2(Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i2()V
    .locals 4

    const-string v0, "VideoPlayer_Activity"

    const-string v1, "onWindowFirstFrameRendered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->r0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->O0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-static {}, Lw;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Q0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->setNavVisibility(Z)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->I(Landroid/content/Context;)V

    return-void
.end method

.method public initNotify()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->initNotify()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x47c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x461

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x47a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v0, 0x490

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isExtendAngelMonitorTime()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isInitWindowOptions()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedAngelSensor()Z
    .locals 0

    invoke-static {}, Lydc;->g()Z

    move-result p0

    return p0
.end method

.method public isRestrictPermissionGuideShow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j2()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->u0:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->q0:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lkxb;->a(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Z)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->q0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "VideoPlayer_Activity"

    const-string v1, "prepareWindowForSwipeDismiss failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public final k2()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->H0:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->I0:I

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->p1(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final l2(Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 6

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    :goto_0
    invoke-static {p0, v0}, Ljy7;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v1

    invoke-virtual {v1, p0}, Ltpb;->m(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    const-string v1, "VideoPlayer_Activity"

    if-nez p0, :cond_2

    const-string p0, "initData queryVideoItemFromPath mediaItem null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-string p0, "initData queryVideoItemFromPath error"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initData data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "play_media_id"

    iget v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "play_bucket_id"

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "media_from_internal"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    :goto_1
    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoFrom:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoFrom:Ljava/lang/String;

    invoke-static {p0}, La16;->b(Ljava/lang/String;)V

    :cond_5
    const-string p0, "TAG_PLAY_FROM"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->EXTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->from:I

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->restore(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p2

    :cond_7
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->checkThePlayUriIsFromNet()V

    return-object p2
.end method

.method public final synthetic lambda$new$0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->p0:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->p2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->r1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadSkin(Z)I
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public m2(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lw;->j()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->h2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n2()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->T()V

    :cond_0
    return-void
.end method

.method public final o2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->o0:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$c;

    invoke-direct {v2, p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$c;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/view/View;)V

    iput-object v2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string p0, "VideoPlayer_Activity"

    const-string v0, "registerWindowFirstFrameListener"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->d0(IILandroid/content/Intent;)V

    :cond_0
    const/16 p2, 0x27e5

    if-ne p1, p2, :cond_1

    const-string p1, "VideoPlayer_Activity"

    const-string p2, "onActivityResult finish"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    const-string v0, "privacy_policy_cl"

    const-string v1, "version"

    const-wide v2, 0xd91af27358L

    invoke-static {v2, v3, v0, v1}, Lcom/transsion/privacy/MarkPointUtil;->p(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->P0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->l0:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v0, :cond_1

    const-string v0, "vd_play_listen_back"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->e0:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lk38;->f(Landroid/app/Activity;)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->d0:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lbd4;->b(Landroid/content/Context;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->e0:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->v2()V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->a0:Z

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-static {v0}, Lfsb;->a(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->supportFinishAfterTransition()V

    const-string v0, "VideoPlayer_Activity"

    const-string v2, "onBackPressed finish"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const-string v0, "onback_from_play_video"

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eq v1, v2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->K1()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v4

    :goto_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_4

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    if-eqz v0, :cond_5

    invoke-static {p0, v3}, Lkxb;->a(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Z)Z

    iput-boolean v4, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->q0:Z

    :cond_5
    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->B2(Landroid/content/res/Configuration;)V

    :cond_6
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_7

    move v1, v4

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    if-eq v2, v1, :cond_8

    iput-boolean v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mStatusPlayUiShow:Z

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->setNavVisibility(Z)V

    :cond_8
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iget-boolean v2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->R:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->W:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->V:I

    if-eq p1, v2, :cond_a

    iput p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->V:I

    const/16 v2, 0x20

    if-ne p1, v2, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p0, v3}, Lcom/transsion/playercommon/activities/BaseActivity;->setWindowBackground(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->U:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    sget v2, Lcom/transsion/magicvideo/R$color;->os_text_tertiary_color:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->t0:Landroid/view/View;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz v1, :cond_b

    const/high16 v1, 0x42300000    # 44.0f

    :goto_6
    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    goto :goto_7

    :cond_b
    const/high16 v1, 0x42a00000    # 80.0f

    goto :goto_6

    :goto_7
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->t0:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A0:I

    iput p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->B0:I

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lxxb;

    invoke-direct {v0, p0}, Lxxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->setForceNotApplyBackground(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    const/16 v2, 0x464

    invoke-virtual {v1, p0, v2}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    const/16 v2, 0x48c

    invoke-virtual {v1, p0, v2}, Lh27;->b(Lh27$b;I)V

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->X:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->q1()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, v0}, Lo18;->q(Landroid/app/Activity;I)V

    :cond_1
    const-string p1, "finished_video_guide"

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Z:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lpp3;->x(Landroid/content/Context;)Z

    move-result p1

    const v2, 0x1020002

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v3, "video_from"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->d0:Z

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "isPipMute"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iput-boolean v0, p1, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "backPlay"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->S:Z

    const-string v3, "VideoPlayer_Activity"

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/blankj/utilcode/util/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    instance-of v5, v4, Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    if-nez v5, :cond_6

    instance-of v5, v4, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    if-eqz v5, :cond_5

    if-eq v4, p0, :cond_5

    :cond_6
    const-string v5, "onCreate mIsBackPlay activity.finish"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "isSecureCamera"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->R:Z

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W1(Z)V

    sput v1, Laf9;->a:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_8
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "from notification close pip"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lk38;->e()V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->V:I

    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    sget p1, Lcom/transsion/magicvideo/R$layout;->activity_video_player:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$a;

    invoke-direct {v3, p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$a;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_a
    iget-boolean p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->R:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->D1()V

    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->setWindowBackground(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y2()V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {p0}, Le80;->t(Landroid/app/Activity;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "listFlag"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_d

    goto :goto_2

    :cond_d
    invoke-static {p0}, Lt08;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_2

    :cond_e
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->successWritePermissionOnce()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->H1()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->G1()V

    :cond_f
    invoke-static {p0}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A2()V

    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Loxb;

    invoke-direct {v0, p0}, Loxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->o2()V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    const-string v0, "onDestroy - cleaning up resources"

    const-string v1, "VideoPlayer_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->j0:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_1
    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v3, 0x464

    invoke-virtual {v0, p0, v3}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v3, 0x48c

    invoke-virtual {v0, p0, v3}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->t2(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->C2()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->O0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->r0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->P0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Q0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->K0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->L0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E0:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E0:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->F0()V

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->D0:Z

    if-eqz v0, :cond_4

    :try_start_0
    iput-boolean v3, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->D0:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->N0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error unregistering receiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    invoke-static {}, Lw;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljw4;->j(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    :cond_6
    invoke-static {p0}, Lo18;->h(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->onDestroy()V

    return-void
.end method

.method public onEjected(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEjected unMountPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->finish()V

    const-string p0, "onEjected finish"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n2()V

    :goto_0
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->z0:Z

    const-string v0, "VideoPlayer_Activity"

    const-string v1, "onEnterAnimationComplete, apply cached orientation if needed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->q2()V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->k0()V

    :cond_0
    return-void
.end method

.method public onMounted(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMounted mountPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayer_Activity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n2()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y2()V

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->forceShowSystemBar(ZZ)V

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mStatusPlayUiShow:Z

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->setNavVisibility(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lt08;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "com.transsion.magicshow.OPEN_VIDEO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->L1()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "onNewIntent from backgroundPlay, only show current playing video"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w1(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->f0(ZLandroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->c0:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->e0()V

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->i0:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "is_pip_ges_showed"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lpp3;->c:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/magicvideo/R$string;->ges_pip_notice_pre:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/magicvideo/R$string;->ges_pip_notice:I

    :goto_0
    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->q(I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->r2(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->z1(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/privacy/MarkPointUtil;->j(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoPlayer_Activity"

    const-string v1, "onResume: hide because has been grant"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/privacy/MarkPointUtil;->v(Landroid/app/FragmentManager;)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->h0:Z

    if-eqz v0, :cond_1

    const-string v0, "vd_play_listen_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->h0:Z

    iget-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->j0:Z

    if-nez v1, :cond_3

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->j0:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lnxb;

    invoke-direct {v1, p0}, Lnxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/transsion/utils/ToastUtils;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->i0:Z

    invoke-static {}, Llz5;->g()V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->G0:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_4
    return-void
.end method

.method public onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    return-void
.end method

.method public onSdSwap()V
    .locals 2

    const-string v0, "VideoPlayer_Activity"

    const-string v1, "onSdSwap "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->n2()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->a0:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->c0:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/activities/HeadsetsControllerActivity;->onStop()V

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->c0:Z

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mLastSystemUiVis:I

    xor-int/2addr v0, p1

    iput p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mLastSystemUiVis:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mStatusPlayUiShow:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->setStatusPlayUiShow()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->h0()V

    :cond_1
    return-void
.end method

.method public onUnMounted(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUnMounted unMountPoint:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayer_Activity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onUserLeaveHint()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserLeaveHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->a0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->a0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lpp3;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->d0:Z

    if-nez v0, :cond_1

    invoke-static {}, Lfec;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->i0:Z

    invoke-virtual {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->i0()V

    :cond_1
    return-void
.end method

.method public final p1(I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->J0:J

    iput p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->x0:I

    iput p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y0:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final p2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->p0:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->o0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    const-string v1, "VideoPlayer_Activity"

    if-nez v0, :cond_1

    const-string v0, "replaceContentFragment fragment was null after first frame, create"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "replaceContentFragment skip, fragment already added"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->r1()V

    return-void

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video_play_fragment_bean"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->r0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->r1()V

    return-void
.end method

.method public final q2()V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->z0:Z

    const-string v1, "VideoPlayer_Activity"

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->G0:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y0:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget v2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->x0:I

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->J1(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y0:I

    iput v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->x0:I

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->J0:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x320

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    iget v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y0:I

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->p1(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed to set requested orientation"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPendingOrientationIfNeed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->x0:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window animation not finished, defer orientation request:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y0:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final r1()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->q0:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lkxb;->a(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Z)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->q0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "VideoPlayer_Activity"

    const-string v1, "convertPlayerWindowOpaque failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public final r2(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetBrightness isPipMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/magicvideo/data/VideoOpStatus;->defScreenBrightness:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lrtb;->n(Landroid/content/Context;)F

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/magicvideo/player/VideoPlayManager;->H:Lcom/transsion/magicvideo/data/VideoOpStatus;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lrtb;->q(Landroid/content/Context;Lcom/transsion/magicvideo/data/VideoOpStatus;FZ)F

    :goto_0
    return-void
.end method

.method public requestFilePermission()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->R:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->T:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lt08;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->T:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->W:Z

    return-void

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->requestFilePermission()V

    return-void
.end method

.method public requestedChangeOrientation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestedChangeOrientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->requestedChangeOrientation(I)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final s1()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->G0:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->B2(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public s2()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mStatusPlayUiShow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Y:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    invoke-static {}, Lhoc;->a()I

    move-result v1

    invoke-static {v0, v1}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->setNavVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setNavVisibility(Z)V
    .locals 2

    sget-boolean v0, Lpp3;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/privacy/MarkPointUtil;->j(Landroid/app/FragmentManager;)Z

    move-result v0

    sget-boolean v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->R0:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string p0, "VideoPlayer_Activity"

    const-string p1, "setNavVisibility return because isGdprFragmentAdded"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->R0:Z

    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRequestedOrientation "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayer_Activity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStatusPlayUiShow()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->setStatusPlayUiShow()V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m0()V

    :cond_0
    return-void
.end method

.method public shouldApplyLegacySystemBarPadding()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public successWritePermissionOnce()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->X:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->fragment_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAutoRecover,not need initData again,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoPlayer_Activity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w1(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public t1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A2()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->G0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method public final t2()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->u0:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->v0:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->v0:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->z2(Landroid/view/View;Z)V

    :cond_1
    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->q0:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->r1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final u1()V
    .locals 2

    const-string v0, "VideoPlayer_Activity"

    const-string v1, "exitVideoSwipeFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v0, :cond_0

    const-string v0, "vd_play_listen_back"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->e0:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lk38;->f(Landroid/app/Activity;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->d0:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lbd4;->b(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-static {v0}, Lfsb;->a(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w2(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->a0:Z

    return-void
.end method

.method public u2(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lk38;->q(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final v1()I
    .locals 5

    invoke-static {}, Le80;->e()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Y:Landroid/view/WindowInsets;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    invoke-static {}, Lgoc;->a()I

    move-result v2

    invoke-static {v1, v2}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {}, Ljoc;->a()I

    move-result v3

    invoke-static {v1, v3}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {}, Lkoc;->a()I

    move-result v4

    invoke-static {v1, v4}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget v3, v3, Landroid/graphics/Insets;->top:I

    iget v1, v1, Landroid/graphics/Insets;->top:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {p0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final v2()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->u0:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->v0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->z2(Landroid/view/View;Z)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, v1}, Lkxb;->a(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Z)Z

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->v0:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->q0:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public w1(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIntent intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "VideoPlayer_Activity"

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A1(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->restore(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIntent videoData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    iput v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->g0:I

    iget-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->f0:Z

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->x1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->y1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public w2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->m0:Z

    return-void
.end method

.method public x1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->t(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setPlayPosition(J)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    return-void
.end method

.method public x2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Z:Z

    return-void
.end method

.method public y1(Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->E2(Z)V

    invoke-static {}, Lff6;->f()V

    invoke-static {}, Lff6;->h()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.youtube.com/watch?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lff6;->i(ILjava/lang/String;)Lxm9;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxm9;->c(Lpn9;)Lxm9;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxm9;->m(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object v0

    new-instance v1, Lvxb;

    invoke-direct {v1, p0, p2, p1}, Lvxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    new-instance v2, Lwxb;

    invoke-direct {v2, p0, p1, p2}, Lwxb;-><init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lxm9;->p(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final y2()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/magicvideo/R$color;->black:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_0
    sget v0, Lcom/transsion/magicvideo/R$color;->transparent:I

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    sget v0, Lcom/transsion/magicvideo/R$color;->black:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public final z1(ZLandroid/content/res/Configuration;)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->K0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->L0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->w0:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->G0:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->H0:I

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->I0:I

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object p2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->L0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->L0:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->G0:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    :goto_0
    iget p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->H0:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    iget p1, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v1, :cond_5

    iget p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->I0:I

    if-eqz p1, :cond_4

    const/16 p2, 0x8

    if-eq p1, p2, :cond_4

    move p1, v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->p1(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->B2(Landroid/content/res/Configuration;)V

    :goto_1
    iput v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->H0:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->I0:I

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->F0:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->K0:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final z2(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->z2(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
