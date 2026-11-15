.class public abstract Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;
.super Landroid/widget/LinearLayout;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
.implements Lcom/mbridge/msdk/video/signal/communication/IRewardCommunication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$y;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$x;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$u;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$v;,
        Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$t;
    }
.end annotation


# static fields
.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_1_LANDING_PAGE:I = 0x1

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_2_NORMAL_FULLSCREEN:I = 0x2

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_3_NORMAL_FULLSCREEN_ENDCARD:I = 0x3

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_4_NORMAL_FULLSCREEN_LP:I = 0x4

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_6_SMALLVIDEO:I = 0x6

.field public static final TAG:Ljava/lang/String; = "BaseMBMediaView"

.field public static final WHAT_VIEW_FULL_SCREEN:I = 0x2

.field public static final WHAT_VIEW_SMALL_SCREEN:I = 0x1

.field private static n0:I = 0x2

.field private static o0:I = 0x1


# instance fields
.field private A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

.field private B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

.field private C:Landroid/widget/ProgressBar;

.field private D:Landroid/view/View;

.field private E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

.field private F:Landroid/widget/RelativeLayout;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/ProgressBar;

.field private J:Landroid/widget/RelativeLayout;

.field private K:I

.field private L:Landroid/os/Handler;

.field private M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private N:I

.field private O:I

.field private P:D

.field private Q:D

.field private R:I

.field private S:I

.field private T:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;

.field private U:Landroid/hardware/SensorManager;

.field private V:Landroid/hardware/Sensor;

.field private W:Lcom/mbridge/msdk/videocommon/download/a;

.field private a:Z

.field private a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

.field private b:Z

.field private b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

.field private c:Z

.field private c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

.field private d:Z

.field private d0:I

.field private e:Z

.field private e0:Z

.field private f:Z

.field private f0:Z

.field private g:Z

.field private g0:Landroid/widget/RelativeLayout;

.field private h:Z

.field private h0:Landroid/widget/ImageView;

.field private volatile i:Z

.field private i0:I

.field private volatile j:Z

.field private j0:Z

.field private k:Z

.field private k0:Landroid/content/Context;

.field private l:Z

.field private l0:Z

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m0:Ljava/lang/Runnable;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field private r:Lcom/iab/omid/library/mmadbridge/adsession/a;

.field private s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private t:I

.field protected u:Z

.field private v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c:Z

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d:Z

    .line 6
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e:Z

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    .line 8
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g:Z

    .line 9
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    .line 10
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    .line 11
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    .line 12
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k:Z

    .line 13
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l:Z

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n:Ljava/util/ArrayList;

    .line 16
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o:Z

    .line 17
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 19
    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 20
    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 21
    iput v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->t:I

    .line 22
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->u:Z

    .line 23
    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    .line 24
    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 25
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e0:Z

    .line 26
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    .line 27
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j0:Z

    .line 28
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l0:Z

    .line 29
    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$h;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$h;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m0:Ljava/lang/Runnable;

    .line 30
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 32
    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a:Z

    .line 33
    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b:Z

    .line 34
    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c:Z

    .line 35
    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d:Z

    .line 36
    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e:Z

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    .line 38
    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g:Z

    .line 39
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    .line 40
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    .line 41
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    .line 42
    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k:Z

    .line 43
    iput-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l:Z

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m:Ljava/util/ArrayList;

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n:Ljava/util/ArrayList;

    .line 46
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o:Z

    .line 47
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p:Z

    const/4 p2, 0x0

    .line 48
    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 49
    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 50
    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 51
    iput v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->t:I

    .line 52
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->u:Z

    .line 53
    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    .line 54
    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 55
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e0:Z

    .line 56
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    .line 57
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j0:Z

    .line 58
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l0:Z

    .line 59
    new-instance p2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$h;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$h;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m0:Ljava/lang/Runnable;

    .line 60
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Landroid/content/Context;)V

    return-void
.end method

