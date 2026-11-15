.class public Lcom/mbridge/msdk/video/bt/module/MBTempContainer;
.super Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;,
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;,
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$p;,
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;,
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;,
        Lcom/mbridge/msdk/video/bt/module/MBTempContainer$l;
    }
.end annotation


# static fields
.field private static final s0:Ljava/lang/String; = "MBTempContainer"


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

.field protected N:Z

.field private O:Landroid/view/LayoutInflater;

.field protected P:Z

.field protected Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

.field protected R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field protected S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

.field protected T:Landroid/os/Handler;

.field private U:I

.field private V:I

.field protected W:Ljava/lang/Runnable;

.field protected a0:Ljava/lang/Runnable;

.field private b0:Landroid/view/View;

.field private c0:Z

.field private d0:Z

.field private e0:Z

.field private f0:Z

.field private g0:Z

.field private h0:Z

.field private i0:Z

.field private j0:Z

.field private k0:Z

.field private l0:Z

.field private m0:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

.field private n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field private o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

.field private q0:Ljava/lang/Runnable;

.field private r:Landroid/view/View;

.field private r0:Z

.field private s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private t:Lcom/mbridge/msdk/videocommon/download/a;

.field private u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

.field private v:Lcom/mbridge/msdk/video/bt/module/listener/b;

