.class public Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# static fields
.field public static d0:J

.field public static e0:J


# instance fields
.field public A:Z

.field public B:J

.field public C:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

.field public D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

.field public E:Ljava/lang/String;

.field public F:J

.field public G:J

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Z

.field public volatile L:Z

.field public volatile M:J

.field public N:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field public O:Ljava/util/List;

.field public P:Z

.field public Q:Z

.field public R:I

.field public volatile S:Z

.field public T:Z

.field public U:Z

.field public V:I

.field public W:I

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:Ljava/lang/Runnable;

.field public b0:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

.field public c0:Z

.field public final l:Z

.field public m:Z

.field public n:Z

.field public o:Landroid/view/View;

.field public p:Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;

.field public q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

.field public r:Landroid/view/View;

.field public s:Lfd8;

.field public t:Lfd8;

.field public u:J

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public z:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->u:J

    .line 4
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->K:Z

    .line 5
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->L:Z

    .line 6
    iput-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    .line 7
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Q:Z

    .line 8
    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->R:I

    .line 9
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->S:Z

    .line 10
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->T:Z

    .line 11
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->U:Z

    .line 12
    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->V:I

    .line 13
    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->W:I

    .line 14
    new-instance v1, Lai9;

    invoke-direct {v1}, Lai9;-><init>()V

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->a0:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->b0:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

    .line 16
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->c0:Z

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->l:Z

    .line 18
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q0()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m:Z

    const-wide/16 v1, 0x0

    .line 21
    iput-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->u:J

    .line 22
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->K:Z

    .line 23
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->L:Z

    .line 24
    iput-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    .line 25
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Q:Z

    .line 26
    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->R:I

    .line 27
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->S:Z

    .line 28
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->T:Z

    .line 29
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->U:Z

    .line 30
    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->V:I

    .line 31
    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->W:I

    .line 32
    new-instance v1, Lai9;

    invoke-direct {v1}, Lai9;-><init>()V

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->a0:Ljava/lang/Runnable;

    .line 33
    new-instance v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->b0:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

    .line 34
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->c0:Z

    .line 35
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->l:Z

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortPlayerDetailFragment init with isPreview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortPlayerDetailFragment"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q0()V

    return-void
.end method

.method private static synthetic E0()V
    .locals 2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressChange:Z

    return-void
.end method