.method private A()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic A(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->u()V

    return-void
.end method

.method private B()V
    .locals 4

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->U:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->V:Landroid/hardware/Sensor;

    .line 4
    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$j;)V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->T:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->U:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->V:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic B(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o()V

    return-void
.end method

.method private C()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic C(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->x()V

    return-void
.end method

.method static synthetic D(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    return-object p0
.end method

.method private D()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReportClick(Z)V

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->d()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->d()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbnative/report/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/mbnative/listener/a;)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    .line 6
    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->l:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->l:Z

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v1, "is_video=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    const-string v0, "&is_video=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "?is_video=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    sget v7, Lcom/mbridge/msdk/click/retry/a;->m:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V

    :cond_2
    return-void
.end method

.method static synthetic E(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P()V

    return-void
.end method

.method private F()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->e:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->c()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->e:Z

    .line 5
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f()V

    :cond_0
    return-void
.end method

.method static synthetic F(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R()V

    return-void
.end method

.method private G()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->m()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->f:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->m()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic G(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->U()V

    return-void
.end method

.method private H()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->g:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->n()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->g:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->n()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic H(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G()V

    return-void
.end method

.method private I()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->d:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->i()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->d:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->i()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic I(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L()V

    return-void
.end method

.method private J()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->p()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->i:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->p()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic J(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->K()V

    return-void
.end method

.method private K()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->j:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->s()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->j:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->s()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic K(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->H()V

    return-void
.end method

.method private L()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->t()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->k:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->t()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic L(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->J()V

    return-void
.end method

.method static synthetic M(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i0:I

    return p0
.end method

.method private M()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e:Z

    .line 3
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    .line 6
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    .line 7
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p:Z

    return-void
.end method

.method private N()V
    .locals 3

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Z)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 3
    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->changeNoticeURL()V

    .line 4
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {v1, v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->d(Landroid/view/View;)V

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-static {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/a;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 8
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->g()V

    .line 9
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 11
    :try_start_2
    const-string v2, "omsdk"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->V()V

    .line 13
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i()V

    goto :goto_1

    .line 14
    :cond_1
    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->U()V

    goto :goto_1

    .line 16
    :cond_2
    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->c:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v1, v2, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j()V

    .line 18
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R()V

    .line 19
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 20
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMBMediaView"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method static synthetic N(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A()V

    return-void
.end method

.method private O()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 3
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    iget v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d0:I

    const/high16 v2, 0x41000000    # 8.0f

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 9
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 10
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->updateViewManger(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 15
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method static synthetic O(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0()V

    return-void
.end method

.method static synthetic P(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    return-object p0
.end method

.method private P()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 8
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->updateViewManger(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 13
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private Q()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$r;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$r;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$a;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$b;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$b;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->H:Landroid/widget/TextView;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$c;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$c;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic Q(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d:Z

    return p0
.end method

.method static synthetic R(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    return-object p0
.end method

.method private R()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->X()V

    return-void
.end method

.method private S()V
    .locals 7

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->s()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    move v0, v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpReportType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x3

    .line 8
    iput v2, v0, Landroid/os/Message;->what:I

    .line 9
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    if-nez v1, :cond_3

    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_3
    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    :goto_2
    const-wide/16 v5, 0x12c

    add-long/2addr v3, v5

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v0, v1, :cond_7

    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_5

    .line 13
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b()V

    goto :goto_4

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getCampaign()Lcom/mbridge/msdk/out/Campaign;

    move-result-object v0

    if-eq v1, v0, :cond_7

    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->release()V

    .line 16
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b()V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 19
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 20
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method static synthetic S(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l()V

    return-void
.end method

.method private T()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "BaseMBMediaView"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private U()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Z()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private V()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/widget/ImageView;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "BaseMBMediaView"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private W()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->I:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BaseMBMediaView"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method private X()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "BaseMBMediaView"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private Y()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->C:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BaseMBMediaView"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method private Z()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "BaseMBMediaView"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R:I

    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    return-object p1
.end method

.method private a(Z)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
    .locals 2

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 24
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    sget-object p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->c:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    move-object v1, p1

    .line 27
    :cond_1
    new-instance p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$y;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$y;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    .line 28
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 29
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j()V

    goto :goto_2

    .line 30
    :cond_2
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v0, :cond_5

    .line 31
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    sget-object p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    :goto_1
    move-object v1, p1

    goto :goto_2

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getReadyRate()I

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-static {v1, v0}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    goto :goto_2

    .line 37
    :cond_4
    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-eqz p1, :cond_6

    .line 38
    iget-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a:Z

    if-eqz p1, :cond_6

    .line 39
    new-instance p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$x;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$x;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    .line 40
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/videocommon/listener/a;)V

    goto :goto_2

    .line 41
    :cond_5
    sget-object p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    :goto_2
    return-object v1

    .line 42
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object p1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .line 167
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 168
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    const-string p1, "BaseMBMediaView"

    const-string v0, "code to string is error"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 173
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->parseCamplistToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    .line 175
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 176
    const-string v1, "campaignList"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string p1, "unit_id"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string p1, "sdk_info"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(II)V
    .locals 12

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 148
    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->h:Z

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 149
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/j;->o()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x64

    .line 150
    div-int/2addr p1, p2

    if-eqz v1, :cond_3

    const/4 p2, 0x0

    .line 151
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 152
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 153
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 154
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 155
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 158
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-gt v5, p1, :cond_0

    .line 159
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 160
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 163
    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    add-int/2addr p2, v2

    goto :goto_0

    .line 164
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    .line 165
    iput-boolean v2, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 166
    :catchall_0
    const-string p1, "BaseMBMediaView"

    const-string p2, "reportPlayPercentageData error"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h()V

    return-void
.end method

.method private a(Landroid/view/View;FF)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_9

    iget-wide v4, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q:D

    cmpg-double v6, v4, v2

    if-gtz v6, :cond_1

    goto/16 :goto_4

    :cond_1
    div-double/2addr v0, v4

    const/4 v4, 0x0

    cmpl-float v5, p2, v4

    if-lez v5, :cond_2

    cmpl-float v4, p3, v4

    if-lez v4, :cond_2

    div-float v2, p2, p3

    float-to-double v2, v2

    .line 118
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/Double;)D

    move-result-wide v4

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/Double;)D

    move-result-wide v2

    .line 120
    iget-object v6, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_3
    const/4 v8, 0x0

    :goto_0
    cmpl-double v9, v4, v2

    const/16 v10, 0xd

    const/4 v11, -0x1

    if-lez v9, :cond_5

    float-to-double p2, p2

    .line 123
    iget-wide v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q:D

    mul-double/2addr p2, v0

    iget-wide v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P:D

    div-double/2addr p2, v0

    .line 124
    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    double-to-int v11, p2

    .line 125
    :goto_1
    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 126
    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    iget v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    double-to-int p2, p2

    .line 128
    iput p2, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 129
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    :cond_5
    cmpg-double p2, v4, v2

    if-gez p2, :cond_7

    float-to-double p2, p3

    mul-double/2addr p2, v0

    if-eqz v8, :cond_6

    move v0, v11

    goto :goto_2

    :cond_6
    double-to-int v0, p2

    .line 130
    :goto_2
    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 131
    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 132
    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    double-to-int p2, p2

    .line 133
    iput p2, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 134
    iget p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    iput p2, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 135
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 136
    :cond_7
    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 137
    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 138
    iget p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput p2, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 139
    iget p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    iput p2, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 140
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    :goto_3
    iget-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    if-nez p2, :cond_8

    .line 142
    iget-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    :cond_8
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 144
    :cond_9
    :goto_4
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->setPlayViewParamsDefault(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 145
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 110
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Landroid/util/DisplayMetrics;)Landroid/widget/ImageView;

    .line 113
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz p1, :cond_0

    .line 116
    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 13
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpReportType()I

    move-result v1

    .line 45
    :goto_0
    invoke-static {p1, v1}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Landroid/view/View;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Landroid/view/View;)Z
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e0:Z

    return p1
.end method

.method private a0()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "BaseMBMediaView"

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S:I

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k0:Landroid/content/Context;

    return-object p0
.end method

.method private b()V
    .locals 10

    const-string v0, "BaseMBMediaView"

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v1, :cond_0

    .line 22
    const-string v1, "campaign is null addPlayerView return"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 24
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 25
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Z()V

    .line 27
    new-instance v1, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 28
    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 29
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 30
    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    if-eqz v1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    goto :goto_1

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    .line 33
    :goto_1
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setAllowLoopPlay(Z)V

    .line 34
    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getPlayUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y()Z

    move-result v6

    iget-object v8, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v9

    move-object v7, p0

    invoke-virtual/range {v3 .. v9}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->initPlayerViewData(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;)Z

    .line 35
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    new-instance v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$u;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$u;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setOnMediaViewPlayerViewListener(Lcom/mbridge/msdk/nativex/listener/a;)V

    .line 36
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 37
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->T()V

    .line 38
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v1, :cond_5

    .line 39
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v2, :cond_3

    .line 40
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->registerView(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-static {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/a;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 42
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-static {v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->g(Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 43
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->g()V

    .line 44
    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/mmadbridge/adsession/media/Position;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->b(ZLcom/iab/omid/library/mmadbridge/adsession/media/Position;)Lcom/iab/omid/library/mmadbridge/adsession/media/b;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    invoke-virtual {v2, v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->d(Lcom/iab/omid/library/mmadbridge/adsession/media/b;)V

    .line 46
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_4

    .line 47
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    if-eqz v1, :cond_5

    .line 49
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 50
    :try_start_2
    const-string v2, "omsdk"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 51
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private b(I)V
    .locals 11

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    iget-boolean v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->b:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->a:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 55
    iget-object v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->a:Ljava/util/Map;

    .line 56
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 57
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 60
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 61
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 64
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 66
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->t()V

    .line 6
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w()V

    .line 7
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k0:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 13
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private b(Z)V
    .locals 9

    const-string p1, "BaseMBMediaView"

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    .line 70
    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    new-instance v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$e;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$e;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setBackListener(Lcom/mbridge/msdk/nativex/listener/b;)V

    .line 72
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    new-instance v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$f;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$f;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mbridge/msdk/mbsignalcommon/windvane/c;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 73
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    .line 76
    const-string v0, ".zip"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "md5filename"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    iput-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    .line 80
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;->getHtmlContentFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v5}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    const-string v0, "load html..."

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    .line 85
    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 86
    iput-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    .line 87
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_3

    .line 88
    new-instance v1, Lcom/mbridge/msdk/foundation/same/webview/a;

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/foundation/same/webview/a;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 89
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/webview/a;->a(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 91
    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$v;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$j;)V

    .line 92
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setFilter(Lcom/mbridge/msdk/mbsignalcommon/base/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 93
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    return p1
.end method

.method private b0()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->U:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->T:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$w;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BaseMBMediaView"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onEnterFullscreen()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onEnterFullscreen()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_2

    .line 9
    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;->FULLSCREEN:Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->k(Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 15
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMBMediaView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/n;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/n;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result v4

    .line 19
    new-instance v1, Lcom/mbridge/msdk/foundation/entity/m;

    const-string v3, "2000021"

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 20
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result v4

    .line 23
    new-instance v1, Lcom/mbridge/msdk/foundation/entity/m;

    const-string v3, "2000021"

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 24
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 25
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->v(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/entity/m;->u(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/db/n;->a(Lcom/mbridge/msdk/foundation/entity/m;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 32
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 1

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p:Z

    return p1
.end method

.method private c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/videocommon/listener/a;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/videocommon/view/MyImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onExitFullscreen()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onExitFullscreen()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v0, :cond_2

    .line 10
    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;->NORMAL:Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->k(Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 11
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    return p1
.end method

.method static synthetic e(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onVideoAdClicked(Lcom/mbridge/msdk/out/Campaign;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onVideoAdClicked(Lcom/mbridge/msdk/out/Campaign;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private f()V
    .locals 12

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->c()[Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    if-eqz v1, :cond_0

    .line 5
    sget v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n0:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 6
    :cond_0
    sget v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o0:I

    .line 7
    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&orienation="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Y()V

    return-void
.end method

.method private g()V
    .locals 12

    const-string v0, "mbridge_full_player_parent"

    const-string v1, "mbridge_full_rl_playcontainer"

    const-string v2, "id"

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x67

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    if-nez v6, :cond_0

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_b

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 9
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    if-nez v7, :cond_1

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 13
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-nez v1, :cond_2

    if-eqz v7, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "mbridge_full_pb_loading"

    invoke-static {v8, v9, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "mbridge_full_rl_install"

    invoke-static {v9, v10, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "mbridge_full_ll_pro_dur"

    invoke-static {v10, v11, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_3
    move-object v10, v9

    :goto_1
    if-eqz v6, :cond_4

    .line 19
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_8

    if-eqz v6, :cond_6

    .line 23
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 25
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v2, v9}, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setBackListener(Lcom/mbridge/msdk/nativex/listener/b;)V

    .line 27
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v2, v9}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 28
    iput-object v9, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    .line 29
    iput-object v9, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    :cond_8
    if-eqz v6, :cond_9

    .line 30
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    if-eqz v8, :cond_a

    .line 31
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 32
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    :goto_4
    if-eqz v6, :cond_b

    .line 33
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5

    :cond_b
    if-eqz v0, :cond_c

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_c
    :goto_5
    if-eqz v1, :cond_d

    .line 36
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    if-eqz v7, :cond_e

    .line 37
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_6

    :cond_e
    if-eqz v1, :cond_f

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    :goto_6
    if-eqz v6, :cond_10

    .line 40
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7

    :cond_10
    if-eqz v7, :cond_11

    .line 41
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 42
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7

    .line 43
    :cond_11
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    if-eqz v0, :cond_12

    .line 44
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12
    :goto_7
    if-eqz v5, :cond_13

    .line 45
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_8

    :cond_13
    if-eqz v6, :cond_14

    .line 46
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 47
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_8

    .line 48
    :cond_14
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 49
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_15
    :goto_8
    if-eqz v3, :cond_17

    if-eqz v5, :cond_16

    .line 51
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 52
    :cond_16
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 54
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    :goto_9
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    if-eqz v10, :cond_19

    .line 58
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v10, :cond_18

    .line 59
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    :cond_18
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->K:I

    invoke-virtual {v10, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 61
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    .line 63
    :cond_19
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d()V

    .line 64
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    .line 65
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_1b

    .line 66
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setExitFullScreen()V

    .line 67
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    if-eqz v0, :cond_1a

    .line 68
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    goto :goto_a

    .line 69
    :cond_1a
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    .line 70
    :goto_a
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->gonePauseView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    .line 71
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_c
    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W()V

    return-void
.end method

.method private getAllScreenHeight()F
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->h(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    int-to-float v1, v1

    .line 23
    add-float/2addr v0, v1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    return v0

    .line 28
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "BaseMBMediaView"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method private getAllScreenWidth()F
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->i(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    int-to-float v1, v1

    .line 23
    add-float/2addr v0, v1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    return v0

    .line 28
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "BaseMBMediaView"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method private getCDRate()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->i()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method private getEndCardWebview()Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f0:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "BaseMBMediaView"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method private getPlayUrl()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x5

    .line 16
    if-ne v1, v2, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->k()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/download/a;->q()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/download/a;->e()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    new-instance v4, Ljava/io/File;

    .line 50
    .line 51
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/io/File;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    cmp-long v2, v2, v4

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    return-object v1

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    return-object v1

    .line 79
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "BaseMBMediaView"

    .line 84
    .line 85
    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-object v0
.end method

.method private getReadyRate()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->C()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x64

    .line 17
    .line 18
    :goto_0
    return v0
.end method

.method private getUnitId()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "BaseMBMediaView"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method private getUnitSetting()Lcom/mbridge/msdk/setting/l;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 3
    .line 4
    if-eqz v1, :cond_4

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    return-object v2

    .line 55
    :cond_2
    invoke-static {v1}, Lcom/mbridge/msdk/setting/l;->i(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/mbridge/msdk/setting/l;->i(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    .line 63
    .line 64
    .line 65
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_4
    :goto_1
    return-object v0

    .line 67
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "BaseMBMediaView"

    .line 72
    .line 73
    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method private h()V
    .locals 3

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e()V

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D()V

    .line 5
    new-instance v0, Lcom/mbridge/msdk/click/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$n;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n()V

    return-void
.end method

.method private i()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m()V

    return-void
.end method

.method private j()V
    .locals 9

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    const-string v1, "<!DOCTYPE html><html lang=\"en\"><head>  <meta charset=\"UTF-8\">  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">  <title>Document</title>  <style>  *{    margin: 0;    padding: 0;  }  html, body{    width: 100%;    height: 100%;  }  body{    background-image: url(\'gifUrl\');    background-position: center;    background-size: contain;    background-repeat: no-repeat;  }  </style></head><body></body></html>"

    .line 7
    const-string v2, "gifUrl"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->setInterceptTouch(Z)V

    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$m;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$m;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->I()V

    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method private k()Z
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullPlayContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F:Landroid/widget/RelativeLayout;

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullPlayerParent()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->J:Landroid/widget/RelativeLayout;

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullClose()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->G:Landroid/widget/RelativeLayout;

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullTvInstall()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->H:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullPb()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->I:Landroid/widget/ProgressBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic l(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getEndCardWebview()Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object p0

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->onClickPlayerView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic m(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->I:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->C:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic n(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e0:Z

    return p0
.end method

.method private o()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S:I

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R:I

    if-eqz v2, :cond_0

    mul-int/2addr v0, v1

    .line 4
    div-int/2addr v0, v2

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7
    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 8
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic o(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E()V

    return-void
.end method

.method static synthetic p(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    return-object p0
.end method

.method private p()V
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->i(Landroid/content/Context;)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->h(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    .line 5
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private q()Landroid/view/View;
    .locals 5

    .line 2
    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    .line 3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    .line 6
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 12
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_nativex_close"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    new-instance v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$q;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$q;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g0:Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic q(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    return-object p0
.end method

.method private r()V
    .locals 3

    const-string v0, "BaseMBMediaView"

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_3

    .line 4
    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e:Z

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    const-string v1, "fullscreen windowfocuse true isPlaying do nothing return"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->getIsActiviePause()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->pause()V

    goto :goto_1

    .line 10
    :cond_3
    const-string v1, "fullscreen playerview is null return"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private s()V
    .locals 4

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p()V

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenWidth()F

    move-result v1

    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenHeight()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/view/View;FF)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;Z)V

    .line 5
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P()V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$d;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$d;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 9
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic s(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    return p0
.end method

.method private setIsFrontDesk(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setIsFrontDesk(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private setPlayViewParamsDefault(Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenWidth()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    float-to-int v1, v1

    .line 27
    mul-int/lit8 v1, v1, 0x9

    .line 28
    .line 29
    div-int/lit8 v1, v1, 0x10

    .line 30
    .line 31
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 32
    .line 33
    const/16 v1, 0xd

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "BaseMBMediaView"

    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_2
    return-void
.end method

.method private t()V
    .locals 1

    .line 2
    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$j;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$j;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    return-void
.end method

.method static synthetic t(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g()V

    return-void
.end method

.method static synthetic u(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->H:Landroid/widget/TextView;

    return-object p0
.end method

.method private u()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenWidth()F

    move-result v0

    float-to-int v0, v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->h(Landroid/content/Context;)I

    move-result v1

    .line 5
    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    const/16 v3, 0xd

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7
    iget v4, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 8
    iget v4, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 9
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 13
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15
    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S()V

    .line 17
    iget-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    if-nez v2, :cond_1

    .line 18
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    iget v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/view/View;FF)V

    goto :goto_2

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {p0, v2, v0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/view/View;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 20
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private v()V
    .locals 7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 6
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 7
    aget-object v0, v0, v2

    .line 8
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->m(Ljava/lang/String;)D

    move-result-wide v1

    .line 9
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->m(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v1, v5

    if-lez v0, :cond_2

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2

    .line 10
    iput-wide v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P:D

    .line 11
    iput-wide v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 12
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic v(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j0:Z

    return p0
.end method

.method static synthetic w(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenWidth()F

    move-result p0

    return p0
.end method

.method private w()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_nativex_mbmediaview"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-string v0, "BaseMBMediaView"

    const-string v1, "can not find mediaview resource"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_rl_mediaview_root"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->x:Landroid/widget/RelativeLayout;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_ll_playerview_container"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->w:Landroid/widget/RelativeLayout;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_my_big_img"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/videocommon/view/MyImageView;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B:Lcom/mbridge/msdk/videocommon/view/MyImageView;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_native_pb"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->C:Landroid/widget/ProgressBar;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_nativex_webview_layout"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_nativex_webview_layout_webview"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z:Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    .line 12
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->x:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, -0x1

    .line 13
    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private x()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->c:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    const/16 v1, 0xd

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S:I

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R:I

    if-eqz v3, :cond_0

    mul-int/2addr v0, v2

    .line 4
    div-int/2addr v0, v3

    .line 5
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7
    iget v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 8
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit16 v2, v2, 0x273

    .line 14
    div-int/lit16 v2, v2, 0x4b0

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic x(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    return p0
.end method

.method private y()Z
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitSetting()Lcom/mbridge/msdk/setting/l;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->L()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->n(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    return v0

    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 5
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v1

    const-string v3, "s_a_w_n_c"

    invoke-virtual {v1, v3, v2}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    return v2

    .line 7
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->n(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v0

    .line 8
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMBMediaView"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v0
.end method

.method static synthetic y(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    return p0
.end method

.method private z()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMBMediaView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic z(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    const-string v0, "BaseMBMediaView"

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->handleViewStyleResult(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getFullScreenViewByStyle(Landroid/content/Context;Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    if-nez v1, :cond_2

    return-void

    .line 50
    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 51
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iget-object v3, v2, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->style:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    iget-object v4, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v3, v4, v2}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    const/4 v2, 0x0

    .line 53
    iput-boolean v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p:Z

    .line 54
    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v3, :cond_4

    .line 55
    invoke-virtual {v3}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setEnterFullScreen()V

    .line 56
    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setIsActivePause(Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_7

    .line 57
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c()V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 59
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object v4, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->D:Landroid/view/View;

    .line 61
    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    .line 62
    iget-object v5, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 63
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_6

    .line 64
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-ne v8, v9, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 65
    :cond_6
    :goto_2
    iput v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->K:I

    .line 66
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x64

    .line 67
    invoke-virtual {v6, v8}, Landroid/view/View;->setId(I)V

    .line 68
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 70
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v6, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x65

    .line 73
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 74
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76
    iget-object v8, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->J:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v8, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->J:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_7

    .line 78
    iget-object v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPrivacyButtonTemplateVisibility()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_7

    .line 79
    :try_start_1
    new-instance v7, Lcom/mbridge/msdk/widget/MBAdChoice;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mbridge/msdk/widget/MBAdChoice;-><init>(Landroid/content/Context;)V

    .line 80
    iget-object v8, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/widget/MBAdChoice;->setCampaign(Lcom/mbridge/msdk/out/Campaign;)V

    .line 81
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v9, v10}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xb

    .line 82
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v9, 0xc

    .line 83
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    iget-object v9, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    .line 85
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    :cond_7
    :goto_3
    iget-boolean v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->u:Z

    if-eqz v7, :cond_8

    .line 87
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/widget/FrameLayout;)V

    .line 88
    :cond_8
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    sget-object v5, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$i;->a:[I

    iget-object v7, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iget-object v7, v7, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->style:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_9

    const/high16 v5, -0x1000000

    goto :goto_4

    :cond_9
    move v5, v6

    .line 90
    :goto_4
    iget v8, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->t:I

    if-eqz v8, :cond_a

    .line 91
    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5

    .line 92
    :cond_a
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 93
    :goto_5
    iget-object v5, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    const/16 v8, 0x67

    invoke-virtual {v5, v8}, Landroid/view/View;->setId(I)V

    .line 94
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    new-array v6, v7, [I

    .line 96
    invoke-virtual {v3, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 97
    aget v1, v6, v1

    iput v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d0:I

    if-nez v1, :cond_b

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 99
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    invoke-virtual {v5, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 100
    :cond_b
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s()V

    .line 102
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q()V

    .line 103
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v1, :cond_c

    .line 104
    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    .line 105
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    new-instance v3, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;

    invoke-direct {v3, p0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v1, v3}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->setMediaViewPlayListener(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;)V

    .line 106
    :cond_c
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Z)V

    .line 107
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->F()V

    goto :goto_8

    .line 108
    :cond_d
    :goto_6
    const-string v1, "rootView is null"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 109
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 14
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz p1, :cond_0

    .line 17
    invoke-interface {p1}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onVideoComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 14
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    if-eqz p1, :cond_0

    .line 17
    invoke-interface {p1}, Lcom/mbridge/msdk/out/OnMBMediaViewListener;->onVideoStart()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    if-eqz p1, :cond_1

    .line 19
    invoke-interface {p1}, Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;->onVideoStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 20
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMBMediaView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public cai(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "cai"

    .line 2
    .line 3
    const-string v1, "exception: "

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "cai:"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "BaseMBMediaView"

    .line 23
    .line 24
    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const-string p2, "params is null"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string p2, "packageName"

    .line 51
    .line 52
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    const-string v2, "packageName is empty"

    .line 63
    .line 64
    invoke-static {p1, v2}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p2

    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception p2

    .line 71
    goto :goto_3

    .line 72
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    const/4 v2, 0x2

    .line 85
    if-eqz p2, :cond_2

    .line 86
    .line 87
    const/4 p2, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move p2, v2

    .line 90
    :goto_1
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    .line 91
    .line 92
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v5, "code"

    .line 96
    .line 97
    sget v6, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->b:I

    .line 98
    .line 99
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    new-instance v5, Lorg/json/JSONObject;

    .line 103
    .line 104
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v6, "result"

    .line 108
    .line 109
    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    const-string p2, "data"

    .line 113
    .line 114
    invoke-virtual {v4, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p2, p1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :catch_1
    move-exception p2

    .line 138
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {p1, v2}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {v3, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {p1, v1}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v3, v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {p1, v1}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v3, v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    :cond_3
    :goto_4
    return-void
.end method

.method public canShowVideo()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Z)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_0
    return v0
.end method

.method public changeNoticeURL()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_6

    .line 14
    .line 15
    const-string v1, "is_video"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 24
    .line 25
    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 26
    .line 27
    const-string v3, "is_video=1"

    .line 28
    .line 29
    const-string v4, "is_video=2"

    .line 30
    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 45
    .line 46
    if-ne v1, v2, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 60
    .line 61
    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 62
    .line 63
    if-ne v1, v2, :cond_2

    .line 64
    .line 65
    const-string v1, "1"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    sget-object v2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 69
    .line 70
    if-ne v1, v2, :cond_3

    .line 71
    .line 72
    const-string v1, "2"

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const-string v1, ""

    .line 76
    .line 77
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v3, "?"

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    const-string v0, "&is_video="

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const-string v0, "?is_video="

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    return-void
.end method

.method public destory()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->release()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_2

    .line 15
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "BaseMBMediaView"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_2
    return-void
.end method

.method public exitFullScreen()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "BaseMBMediaView"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method public getAddNVT2ToNoticeURL()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "nv_t2"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "&nv_t2="

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_0
    return-object v0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    return-object v0
.end method

.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "BaseMBMediaView"

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "MAL_16.9.71,3.0.1"

    .line 18
    .line 19
    invoke-direct {p0, v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const-string v0, ""

    .line 42
    .line 43
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "getEndScreenInfo-mCampaign.name:"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {p2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    return-void
.end method

.method public getFullScreenViewByStyle(Landroid/content/Context;Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;
    .locals 2

    .line 1
    sget-object v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$i;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    new-instance v0, Lcom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    move-object p1, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    new-instance v0, Lcom/mbridge/msdk/nativex/view/mbfullview/MBridgeFullView;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lcom/mbridge/msdk/nativex/view/mbfullview/MBridgeFullView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_1
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;->setStytle(Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-object p1
.end method

.method public getMediaContentAspectRatio()F
    .locals 5

    .line 1
    const-string v0, "BaseMBMediaView"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 5
    .line 6
    if-eqz v2, :cond_2

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImageSize()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    const-string v3, "x"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    array-length v3, v2

    .line 46
    const/4 v4, 0x2

    .line 47
    if-ne v3, v4, :cond_1

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    aget-object v3, v2, v3

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x1

    .line 57
    aget-object v2, v2, v4

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    int-to-float v2, v3

    .line 64
    int-to-float v1, v1

    .line 65
    div-float v1, v2, v1

    .line 66
    .line 67
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "resource ratio is : "

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_2
    return v1
.end method

.method public handleViewStyleResult(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    if-eq v0, p1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    if-eq v0, p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x4

    .line 17
    if-eq v0, p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x6

    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;->a:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    sget-object p1, Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;->b:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x0

    .line 33
    :goto_1
    return-object p1
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public hideEndCardWebViewCloseBtn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k0:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    instance-of p2, p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    check-cast p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "BaseMBMediaView"

    .line 34
    .line 35
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_1
    return-void
.end method

.method public ismCurIsFullScreen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->g:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i0:I

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m0:Ljava/lang/Runnable;

    .line 32
    .line 33
    const-wide/16 v2, 0x12c

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "BaseMBMediaView"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    return-void
.end method

.method public onBufferingEnd()V
    .locals 2

    .line 1
    const-string v0, "omsdk"

    .line 2
    .line 3
    const-string v1, "base media end"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onBufferingStart(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "omsdk"

    .line 2
    .line 3
    const-string v0, "base media start"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->c()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onBufferingTimeOut(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i0:I

    .line 9
    .line 10
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 11
    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i0:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    move p1, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move p1, v0

    .line 24
    :goto_0
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i:Z

    .line 25
    .line 26
    iget p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i0:I

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    move v0, v1

    .line 31
    :cond_2
    iput-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j:Z

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v1, 0xc8

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->unregisterView()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->c()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->L:Landroid/os/Handler;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m0:Ljava/lang/Runnable;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->C()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "BaseMBMediaView"

    .line 60
    .line 61
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iget p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    .line 36
    .line 37
    :cond_1
    iget p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAllScreenWidth()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    float-to-int p1, p1

    .line 50
    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    .line 51
    .line 52
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 53
    .line 54
    sget-object p2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 55
    .line 56
    if-ne p1, p2, :cond_6

    .line 57
    .line 58
    iget-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    .line 59
    .line 60
    if-nez p2, :cond_6

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    .line 67
    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    .line 74
    const/4 v0, -0x2

    .line 75
    if-eq p2, v0, :cond_4

    .line 76
    .line 77
    :cond_3
    if-eqz p1, :cond_5

    .line 78
    .line 79
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    .line 81
    const/4 p2, -0x1

    .line 82
    if-ne p1, p2, :cond_5

    .line 83
    .line 84
    :cond_4
    iget p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->O:I

    .line 85
    .line 86
    int-to-double p1, p1

    .line 87
    iget-wide v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q:D

    .line 88
    .line 89
    mul-double/2addr p1, v0

    .line 90
    iget-wide v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P:D

    .line 91
    .line 92
    div-double/2addr p1, v0

    .line 93
    double-to-int p1, p1

    .line 94
    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N:I

    .line 95
    .line 96
    :cond_5
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->u()V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_6
    sget-object p2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 101
    .line 102
    if-ne p1, p2, :cond_7

    .line 103
    .line 104
    iget-boolean p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    .line 105
    .line 106
    if-nez p2, :cond_7

    .line 107
    .line 108
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o()V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    sget-object p2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->c:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 113
    .line 114
    if-ne p1, p2, :cond_8

    .line 115
    .line 116
    iget-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h:Z

    .line 117
    .line 118
    if-nez p1, :cond_8

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string p2, "BaseMBMediaView"

    .line 129
    .line 130
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_8
    :goto_2
    return-void
.end method

.method public onPlayCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onPlayError(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$o;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$o;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/d;->a()Lcom/mbridge/msdk/foundation/controller/d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/d;->e()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "BaseMBMediaView"

    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void
.end method

.method public onPlayProgress(II)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(II)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 8
    .line 9
    const/16 v1, 0x64

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    mul-int/lit8 v2, p1, 0x64

    .line 14
    .line 15
    div-int/2addr v2, p2

    .line 16
    add-int/lit8 v3, p1, 0x1

    .line 17
    .line 18
    mul-int/2addr v3, v1

    .line 19
    div-int/2addr v3, p2

    .line 20
    const/16 v4, 0x19

    .line 21
    .line 22
    if-gt v2, v4, :cond_0

    .line 23
    .line 24
    if-ge v4, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->h()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 v4, 0x32

    .line 31
    .line 32
    if-gt v2, v4, :cond_1

    .line 33
    .line 34
    if-ge v4, v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->i()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/16 v4, 0x4b

    .line 41
    .line 42
    if-gt v2, v4, :cond_2

    .line 43
    .line 44
    if-ge v4, v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->o()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getReadyRate()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eq v0, v1, :cond_7

    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l0:Z

    .line 56
    .line 57
    if-nez v0, :cond_7

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getCDRate()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getReadyRate()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    if-le v0, v2, :cond_4

    .line 71
    .line 72
    div-int/lit8 v0, v2, 0x2

    .line 73
    .line 74
    :cond_4
    if-ltz v0, :cond_7

    .line 75
    .line 76
    mul-int/2addr p2, v0

    .line 77
    div-int/2addr p2, v1

    .line 78
    if-lt p1, p2, :cond_7

    .line 79
    .line 80
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const/16 v0, 0x5e

    .line 87
    .line 88
    if-eq p1, v0, :cond_6

    .line 89
    .line 90
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    const/16 v0, 0x11f

    .line 97
    .line 98
    if-ne p1, v0, :cond_5

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    goto :goto_2

    .line 138
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    :goto_2
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-eqz p1, :cond_7

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/download/a;->v()V

    .line 189
    .line 190
    .line 191
    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l0:Z

    .line 193
    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v0, "CDRate is : "

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string p2, " and start download !"

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string p2, "BaseMBMediaView"

    .line 217
    .line 218
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_7
    return-void
.end method

.method public onPlayProgressMS(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "errorstr"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPlayStarted(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    int-to-float p1, p1

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->n(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "omsdk"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a0:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 7
    .line 8
    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->setIsFrontDesk(Z)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "BaseMBMediaView"

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_2
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "openURL:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BaseMBMediaView"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string p2, "params is null"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_4

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    :try_start_0
    instance-of v2, p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    check-cast p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    .line 78
    .line 79
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p2, "url"

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const-string v2, "type"

    .line 89
    .line 90
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    const/4 v2, 0x1

    .line 95
    if-ne p1, v2, :cond_3

    .line 96
    .line 97
    invoke-static {v0, p2}, Lcom/mbridge/msdk/click/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    move-exception p1

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    const/4 v2, 0x2

    .line 106
    if-ne p1, v2, :cond_4

    .line 107
    .line 108
    invoke-static {v0, p2}, Lcom/mbridge/msdk/click/c;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_3
    return-void
.end method

.method public setAllowLoopPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAllowScreenChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAllowVideoRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFollowActivityOrientation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->j0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFullScreenViewBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsAllowFullScreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNativeAd(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p()V

    .line 15
    .line 16
    .line 17
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMediaViewHolder()Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    new-instance p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;

    .line 28
    .line 29
    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdvImpList()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;->a:Ljava/util/Map;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setMediaViewHolder(Lcom/mbridge/msdk/foundation/entity/CampaignEx$b;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/16 v0, 0x5e

    .line 56
    .line 57
    if-eq p1, v0, :cond_4

    .line 58
    .line 59
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/16 v0, 0x11f

    .line 66
    .line 67
    if-ne p1, v0, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :goto_2
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->W:Lcom/mbridge/msdk/videocommon/download/a;

    .line 156
    .line 157
    iget-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o:Z

    .line 158
    .line 159
    if-eqz p1, :cond_8

    .line 160
    .line 161
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    if-eqz p1, :cond_6

    .line 165
    .line 166
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 167
    .line 168
    if-eqz p1, :cond_5

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->unregisterView()V

    .line 171
    .line 172
    .line 173
    :cond_5
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->c()V

    .line 176
    .line 177
    .line 178
    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 179
    .line 180
    :cond_6
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 181
    .line 182
    if-eqz p1, :cond_7

    .line 183
    .line 184
    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 185
    .line 186
    :cond_7
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 187
    .line 188
    if-eqz p1, :cond_8

    .line 189
    .line 190
    iput-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 191
    .line 192
    :cond_8
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 193
    .line 194
    if-eqz p1, :cond_9

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_9

    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOmid()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getUnitId()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    const-string v6, ""

    .line 239
    .line 240
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-static/range {v0 .. v7}, Lcom/mbridge/msdk/omsdk/b;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 251
    .line 252
    :cond_9
    iget-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->o:Z

    .line 253
    .line 254
    if-eqz p1, :cond_a

    .line 255
    .line 256
    invoke-direct {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const-string v0, "BaseMBMediaView"

    .line 265
    .line 266
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_a
    :goto_4
    return-void
.end method

.method public setOnMediaViewListener(Lcom/mbridge/msdk/out/OnMBMediaViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b0:Lcom/mbridge/msdk/out/OnMBMediaViewListener;

    return-void
.end method

.method public setOnMediaViewListener(Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c0:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    return-void
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setProgressVisibility(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setSoundIndicatorVisibility(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setVideoSoundOnOff(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->f:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public showEndCardWebViewCloseBtn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->h0:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "BaseMBMediaView"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p2, "state"

    .line 16
    .line 17
    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p2

    .line 22
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception p2

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    const-string p2, "SHOW CLOSE BTN "

    .line 33
    .line 34
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->showEndCardWebViewCloseBtn()V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p2, p1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->exitFullScreen()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v0, "BaseMBMediaView"

    .line 23
    .line 24
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public updateViewManger(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->v:Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    xor-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1, v2}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(ZZLcom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    .line 30
    .line 31
    iget v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d0:I

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1, v2}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(ZLcom/mbridge/msdk/nativex/view/mbfullview/BaseView;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E:Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    .line 40
    .line 41
    instance-of v2, v1, Lcom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    xor-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(ZLcom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_2
    return-void
.end method