.field private w:Lcom/mbridge/msdk/video/dynview/listener/a;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Lcom/mbridge/msdk/video/signal/factory/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    .line 4
    sget v1, Lcom/mbridge/msdk/foundation/same/a;->F:I

    iput v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Z

    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    .line 8
    iput v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->L:I

    .line 9
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->N:Z

    .line 10
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->P:Z

    .line 11
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k$a;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k$a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    .line 13
    iput v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->U:I

    .line 14
    iput v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->V:I

    .line 15
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$c;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$c;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    .line 17
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->c0:Z

    .line 18
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    .line 19
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->e0:Z

    .line 20
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    .line 21
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->h0:Z

    .line 22
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->i0:Z

    .line 23
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->j0:Z

    .line 24
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k0:Z

    .line 25
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l0:Z

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 27
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 28
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 29
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$f;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$f;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q0:Ljava/lang/Runnable;

    .line 30
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r0:Z

    .line 31
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 33
    iput p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    .line 34
    const-string p2, ""

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    .line 35
    sget v0, Lcom/mbridge/msdk/foundation/same/a;->F:I

    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A:I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Z

    .line 37
    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    .line 39
    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->L:I

    .line 40
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->N:Z

    .line 41
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->P:Z

    .line 42
    new-instance p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k$a;

    invoke-direct {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k$a;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

    .line 43
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    .line 44
    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->U:I

    .line 45
    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->V:I

    .line 46
    new-instance p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    .line 47
    new-instance p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$c;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$c;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    .line 48
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->c0:Z

    .line 49
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    .line 50
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->e0:Z

    .line 51
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    .line 52
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->h0:Z

    .line 53
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->i0:Z

    .line 54
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->j0:Z

    .line 55
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k0:Z

    .line 56
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l0:Z

    const/4 p2, 0x0

    .line 57
    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 58
    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 59
    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 60
    new-instance p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$f;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$f;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q0:Ljava/lang/Runnable;

    .line 61
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r0:Z

    .line 62
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method private A()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/scheme/applet/AppletModelManager;->getInstance()Lcom/mbridge/msdk/scheme/applet/AppletModelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/scheme/applet/AppletModelManager;->get(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 6
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->can(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->setUserClick(Z)V

    .line 8
    new-instance v2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$l;

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v2, v3}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$l;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->requestWxAppletsScheme(ILcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->clearRequestState()V

    .line 10
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic B(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic D(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q0:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic E(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic F(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic G(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic H(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic I(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic J(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/video/bt/module/orglistener/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic K(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic L(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic M(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r0:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic N(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Q(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic R(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic S(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic T(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic U(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic V(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b0:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private a(II)I
    .locals 5

    if-gez p1, :cond_0

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    if-nez v0, :cond_1

    return p1

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return p1

    :cond_2
    const/4 v0, 0x1

    if-gt p2, v0, :cond_3

    return p1

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    add-int/lit8 v4, p2, -0x1

    if-ge v2, v4, :cond_5

    .line 7
    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 8
    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    move-result v4

    add-int/2addr v3, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-le p1, v3, :cond_6

    sub-int v1, p1, v3

    :cond_6
    return v1
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->U:I

    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/iab/omid/library/mmadbridge/adsession/media/a;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->i0:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A:I

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private b(ILjava/lang/String;)V
    .locals 3

    .line 7
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 8
    const-string v1, "2000037"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",desc="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, ""

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, p2

    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->t(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->u(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object p2

    .line 16
    :cond_1
    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 21
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/o;->i(Lcom/mbridge/msdk/foundation/entity/m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 25
    :goto_1
    sget-object p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    return p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->B:I

    return p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->j0:Z

    return p1
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    return p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k0:Z

    return p1
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->i0:Z

    return p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->h0:Z

    return p1
.end method

.method static synthetic f(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method private getBufferTimeout()I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/b;->c()Lcom/mbridge/msdk/videocommon/setting/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/b;->a()Lcom/mbridge/msdk/videocommon/setting/a;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/a;->i()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    long-to-int v0, v0

    .line 28
    goto :goto_2

    .line 29
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x5

    .line 33
    :goto_2
    return v0
.end method

.method private getCloseBtnTime()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "clsdly"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    if-ltz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCbd()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, -0x2

    .line 39
    if-le v0, v1, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCbd()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/c;->i()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    :goto_0
    return v1
.end method

.method static synthetic h(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/videocommon/setting/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    return-object p0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onAdClose()V

    return-void
.end method

.method private l()V
    .locals 5

    .line 2
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "notify_listener"

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    instance-of v3, v2, Lcom/mbridge/msdk/video/module/listener/impl/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "listener_type"

    if-eqz v3, :cond_0

    .line 6
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_0
    instance-of v1, v2, Lcom/mbridge/msdk/video/module/listener/impl/m;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-eqz v1, :cond_3

    .line 12
    const-string v2, "2000130"

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 13
    :goto_1
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic l(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    return p0
.end method

.method static synthetic m(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$a;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method private onAdClose()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:I

    .line 10
    .line 11
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->H:I

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->I:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    :cond_0
    iget v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->B:I

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    :goto_0
    iget v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A:I

    .line 27
    .line 28
    invoke-interface {v0, v2, v1}, Lcom/mbridge/msdk/video/bt/module/listener/b;->a(ZI)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    .line 34
    .line 35
    iget-boolean v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    .line 36
    .line 37
    iget-object v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 38
    .line 39
    invoke-interface {v0, v1, v2, v3}, Lcom/mbridge/msdk/video/bt/module/listener/b;->a(Ljava/lang/String;ZLcom/mbridge/msdk/videocommon/entity/c;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic p(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    return p0
.end method

.method static synthetic q(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/video/bt/module/listener/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    return-object p0
.end method

.method private q()V
    .locals 5

    .line 2
    const-string v0, "omsdk"

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v1, :cond_2

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    sget-object v3, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b0:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v2, v1, v3, v4}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v2, v1, v3, v4}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    .line 9
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->g()V

    .line 10
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    if-eqz v1, :cond_2

    .line 11
    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/mmadbridge/adsession/media/Position;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->b(ZLcom/iab/omid/library/mmadbridge/adsession/media/Position;)Lcom/iab/omid/library/mmadbridge/adsession/media/b;

    move-result-object v1

    .line 12
    const-string v2, "bt:   adEvents.loaded"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    invoke-virtual {v2, v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->d(Lcom/iab/omid/library/mmadbridge/adsession/media/b;)V

    .line 14
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 15
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic r(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    return-object p0
.end method

.method private r()V
    .locals 5

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->c0:Z

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 5
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->m()V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    const-string v2, "omsdk"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    if-eqz v1, :cond_6

    .line 10
    iget-boolean v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:I

    sget v4, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-eq v2, v4, :cond_2

    sget v4, Lcom/mbridge/msdk/foundation/same/a;->I:I

    if-ne v2, v4, :cond_4

    .line 11
    :cond_2
    iget v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->B:I

    if-ne v2, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iget v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A:I

    invoke-interface {v1, v0, v2}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(ZI)V

    .line 12
    :cond_4
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/videocommon/entity/c;->a(I)V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    iget-object v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;ZLcom/mbridge/msdk/videocommon/entity/c;)V

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 18
    :cond_8
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u()V

    .line 19
    :cond_9
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-nez v0, :cond_b

    .line 20
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    if-eqz v0, :cond_a

    .line 21
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/16 v1, 0x11f

    invoke-static {v1, v0}, Lcom/mbridge/msdk/videocommon/a;->b(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_3

    .line 22
    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/16 v1, 0x5e

    invoke-static {v1, v0}, Lcom/mbridge/msdk/videocommon/a;->b(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 23
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_c

    .line 24
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 25
    :goto_4
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    return-void
.end method

.method static synthetic s(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private s()V
    .locals 7

    .line 2
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mbridge/msdk/mbsignalcommon/mraid/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/mbridge/msdk/foundation/same/report/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->f0:Z

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method private t()V
    .locals 2

    .line 2
    iget v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->U:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->U:I

    :cond_2
    return-void
.end method

.method static synthetic u(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method private u()V
    .locals 5

    .line 2
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d0:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->checkChinaSendToServerDiff(Lcom/mbridge/msdk/video/bt/module/orglistener/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    const-string v1, "sendToServerRewardInfo"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/video/module/report/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic v(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method private v()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    .line 3
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 4
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    .line 5
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->g(I)V

    .line 6
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setUnitId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setRewardUnitSetting(Lcom/mbridge/msdk/videocommon/setting/c;)V

    .line 8
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->a(Lcom/mbridge/msdk/video/signal/a$a;)V

    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    :cond_0
    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m0:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    .line 11
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->c()V

    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m0:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->a()D

    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m0:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$i;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$i;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->a(Lcom/mbridge/msdk/mbsignalcommon/mraid/d$b;)V

    :cond_1
    return-void
.end method

.method static synthetic w(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method private w()V
    .locals 5

    const-string v0, "x"

    .line 2
    :try_start_0
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 3
    const-string v2, "temp_container"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v2, :cond_0

    .line 5
    const-string v2, "web_view"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v2, :cond_1

    .line 7
    const-string v2, "mbridge_video_view"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    if-eqz v2, :cond_1

    .line 9
    const-string v2, "player_view"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v4, v4, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-eqz v0, :cond_2

    .line 11
    const-string v2, "2000136"

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 12
    :goto_1
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic x(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method private y()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$j;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$j;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    return-object p0
.end method


# virtual methods
.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-interface {v0, v1, p1}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(Ljava/lang/String;)V

    return-void
.end method

.method public canBackPress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->canBackPress()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public defaultLoad(ILjava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->superDefaultLoad(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setTemplateRenderSucc(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 39
    .line 40
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 46
    .line 47
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->addOrderViewData(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setUnitID(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getCloseBtnTime()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setCloseDelayTime(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 69
    .line 70
    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->u()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setPlayCloseBtnTm(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 80
    .line 81
    new-instance v2, Lcom/mbridge/msdk/video/module/listener/impl/h;

    .line 82
    .line 83
    iget-object v5, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 84
    .line 85
    iget-object v6, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    .line 86
    .line 87
    iget-object v7, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 88
    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    iget-object v9, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v10, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;

    .line 96
    .line 97
    invoke-direct {v10, v0, v3}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    .line 98
    .line 99
    .line 100
    iget-object v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    iget-boolean v12, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 107
    .line 108
    move-object v4, v2

    .line 109
    invoke-direct/range {v4 .. v12}, Lcom/mbridge/msdk/video/module/listener/impl/h;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/videocommon/entity/c;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/listener/a;IZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 116
    .line 117
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iget v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    .line 129
    .line 130
    invoke-interface {v1, v2}, Lcom/mbridge/msdk/video/signal/a;->g(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showPlayableView()V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b0:Landroid/view/View;

    .line 144
    .line 145
    const/16 v2, 0x8

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->loadModuleDatas()V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->E()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getH5CloseType()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_2

    .line 164
    .line 165
    move v12, v2

    .line 166
    goto :goto_0

    .line 167
    :cond_2
    move v12, v1

    .line 168
    :goto_0
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 169
    .line 170
    if-eqz v1, :cond_3

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_3

    .line 177
    .line 178
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 179
    .line 180
    new-instance v2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;

    .line 181
    .line 182
    iget-object v4, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 183
    .line 184
    iget-object v5, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 185
    .line 186
    invoke-direct {v2, v0, v4, v5}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Landroid/app/Activity;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setContainerViewOnNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    .line 190
    .line 191
    .line 192
    :cond_3
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 193
    .line 194
    if-eqz v1, :cond_4

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVst()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/4 v2, -0x2

    .line 201
    if-le v1, v2, :cond_4

    .line 202
    .line 203
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVst()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    goto :goto_1

    .line 210
    :cond_4
    iget-object v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->F()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    :goto_1
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 217
    .line 218
    if-eqz v2, :cond_5

    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    const/4 v4, 0x5

    .line 225
    if-ne v2, v4, :cond_5

    .line 226
    .line 227
    iget v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    .line 228
    .line 229
    const/4 v4, 0x1

    .line 230
    if-le v2, v4, :cond_5

    .line 231
    .line 232
    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a(II)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 237
    .line 238
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setVst(I)V

    .line 239
    .line 240
    .line 241
    :cond_5
    move v13, v1

    .line 242
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 243
    .line 244
    invoke-virtual {v1, v13}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoSkipTime(I)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 248
    .line 249
    new-instance v2, Lcom/mbridge/msdk/video/module/listener/impl/m;

    .line 250
    .line 251
    iget-object v6, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 252
    .line 253
    iget-object v7, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 254
    .line 255
    iget-object v8, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 256
    .line 257
    iget-object v9, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    .line 258
    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    iget-object v11, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 264
    .line 265
    new-instance v14, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$p;

    .line 266
    .line 267
    invoke-direct {v14, v0, v3}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$p;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    .line 268
    .line 269
    .line 270
    iget-object v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 271
    .line 272
    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    .line 273
    .line 274
    .line 275
    move-result v15

    .line 276
    iget-boolean v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 277
    .line 278
    iget-object v4, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 279
    .line 280
    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/setting/c;->C()I

    .line 281
    .line 282
    .line 283
    move-result v17

    .line 284
    move-object v4, v2

    .line 285
    move-object v5, v1

    .line 286
    move/from16 v16, v3

    .line 287
    .line 288
    invoke-direct/range {v4 .. v17}, Lcom/mbridge/msdk/video/module/listener/impl/m;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Lcom/mbridge/msdk/video/module/MBridgeContainerView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;IILcom/mbridge/msdk/video/module/listener/a;IZI)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 295
    .line 296
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 297
    .line 298
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 299
    .line 300
    .line 301
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 302
    .line 303
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 304
    .line 305
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 309
    .line 310
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->defaultShow()V

    .line 311
    .line 312
    .line 313
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 314
    .line 315
    new-instance v13, Lcom/mbridge/msdk/video/module/listener/impl/b;

    .line 316
    .line 317
    iget-object v3, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 318
    .line 319
    iget-object v5, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 320
    .line 321
    iget-object v6, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 322
    .line 323
    iget-object v7, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    .line 324
    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    iget-object v9, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 330
    .line 331
    new-instance v10, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;

    .line 332
    .line 333
    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 334
    .line 335
    iget-object v4, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 336
    .line 337
    invoke-direct {v10, v0, v2, v4}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Landroid/app/Activity;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 338
    .line 339
    .line 340
    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 341
    .line 342
    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    .line 343
    .line 344
    .line 345
    move-result v11

    .line 346
    iget-boolean v12, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 347
    .line 348
    move-object v2, v13

    .line 349
    move-object v4, v1

    .line 350
    invoke-direct/range {v2 .. v12}, Lcom/mbridge/msdk/video/module/listener/impl/b;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Lcom/mbridge/msdk/video/module/MBridgeContainerView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/listener/a;IZ)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v13}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 357
    .line 358
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->defaultShow()V

    .line 359
    .line 360
    .line 361
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q()V

    .line 362
    .line 363
    .line 364
    goto :goto_3

    .line 365
    :cond_6
    invoke-direct/range {p0 .. p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(ILjava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 369
    .line 370
    if-eqz v1, :cond_7

    .line 371
    .line 372
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 373
    .line 374
    .line 375
    :cond_7
    :goto_3
    return-void
.end method

.method public findID(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "id"

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public findLayout(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "layout"

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public findMBridgeContainerView()Lcom/mbridge/msdk/video/module/MBridgeContainerView;
    .locals 1

    .line 1
    const-string v0, "mbridge_video_templete_container"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findID(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 12
    .line 13
    return-object v0
.end method

.method public findMBridgeVideoView()Lcom/mbridge/msdk/video/module/MBridgeVideoView;
    .locals 1

    .line 1
    const-string v0, "mbridge_video_templete_videoview"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findID(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 12
    .line 13
    return-object v0
.end method

.method public findWindVaneWebView()Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 4

    .line 1
    const-string v0, "_"

    .line 2
    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/a$a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/a$a;->b()Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    goto :goto_2

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    .line 85
    .line 86
    const/16 v1, 0x5e

    .line 87
    .line 88
    const/16 v2, 0x11f

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 93
    .line 94
    invoke-static {v2, v0}, Lcom/mbridge/msdk/videocommon/a;->a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/videocommon/a$a;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 100
    .line 101
    invoke-static {v1, v0}, Lcom/mbridge/msdk/videocommon/a;->a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/videocommon/a$a;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_0
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/a$a;->c()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    iget-boolean v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    .line 114
    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 118
    .line 119
    invoke-static {v2, v1}, Lcom/mbridge/msdk/videocommon/a;->b(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 124
    .line 125
    invoke-static {v1, v2}, Lcom/mbridge/msdk/videocommon/a;->b(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/a$a;->b()Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    .line 133
    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewTransparent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    :cond_3
    return-object v0

    .line 140
    :goto_2
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 141
    .line 142
    if-eqz v1, :cond_4

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .line 146
    .line 147
    :cond_4
    const/4 v0, 0x0

    .line 148
    return-object v0
.end method

.method public getAdEvents()Lcom/iab/omid/library/mmadbridge/adsession/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdSession()Lcom/iab/omid/library/mmadbridge/adsession/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCampaign()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getContentLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method protected getH5CloseType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/video/signal/impl/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/impl/a;->l()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method protected getH5DialogRole()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a;->d()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method protected getH5MuteState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/video/signal/impl/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/impl/a;->m()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getIsShowingTransparent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/video/signal/impl/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/impl/a;->p()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getLayoutID()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mbridge_reward_activity_video_templete_transparent"

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findLayout(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-string v0, "mbridge_reward_activity_video_templete"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :goto_1
    return v0
.end method

.method public getVideoEvents()Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Landroid/view/LayoutInflater;

    .line 6
    .line 7
    return-void
.end method

.method public initViews()Z
    .locals 1

    .line 1
    const-string v0, "mbridge_video_templete_progressbar"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findID(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b0:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isHasDestoryed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLoadSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->P:Z

    .line 2
    .line 3
    return v0
.end method

.method public loadModuleDatas()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getH5MuteState()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->E()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getH5CloseType()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    move v10, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v10, v1

    .line 26
    :goto_0
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 27
    .line 28
    iget v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setSoundState(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/download/a;->g()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setPlayURL(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVst()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v2, -0x2

    .line 60
    if-le v1, v2, :cond_2

    .line 61
    .line 62
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVst()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->F()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :goto_1
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v3, 0x5

    .line 84
    if-ne v2, v3, :cond_3

    .line 85
    .line 86
    iget v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    if-le v2, v3, :cond_3

    .line 90
    .line 91
    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a(II)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setVst(I)V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoSkipTime(I)V

    .line 103
    .line 104
    .line 105
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 106
    .line 107
    iget-object v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/setting/c;->h()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCloseAlert(I)V

    .line 114
    .line 115
    .line 116
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 117
    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getBufferTimeout()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setBufferTimeout(I)V

    .line 123
    .line 124
    .line 125
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 126
    .line 127
    new-instance v15, Lcom/mbridge/msdk/video/module/listener/impl/n;

    .line 128
    .line 129
    iget-object v4, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 130
    .line 131
    iget-object v5, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 132
    .line 133
    iget-object v6, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 134
    .line 135
    iget-object v7, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    .line 136
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    iget-object v9, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v12, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$p;

    .line 144
    .line 145
    const/4 v14, 0x0

    .line 146
    invoke-direct {v12, v0, v14}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$p;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    .line 147
    .line 148
    .line 149
    iget-object v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    iget-boolean v11, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 156
    .line 157
    iget-object v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 158
    .line 159
    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/setting/c;->C()I

    .line 160
    .line 161
    .line 162
    move-result v16

    .line 163
    move-object v3, v15

    .line 164
    move/from16 v17, v11

    .line 165
    .line 166
    move v11, v1

    .line 167
    move/from16 v14, v17

    .line 168
    .line 169
    move/from16 v17, v1

    .line 170
    .line 171
    move-object v1, v15

    .line 172
    move/from16 v15, v16

    .line 173
    .line 174
    invoke-direct/range {v3 .. v15}, Lcom/mbridge/msdk/video/module/listener/impl/n;-><init>(Lcom/mbridge/msdk/video/signal/factory/IJSFactory;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;IILcom/mbridge/msdk/video/module/listener/a;IZI)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 181
    .line 182
    iget-boolean v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setShowingTransparent(Z)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 188
    .line 189
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 192
    .line 193
    .line 194
    iget-boolean v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    .line 195
    .line 196
    if-eqz v1, :cond_5

    .line 197
    .line 198
    iget v1, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:I

    .line 199
    .line 200
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->H:I

    .line 201
    .line 202
    if-eq v1, v2, :cond_4

    .line 203
    .line 204
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->I:I

    .line 205
    .line 206
    if-ne v1, v2, :cond_5

    .line 207
    .line 208
    :cond_4
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 209
    .line 210
    iget v3, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->n:I

    .line 211
    .line 212
    iget v4, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->o:I

    .line 213
    .line 214
    invoke-virtual {v2, v1, v3, v4}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setIVRewardEnable(III)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 218
    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getH5DialogRole()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setDialogRole(I)V

    .line 224
    .line 225
    .line 226
    :cond_5
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 227
    .line 228
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 234
    .line 235
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->addOrderViewData(Ljava/util/List;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 241
    .line 242
    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setUnitID(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getCloseBtnTime()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 252
    .line 253
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setCloseDelayTime(I)V

    .line 254
    .line 255
    .line 256
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 257
    .line 258
    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 259
    .line 260
    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->u()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setPlayCloseBtnTm(I)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 268
    .line 269
    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->D()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setVideoInteractiveType(I)V

    .line 276
    .line 277
    .line 278
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 279
    .line 280
    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 281
    .line 282
    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->m()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setEndscreenType(I)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 290
    .line 291
    move/from16 v2, v17

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setVideoSkipTime(I)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 297
    .line 298
    iget-boolean v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setShowingTransparent(Z)V

    .line 301
    .line 302
    .line 303
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 304
    .line 305
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setJSFactory(Lcom/mbridge/msdk/video/signal/factory/b;)V

    .line 308
    .line 309
    .line 310
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 311
    .line 312
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    iget v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    .line 317
    .line 318
    invoke-interface {v1, v2}, Lcom/mbridge/msdk/video/signal/a;->g(I)V

    .line 319
    .line 320
    .line 321
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    const/4 v2, 0x2

    .line 328
    if-ne v1, v2, :cond_6

    .line 329
    .line 330
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 331
    .line 332
    new-instance v11, Lcom/mbridge/msdk/video/module/listener/impl/h;

    .line 333
    .line 334
    iget-object v3, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 335
    .line 336
    iget-object v4, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    .line 337
    .line 338
    iget-object v5, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 339
    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    iget-object v7, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 345
    .line 346
    new-instance v8, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;

    .line 347
    .line 348
    const/4 v2, 0x0

    .line 349
    invoke-direct {v8, v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    .line 350
    .line 351
    .line 352
    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 353
    .line 354
    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    .line 355
    .line 356
    .line 357
    move-result v9

    .line 358
    iget-boolean v10, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 359
    .line 360
    move-object v2, v11

    .line 361
    invoke-direct/range {v2 .. v10}, Lcom/mbridge/msdk/video/module/listener/impl/h;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/videocommon/entity/c;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/listener/a;IZ)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v11}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    .line 365
    .line 366
    .line 367
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 368
    .line 369
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 370
    .line 371
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V

    .line 372
    .line 373
    .line 374
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 375
    .line 376
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showPlayableView()V

    .line 377
    .line 378
    .line 379
    goto :goto_2

    .line 380
    :cond_6
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 381
    .line 382
    new-instance v12, Lcom/mbridge/msdk/video/module/listener/impl/c;

    .line 383
    .line 384
    iget-object v3, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 385
    .line 386
    iget-object v4, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 387
    .line 388
    iget-object v5, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 389
    .line 390
    iget-object v6, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    .line 391
    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    iget-object v8, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 397
    .line 398
    new-instance v9, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;

    .line 399
    .line 400
    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 401
    .line 402
    iget-object v10, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 403
    .line 404
    invoke-direct {v9, v0, v2, v10}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$m;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Landroid/app/Activity;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 405
    .line 406
    .line 407
    iget-object v2, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 408
    .line 409
    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    iget-boolean v11, v0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 414
    .line 415
    move-object v2, v12

    .line 416
    invoke-direct/range {v2 .. v11}, Lcom/mbridge/msdk/video/module/listener/impl/c;-><init>(Lcom/mbridge/msdk/video/signal/factory/IJSFactory;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Lcom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/video/module/listener/a;IZ)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v12}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotifyListener(Lcom/mbridge/msdk/video/module/listener/a;)V

    .line 420
    .line 421
    .line 422
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 423
    .line 424
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 425
    .line 426
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V

    .line 427
    .line 428
    .line 429
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 430
    .line 431
    iget-object v2, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 432
    .line 433
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V

    .line 434
    .line 435
    .line 436
    :goto_2
    iget-boolean v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    .line 437
    .line 438
    if-eqz v1, :cond_7

    .line 439
    .line 440
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 441
    .line 442
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setMBridgeClickMiniCardViewTransparent()V

    .line 443
    .line 444
    .line 445
    :cond_7
    return-void
.end method

.method protected n()Z
    .locals 11

    .line 2
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findWindVaneWebView()Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 3
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findMBridgeVideoView()Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 4
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoLayout(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setIsIV(Z)V

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setUnitId(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Lcom/mbridge/msdk/video/dynview/listener/a;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    iget v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    iget v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->L:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCamPlayOrderCallback(Lcom/mbridge/msdk/video/dynview/listener/a;Ljava/util/List;II)V

    .line 8
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->E:I

    iget v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->F:I

    iget v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->G:I

    iget v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->H:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setNotchPadding(IIII)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->findMBridgeContainerView()Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    move-result-object v5

    iput-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 11
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-eqz v0, :cond_1

    .line 12
    iget v6, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->D:I

    iget v7, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->E:I

    iget v8, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->F:I

    iget v9, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->G:I

    iget v10, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->H:I

    invoke-virtual/range {v5 .. v10}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotchPadding(IIIII)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v0

    const-string v1, "i_l_s_t_r_i"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$d;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$d;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setPlayerViewAttachListener(Lcom/mbridge/msdk/video/module/MBridgeVideoView$u;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$e;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$e;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setIPlayVideoViewLayoutCallBack(Lcom/mbridge/msdk/video/dynview/listener/f;)V

    .line 16
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->initViews()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method protected o()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isShowingAlertView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->checkChinaShowingAlertViewState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isRewardPopViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isShowingAlertView()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isRewardPopViewShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->notifyVideoClose()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const v1, 0x4c531a

    .line 34
    .line 35
    .line 36
    if-eq v0, v1, :cond_2

    .line 37
    .line 38
    :cond_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->i0:Z

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isMiniCardShowing()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->onMiniEndcardBackPress()V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->onBackPress()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_5
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k0:Z

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->onPlayableBackPress()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_6
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->j0:Z

    .line 79
    .line 80
    if-eqz v0, :cond_7

    .line 81
    .line 82
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 83
    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->onEndcardBackPress()V

    .line 87
    .line 88
    .line 89
    :cond_7
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a;->a()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/f;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_8

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/f;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/f;->miniCardShowing()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_8
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lcom/mbridge/msdk/video/signal/b;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/b;->e()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_9
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->canBackPress()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_a

    .line 129
    .line 130
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 131
    .line 132
    if-eqz v0, :cond_b

    .line 133
    .line 134
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 135
    .line 136
    if-nez v1, :cond_b

    .line 137
    .line 138
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l0:Z

    .line 139
    .line 140
    if-nez v1, :cond_b

    .line 141
    .line 142
    const/4 v1, 0x1

    .line 143
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l0:Z

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_a
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    .line 150
    .line 151
    const-string v1, "onBackPressed can\'t excute"

    .line 152
    .line 153
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_b
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreate()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->A()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->l0:Z

    .line 18
    .line 19
    :try_start_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/orglistener/d;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-boolean v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    .line 40
    .line 41
    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 44
    .line 45
    iget-object v6, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget-object v8, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 52
    .line 53
    move-object v1, v0

    .line 54
    invoke-direct/range {v1 .. v8}, Lcom/mbridge/msdk/video/bt/module/orglistener/d;-><init>(Landroid/content/Context;ZLcom/mbridge/msdk/videocommon/setting/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/video/bt/module/orglistener/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_1
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/module/orglistener/c;-><init>(Lcom/mbridge/msdk/video/bt/module/listener/b;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/orglistener/d;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-boolean v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    .line 82
    .line 83
    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 84
    .line 85
    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 86
    .line 87
    iget-object v6, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getInnerPlacementId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    iget-object v8, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 94
    .line 95
    move-object v1, v0

    .line 96
    invoke-direct/range {v1 .. v8}, Lcom/mbridge/msdk/video/bt/module/orglistener/d;-><init>(Landroid/content/Context;ZLcom/mbridge/msdk/videocommon/setting/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/video/bt/module/orglistener/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 100
    .line 101
    :goto_1
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/orglistener/e;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 106
    .line 107
    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/module/orglistener/e;-><init>(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/video/bt/module/orglistener/h;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->registerErrorListener(Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 116
    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a(Lcom/mbridge/msdk/videocommon/setting/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setShowingTransparent()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getLayoutID()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(I)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_3

    .line 132
    .line 133
    const-string v0, "layoutID not found"

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->O:Landroid/view/LayoutInflater;

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Landroid/view/View;

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getContentLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_4

    .line 163
    .line 164
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

    .line 165
    .line 166
    const-string v1, "not found View IDS"

    .line 167
    .line 168
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;->onError(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 172
    .line 173
    if-eqz v0, :cond_5

    .line 174
    .line 175
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_4
    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->P:Z

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v2, "onCreate error"

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_5
    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->C:Z

    .line 8
    .line 9
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onDestroy()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->setChinaDestroy()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->releasePlayer()V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/view/ViewGroup;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->clearWebView()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    iput-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    .line 63
    .line 64
    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a;->release()V

    .line 83
    .line 84
    .line 85
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/setting/h;->g(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_6
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->c0:Z

    .line 99
    .line 100
    if-nez v0, :cond_7

    .line 101
    .line 102
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r()V

    .line 103
    .line 104
    .line 105
    :cond_7
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->f0:Z

    .line 106
    .line 107
    if-nez v0, :cond_8

    .line 108
    .line 109
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s()V

    .line 110
    .line 111
    .line 112
    :cond_8
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m0:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    .line 113
    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->d()V

    .line 117
    .line 118
    .line 119
    :cond_9
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 120
    .line 121
    if-eqz v0, :cond_a

    .line 122
    .line 123
    const-string v0, "omsdk"

    .line 124
    .line 125
    const-string v2, "tc onDestroy"

    .line 126
    .line 127
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->e()V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->c()V

    .line 138
    .line 139
    .line 140
    iput-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 141
    .line 142
    :cond_a
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    .line 143
    .line 144
    if-nez v0, :cond_c

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->isLoadSuccess()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_b

    .line 151
    .line 152
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    .line 153
    .line 154
    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$g;

    .line 155
    .line 156
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$g;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    .line 157
    .line 158
    .line 159
    const-wide/16 v2, 0x64

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_b
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 166
    .line 167
    if-eqz v0, :cond_c

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 170
    .line 171
    .line 172
    :cond_c
    :goto_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->f0:Z

    .line 173
    .line 174
    if-nez v0, :cond_d

    .line 175
    .line 176
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s()V

    .line 177
    .line 178
    .line 179
    :cond_d
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :goto_2
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :goto_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->e0:Z

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/j;->videoOperate(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setOnPause()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->onActivityPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t()V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->isMiniCardShowing()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    sget-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->onActivityResume()V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setOnResume()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->e0:Z

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    sget-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/j;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/j;->videoOperate(I)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->h0:Z

    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :goto_1
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->onActivityStop()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method protected p()V
    .locals 9

    .line 2
    iget-object v7, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 3
    new-instance v8, Lcom/mbridge/msdk/video/signal/factory/b;

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    new-instance v6, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V

    move-object v0, v8

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/mbridge/msdk/video/signal/factory/b;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/mbridge/msdk/video/module/MBridgeVideoView;Lcom/mbridge/msdk/video/module/MBridgeContainerView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/video/signal/a$a;)V

    iput-object v8, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/video/signal/factory/b;->a(Ljava/util/List;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->registerJsFactory(Lcom/mbridge/msdk/video/signal/factory/IJSFactory;)V

    .line 7
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$h;

    invoke-direct {v3, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$h;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    invoke-virtual {v0, v1, v3}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    .line 8
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q()V

    const-string v0, "preload template webview is null or load error"

    const/4 v1, 0x0

    if-eqz v7, :cond_4

    .line 9
    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mbridge_video_templete_webview_parent"

    const-string v6, "id"

    invoke-static {v4, v5, v6}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 10
    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v7, v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->defaultLoad(ILjava/lang/String;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {v7}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mbridge/msdk/video/signal/impl/k;

    if-eqz v0, :cond_2

    .line 14
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v()V

    .line 15
    invoke-virtual {v7}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/video/signal/impl/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/impl/k;->v()I

    move-result v0

    .line 16
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mbridge/msdk/video/signal/f;->readyStatus(I)V

    .line 17
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z()V

    .line 18
    invoke-virtual {v7}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/video/signal/impl/k;

    iget-object v0, v0, Lcom/mbridge/msdk/video/signal/impl/a;->m:Lcom/mbridge/msdk/video/signal/a$a;

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a$a;->onInitSuccess()V

    .line 19
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Z

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->V:I

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->setWebViewFront(I)V

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/a;->b()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 22
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v6}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 23
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 25
    :cond_3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->defaultLoad(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public preload()V
    .locals 0

    .line 1
    return-void
.end method

.method public receiveSuccess()V
    .locals 4

    .line 1
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "receiveSuccess ,start hybrid"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->q0:Ljava/lang/Runnable;

    .line 18
    .line 19
    const-wide/16 v2, 0xfa

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public registerErrorListener(Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

    .line 2
    .line 3
    return-void
.end method

.method public setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->p0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/mbridge/msdk/video/signal/a;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->n0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/mbridge/msdk/video/signal/a;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public setCamPlayOrderCallback(Lcom/mbridge/msdk/video/dynview/listener/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->w:Lcom/mbridge/msdk/video/dynview/listener/a;

    .line 2
    .line 3
    iput p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->x:I

    .line 4
    .line 5
    return-void
.end method

.method public setCampOrderViewData(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;I)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K:Ljava/util/List;

    .line 4
    .line 5
    :cond_0
    iput p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->L:I

    .line 6
    .line 7
    return-void
.end method

.method public setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->h(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/scheme/applet/AppletModelManager;->getInstance()Lcom/mbridge/msdk/scheme/applet/AppletModelManager;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletModelManager;->get(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/scheme/applet/AppletsModel;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isSupportWxScheme()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->r0:Z

    .line 80
    .line 81
    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, "_"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    return-void
.end method

.method public setCampaignDownLoadTask(Lcom/mbridge/msdk/videocommon/download/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->t:Lcom/mbridge/msdk/videocommon/download/a;

    .line 2
    .line 3
    return-void
.end method

.method public setCampaignExpired(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->l:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 31
    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ne v0, p1, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ne v0, p1, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :goto_0
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_1
    return-void
.end method

.method public setDeveloperExtraData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJSFactory(Lcom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 2
    .line 3
    return-void
.end method

.method public setMBridgeTempCallback(Lcom/mbridge/msdk/video/bt/module/listener/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->v:Lcom/mbridge/msdk/video/bt/module/listener/b;

    .line 2
    .line 3
    return-void
.end method

.method public setMatchParent()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    .line 19
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public setMediaPlayerUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setNotchPadding(IIIII)V
    .locals 7

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->D:I

    .line 2
    .line 3
    iput p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->E:I

    .line 4
    .line 5
    iput p3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->F:I

    .line 6
    .line 7
    iput p4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->G:I

    .line 8
    .line 9
    iput p5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->H:I

    .line 10
    .line 11
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mbridge/msdk/foundation/tools/b0;->a(IIIII)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/signal/a;->a(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "oncutoutfetched"

    .line 75
    .line 76
    invoke-virtual {v0, v1, v3, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 80
    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setNotchPadding(IIII)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    move v2, p1

    .line 91
    move v3, p2

    .line 92
    move v4, p3

    .line 93
    move v5, p4

    .line 94
    move v6, p5

    .line 95
    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->setNotchPadding(IIIII)V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method

.method public setShowRewardListener(Lcom/mbridge/msdk/video/bt/module/orglistener/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->u:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 2
    .line 3
    return-void
.end method

.method public setShowingTransparent()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getIsShowingTransparent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->g0:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "mbridge_reward_theme"

    .line 14
    .line 15
    const-string v2, "style"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->o0:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z:Lcom/mbridge/msdk/video/signal/factory/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/factory/b;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/mbridge/msdk/video/signal/a;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public setWebViewFront(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->V:I

    .line 2
    .line 3
    return-void
.end method

.method public superDefaultLoad(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a0:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->Q:Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-interface {p1, p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$k;->a(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/16 p2, 0x8

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method protected x()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->N:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setMatchParent()V

    :cond_0
    return-void
.end method

.method protected z()V
    .locals 7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 4
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getIsShowingTransparent()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->i(Landroid/content/Context;)I

    move-result v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/t0;->h(Landroid/content/Context;)I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/e;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;)I

    move-result v4

    if-ne v0, v2, :cond_0

    add-int/2addr v1, v4

    goto :goto_0

    :cond_0
    add-int/2addr v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    move-result v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/t0;->f(Landroid/content/Context;)I

    move-result v3

    .line 11
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->b()I

    move-result v4

    .line 12
    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    move v4, v0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/g;

    move-result-object v5

    invoke-interface {v5, v0, v4, v1, v3}, Lcom/mbridge/msdk/video/signal/g;->a(IIII)V

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/t0;->d(Landroid/content/Context;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    if-eqz v1, :cond_4

    .line 17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    const-string v3, "name"

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/entity/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v3, "amount"

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/entity/c;->a()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string v3, "id"

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->i:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v3, "userId"

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string v3, "reward"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v1, "playVideoMute"

    iget v3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    const-string v1, "extra"

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    .line 25
    :goto_1
    :try_start_2
    sget-object v3, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 26
    :goto_2
    sget-object v3, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 29
    const-string v3, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v2

    const-string v3, "2000133"

    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2, v3, v4, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 31
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mbridge/msdk/video/signal/g;->a(Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v2, "oncutoutfetched"

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/mbridge/msdk/video/signal/a;->b(Z)V

    .line 34
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->setChinaCallBackStatus(Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 36
    :cond_5
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->loadModuleDatas()V

    .line 37
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 38
    :goto_4
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    return-void
.end method