.method public static synthetic P(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;ZLjava/util/List;ILub9;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->x0(ZLjava/util/List;ILub9;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G0(Z)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->A0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->H0(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic T(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Ljava/util/List;ILub9;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->z0(Ljava/util/List;ILub9;)V

    return-void
.end method

.method private V0()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->U:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "playdetail"

    invoke-static {v1, v0, p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->T0(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->C0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->B0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->w0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->v0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F0(I)V

    return-void
.end method

.method public static synthetic b0()V
    .locals 0

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E0()V

    return-void
.end method

.method public static bridge synthetic c0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    return-object p0
.end method

.method public static bridge synthetic d0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->T:Z

    return p0
.end method

.method public static bridge synthetic e0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    return-wide v0
.end method

.method public static bridge synthetic f0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->c0:Z

    return-void
.end method

.method public static bridge synthetic g0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->T:Z

    return-void
.end method

.method public static bridge synthetic h0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->I0(Ljava/lang/String;II)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->control_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->o:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->preview_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->p:Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->detail_player:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    new-instance v0, Lph9;

    invoke-direct {v0, p0}, Lph9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->setProgressChangeListener(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$OnProgressChangeListener;)V

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->l:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getBottomTitleLeftTag()Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_short_bottom_video:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lfd8;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lfd8;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->s:Lfd8;

    new-instance p1, Lfd8;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lfd8;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->t:Lfd8;

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p1

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->V0(JLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic j0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->V0()V

    return-void
.end method

.method private l0()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;
    .locals 2

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLoginState(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withUserOpenID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v1

    invoke-virtual {v1}, Lgec;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withUserToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v1

    invoke-virtual {v1}, Lgec;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->whitTokenType(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withPalmToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withClientIP(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withGAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withCountryCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/ga/AthenaAnalytics;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withVAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0"

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lkfc;->m(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->whitVIP(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLanguageCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withPlayerActivity(Landroid/app/Activity;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->build()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLoginState(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withClientIP(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withGAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withCountryCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/ga/AthenaAnalytics;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withVAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLanguageCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withPlayerActivity(Landroid/app/Activity;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->build()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private q0()V
    .locals 0

    return-void
.end method

.method private r0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lwh9;

    invoke-direct {v1, p0}, Lwh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getLlBottomTitleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lxh9;

    invoke-direct {v1, p0}, Lxh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getLanguageImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lyh9;

    invoke-direct {v1, p0}, Lyh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getClarityImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lzh9;

    invoke-direct {v1, p0}, Lzh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->b1()V

    return-void
.end method

.method private t0()V
    .locals 8

    const-string v0, "initVishaPlayer"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    if-nez v0, :cond_0

    const-string p0, "play error: player not found - mDetailPlayer is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "initPlayer: mDetailPlayer found, proceeding with initialization"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayStartTime:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->registerNetStatus(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "0"

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E:Ljava/lang/String;

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayerType(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    sget-object v2, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_SHORT_VIDEO:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayType(Lcom/transsion/vishaplayersdk/base/config/PlayType;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setRotateViewAuto(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setLockLand(Z)V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setIsTouchWiget(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setIsTouchWigetFull(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setRotateViewAuto(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setLockLand(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setNeedLockFull(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->J:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    invoke-virtual {v0, v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setSeekOnStart(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->o0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setUrl(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->C:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getVideoId()J

    move-result-wide v6

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    invoke-virtual {v0, v6, v7}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoID(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->C:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v4

    :cond_3
    invoke-virtual {v0, v4, v5}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setSerialID(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setCacheWithPlay(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->l0()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setPlayerInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setHardwareAccelerated(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->b0:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->build(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    new-instance v2, Luh9;

    invoke-direct {v2, p0}, Luh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setPipListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player:get video info start "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->n0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    const v1, 0x3ca3d70a    # 0.02f

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->isPortraitShortVideo()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setSubtitleSizeRatio(F)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-interface {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setSubtitleBottomRatio(F)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setSubtitleSizeRatio(F)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    const v0, 0x3eb33333    # 0.35f

    invoke-interface {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setSubtitleBottomRatio(F)V

    :goto_4
    return-void
.end method


# virtual methods
.method public final synthetic A0(Landroid/view/View;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getVideoDefinitions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    new-instance v4, Lub9;

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v3, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->bCurrent:Z

    invoke-direct {v4, v5, v6}, Lub9;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->isNeedVip()Z

    move-result v3

    invoke-virtual {v4, v3}, Lub9;->d(Z)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->t:Lfd8;

    new-instance v3, Lsh9;

    invoke-direct {v3, p0, v1}, Lsh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Ljava/util/List;)V

    invoke-virtual {v2, p1, v0, v3}, Lfd8;->i(Landroid/view/View;Ljava/util/List;Lfd8$a;)V

    :cond_1
    return-void
.end method

.method public final synthetic B0(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHistoryBeansByVid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->O:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->d1(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final synthetic C0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->enterPip()V

    return-void
.end method

.method public final synthetic D0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->n:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result p1

    int-to-long p1, p1

    iget-object p3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p3

    invoke-interface {p3}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "diffTime: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ShortPlayerDetailFragment"

    filled-new-array {p4, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    const-wide/16 p3, 0x3

    cmp-long p3, p1, p3

    if-gtz p3, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->b1(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->K0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic F0(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->R:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->U0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->P0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Q0()V

    :goto_0
    return-void
.end method

.method public final synthetic G0(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setFullScreenVisible(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    sget p1, Lcom/transsion/onlinevideo/R$id;->surface_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final synthetic H0(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result p2

    const/4 v1, 0x7

    if-eq p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p2

    iget p2, p2, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Y:I

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->isVipShow()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->isErrorShow()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->c0:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->c0:Z

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p0, p3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return p2

    :cond_2
    :goto_0
    return v0
.end method

.method public final I0(Ljava/lang/String;II)V
    .locals 9

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->v:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v4

    iget-wide v4, v4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayStartTime:J

    sub-long/2addr v2, v4

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    iget-wide v7, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    move-object v0, p1

    move-wide v1, v2

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Lwz5;->P(Ljava/lang/String;JIIJJ)V

    return-void
.end method

.method public final J0(Ljava/lang/String;II)V
    .locals 9

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->v:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v4

    iget-wide v4, v4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mInitStartTime:J

    sub-long/2addr v2, v4

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    iget-wide v7, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    move-object v0, p1

    move-wide v1, v2

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Lwz5;->P(Ljava/lang/String;JIIJJ)V

    return-void
.end method

.method public K0()V
    .locals 10

    sget-wide v0, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->C:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_0
    const-string p0, ""

    goto :goto_0

    :goto_1
    sget-wide v8, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    invoke-static/range {v4 .. v9}, Le06;->c(Ljava/lang/String;JLjava/lang/String;J)V

    sput-wide v2, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    :cond_1
    return-void
.end method

.method public L0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Y0()V

    const-string v0, "exit"

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lwz5;->T(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->S:Z

    return-void
.end method

.method public M0()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    invoke-static {v0, v1, v2, v3, v4}, Lxz5;->f(IJJ)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->gotoBackground()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onActivityStop()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Y0()V

    return-void
.end method

.method public N0()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->X:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Y:Z

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->U:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E:Ljava/lang/String;

    const-string v3, "0"

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lkfc;->m(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getPlayerType()Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    move-result-object v2

    sget-object v4, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->MGTV_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    if-ne v2, v4, :cond_5

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isSwitchResolutionNeedVip()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;

    invoke-direct {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;-><init>()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->setOpenId(Ljava/lang/String;)V

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v3

    invoke-virtual {v3}, Lgec;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->setToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->setLogin(Z)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->setPalmToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setUserAccountInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mango vip login must replay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->replay()V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v4

    invoke-virtual {v4}, Lgec;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v5

    invoke-virtual {v5}, Lgec;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E:Ljava/lang/String;

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v8

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lkfc;->m(I)Z

    move-result v8

    move v3, v1

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUserInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->startPlay()V

    goto/16 :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Z:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->t0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->autoPlay()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayPosition(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    invoke-virtual {v2, v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->seekTo(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume autoPlay\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->backToFront()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getIsPausedByUser()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isSwitchResolutionNeedVip()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    const/16 v2, 0x403

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isInPlayingState()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onActivityStart(Z)V

    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->U:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->flushPip(Z)V

    :cond_6
    return-void
.end method

.method public O0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->H0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->K:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->netWorkErrorLogic()V

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->K:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->R:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->autoPlay()V

    :goto_0
    return-void
.end method

.method public P0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onMobileNetworkChanged: wifi is connected"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ShortPlayerDetailFragment"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoPause()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->d1()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->K:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->netWorkErrorLogic()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->K:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->R:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public Q0()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onNetworkDisconnected,but network is isAvailable,no need to deal"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ShortPlayerDetailFragment"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->K:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->R:I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->K:Z

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->d1()V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lwz5;->A()V

    :cond_2
    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    const-wide/32 v5, 0x895442

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    iget-object v7, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->v:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lwz5;->M(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "network"

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lwz5;->T(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public R0(I)V
    .locals 1

    new-instance v0, Lth9;

    invoke-direct {v0, p0, p1}, Lth9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public S0(Z)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureInPictureModeChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->L:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-boolean p1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->L:Z

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->i1(Z)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mStartBuffering:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mTearing:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showBuffering(ZZ)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lo18;->q(Landroid/app/Activity;I)V

    invoke-static {}, Lh06;->b()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo18;->f()V

    invoke-static {}, Lh06;->f()V

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Q:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->e0:J

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    invoke-static {v2, v3, v4, v5, v6}, Lxz5;->f(IJJ)V

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->e0:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->d0:J

    invoke-static {}, Lxz5;->b()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getStartButton()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->noticePlayViewMode(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setIsPipMode(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Y0()V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v2

    new-instance v3, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;

    invoke-direct {v3, p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    invoke-virtual {v2, v3}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->X0(Lo18$b;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->L0()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->markDuration()V

    :try_start_0
    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    if-ne v4, v0, :cond_6

    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_8
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->restoreNormal()V

    :goto_3
    new-instance v2, Lbi9;

    invoke-direct {v2, p0, p1}, Lbi9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Z)V

    const-wide/16 v3, 0x64

    invoke-static {v2, v3, v4}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    if-eqz p1, :cond_9

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->X:Z

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "is_pip_ges_showed"

    invoke-virtual {p0, p1, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_9

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p0, v1, :cond_9

    sget p0, Lcom/transsion/onlinevideo/R$string;->ges_pip_notice:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->q(I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_9
    return-void
.end method

.method public T0()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lfec;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Z:Z

    if-nez v0, :cond_4

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v3}, Lc07;->a(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v1, v2

    :cond_2
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v3}, Lo18;->d(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->enterPip()V

    const-string v0, "onlinevide"

    invoke-static {v0}, Lh06;->e(Ljava/lang/String;)V

    const-string v0, "gesture_pip"

    invoke-static {v0}, Lwz5;->N(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->X:Z

    :cond_4
    return-void
.end method

.method public U0()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    iget v0, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v0, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->O0()V

    :cond_0
    return-void
.end method

.method public W0(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-wide p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->hadPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayPosition(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->seekTo(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->T:Z

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refreshPosition: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public X0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getLlBottomTitleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->l:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->p:Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getLanguageImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getClarityImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getSeekBar()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final Y0()V
    .locals 29

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->l:Z

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoSerial()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoSerial()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    new-instance v14, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getVideoId()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSourceId()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v11}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentPosition()J

    move-result-wide v15

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v17

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getCoverX()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object v20

    move-wide/from16 v21, v12

    if-nez v2, :cond_3

    const-wide/16 v23, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    move-wide/from16 v23, v2

    :goto_1
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getPayType()I

    move-result v2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v1

    iget-object v3, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->I:Ljava/lang/String;

    move/from16 v25, v1

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E:Ljava/lang/String;

    iget-object v12, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-virtual {v12}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v12

    if-eqz v12, :cond_4

    iget-object v12, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-virtual {v12}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getPlayLet()I

    move-result v12

    :goto_2
    move-object/from16 v28, v3

    move/from16 v27, v12

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    :goto_3
    move-object v3, v14

    move-wide/from16 v12, v21

    move-object v0, v14

    move-wide v14, v15

    move-wide/from16 v16, v17

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-wide/from16 v20, v23

    move/from16 v22, v2

    move/from16 v23, v25

    move-object/from16 v24, v28

    move-object/from16 v25, v1

    move/from16 v26, v27

    invoke-direct/range {v3 .. v26}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>(JJJLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;I)V

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->N:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoIsTact()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->P:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->N:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v5, v1, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a0(Landroid/content/Context;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v2, v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->N:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v5, v1, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->H(Landroid/content/Context;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    goto :goto_5

    :cond_7
    move-object/from16 v1, p0

    :cond_8
    :goto_5
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-wide v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->K0()V

    :cond_9
    :goto_6
    return-void
.end method

.method public final Z0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->n:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->K0()V

    return-void
.end method

.method public a1(Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->z:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    return-void
.end method

.method public final b1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->o:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;

    invoke-direct {v2, p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->o:Landroid/view/View;

    new-instance v2, Lqh9;

    invoke-direct {v2, p0, v0}, Lqh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final c1(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->A:Z

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCover()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->P:Z

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result v0

    if-le v0, v2, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->x:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result v0

    if-le v0, v2, :cond_3

    move v2, v1

    :cond_3
    iput v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->y:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSourceType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoSerial()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->B:J

    :cond_5
    iget p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->W:I

    const-wide/16 v2, 0x0

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->k0:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->O:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "synCurrentVideo: mHistroyBeans.lastPos = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->O:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-wide v2, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ShortPlayerDetailFragment"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->O:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-virtual {p1, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->d1(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    goto :goto_4

    :cond_6
    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_7

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->B:J

    :cond_7
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoSerial()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->B:J

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->C:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    goto :goto_4

    :cond_8
    iput v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->W:I

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_9

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->B:J

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->C:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->J:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->C:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSourceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->H:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->C:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->I:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->C:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    :cond_a
    return-void
.end method

.method public final d1()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->T:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->isNetworkBlockErrorShow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->T:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 8

    const/16 v0, 0x3f6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3fa

    const/4 v3, -0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x40a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x40d

    if-eq p1, v0, :cond_5

    const/16 v0, 0x41b

    if-eq p1, v0, :cond_3

    const/16 p2, 0x44b

    if-eq p1, p2, :cond_8

    const p2, 0x900002

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3fd

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3fe

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iput v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->V:I

    const-string p1, "vd_sdk_adendduration"

    invoke-virtual {p0, p1, v1, v3}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->I0(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setBottomVisible(Z)V

    iput v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->V:I

    const-string p1, "vd_sdk_adstartduration"

    invoke-virtual {p0, p1, v1, v3}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->I0(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->K0()V

    goto/16 :goto_0

    :cond_3
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->u:J

    :cond_4
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_c

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->u:J

    sub-long v4, p1, v4

    invoke-static/range {v0 .. v5}, Lwz5;->e(JJJ)V

    goto/16 :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->L:Z

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_6
    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    aget-object p1, p2, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v7, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->v:Ljava/lang/String;

    move-wide v0, v3

    move-wide v2, v5

    move-object v4, p1

    move-object v5, p2

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lwz5;->M(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "playerror"

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->v:Ljava/lang/String;

    invoke-static {p1, p0}, Lwz5;->T(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "vd_sdk_playercore"

    invoke-virtual {p0, p2, p1, v3}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->J0(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v2, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->a0:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x434

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAdBack()V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setFullScreenVisible(Z)V

    :cond_9
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setBottomVisible(Z)V

    :cond_a
    const-string p1, "vd_sdk_videostartplaying"

    iget p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->V:I

    invoke-virtual {p0, p1, v1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->I0(Ljava/lang/String;II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-wide p1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-wide p1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayTime:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-wide p1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemTime:J

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->flushPip(Z)V

    :cond_b
    iput v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->V:I

    :cond_c
    :goto_0
    return-void
.end method

.method public e1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUI: videoInfoBean is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v2, "not null"

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ShortPlayerDetailFragment"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSourceType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getPlayPosition()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->g1(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->c1(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V

    :cond_1
    return-void
.end method

.method public f1(Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateData called with data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    const-string p0, "updateData: videoDetailBean is null, returning"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m:Z

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->e1()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->s0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lvh9;

    invoke-direct {v0, p0}, Lvh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final g1(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSourceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->w:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->J:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->p:Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->p:Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->setContent(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->l:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    sget v3, Lcom/transsion/onlinevideo/R$string;->visha_watch_full_episode_by_click:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->J:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    sget v2, Lcom/transsion/onlinevideo/R$string;->visha_episode:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->setBottomText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public h1()V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->T:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUI: videoInfoBean is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v4, "not null"

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ShortPlayerDetailFragment"

    invoke-static {v4, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->t0()V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->d1()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getPayType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->C:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getPayType()I

    move-result v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget-wide v5, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    iget-wide v7, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v3

    iget-object v9, v3, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->l0:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->C:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-nez v3, :cond_2

    :goto_2
    move v10, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getDuration()I

    move-result v2

    goto :goto_2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v2

    iget-wide v11, v2, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->m0:J

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v2

    iget v13, v2, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->n0:I

    iget-object v14, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->J:Ljava/lang/String;

    iget v15, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->x:I

    iget v2, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v3

    iget v3, v3, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->i0:I

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSourceType()Ljava/lang/String;

    move-result-object v18

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-static/range {v5 .. v19}, Lwz5;->X(JJLjava/lang/String;IJILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const-string v1, "updateUI: videoInfoBean is null"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->E0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->p0()V

    goto :goto_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->X0()V

    :goto_5
    return-void
.end method

.method public i1(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->p0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->X0()V

    :goto_0
    return-void
.end method

.method public k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    return-object p0
.end method

.method public final m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    check-cast p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    return-object p0
.end method

.method public final n0()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->H:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final o0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->H:Ljava/lang/String;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->onLayoutId()I

    move-result p3

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->r:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroyView()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroyView ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->S:Z

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->a0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Q:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->n:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->stopPlay()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->release()V

    :goto_0
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->layout_short_player_detail:I

    return p0
.end method

.method public onSelectInViewPage()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Z0(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectInViewPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sCurrentSerialId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->t0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->d0:Ljava/util/Set;

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->L:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->L:Z

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->L:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->E0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->X0()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->p0()V

    :goto_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->autoPlay()V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStart()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->z:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    if-eqz v0, :cond_0

    const-string v0, "onStart: mTempVideoDetail is not null"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->z:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->f1(Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->autoPlay()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->z:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    :cond_0
    return-void
.end method

.method public onUnSelectInViewPage()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnSelectInViewPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Z0(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->D:Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->setPlayPosition(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->stopPlay()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->p0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->u0()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->r0()V

    return-void
.end method

.method public p0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getLlBottomTitleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->l:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->p:Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getLanguageImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getClarityImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getSeekBar()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final s0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->N:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->N:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->x()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v2, Lrh9;

    invoke-direct {v2, p0}, Lrh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->U0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initHistory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    :cond_2
    if-nez v0, :cond_3

    const-string p0, "initHistory: skip getHistoryBeansByVideoId, no BaseActivity"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->N:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p0

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->y(Landroid/content/Context;JZ)V

    return-void
.end method

.method public final u0()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortPlayerDetailFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->l:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->p:Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getBottomTitleRightArrow()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getClarityImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getLanguageImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->getSeekBar()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final synthetic v0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->markDuration()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->S:Z

    const-string p1, "eixt"

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->v:Ljava/lang/String;

    invoke-static {p1, v0}, Lwz5;->T(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "btn_back"

    invoke-static {p1}, Lwz5;->N(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final synthetic w0(Landroid/view/View;)V
    .locals 5

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->l:Z

    const-string v0, "ShortPlayerDetailFragment"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Z:Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->release()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "router_data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLlBottomTitleLayout Click: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    instance-of v1, v1, Landroid/os/PersistableBundle;

    if-eqz v1, :cond_0

    const-string p0, "has not in preview"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->T:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v0

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->H:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v1

    sget-object v2, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->DETAIL:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setIsPreview(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v0

    sget-object v1, Ld06;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p1, "getLlBottomTitleLayout Click preview status: false"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->m0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->W0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->p0()V

    :goto_0
    return-void
.end method

.method public final synthetic x0(ZLjava/util/List;ILub9;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getLanguage()I

    move-result p1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->switchSubtitleSource(I)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p4

    iput p1, p4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCode:I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p4

    iput p1, p4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mSubtitleCodeByUser:I

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->appliedSubtitle(Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    const-string p2, "ott_subtitle_init"

    invoke-static {p0, p2, p1}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final synthetic y0(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getSubtitleList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;-><init>()V

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    sget v4, Lcom/transsion/vishaplayersdk/R$string;->tip_no_subtitle:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->setSelect(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    new-instance v5, Lub9;

    invoke-virtual {v4}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->isSelected()Z

    move-result v7

    invoke-direct {v5, v6, v7}, Lub9;-><init>(Ljava/lang/String;Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SelectionItem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->isSelected()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ShortPlayerDetailFragment"

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->s:Lfd8;

    new-instance v4, Lci9;

    invoke-direct {v4, p0, v2, v0}, Lci9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;ZLjava/util/List;)V

    invoke-virtual {v3, p1, v1, v4}, Lfd8;->i(Landroid/view/View;Ljava/util/List;Lfd8$a;)V

    return-void
.end method

.method public final synthetic z0(Ljava/util/List;ILub9;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-le p2, p3, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->t:Lfd8;

    invoke-virtual {p0}, Lfd8;->d()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->q:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->switchVideoResolution(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)V

    :cond_1
    return-void
.end method
