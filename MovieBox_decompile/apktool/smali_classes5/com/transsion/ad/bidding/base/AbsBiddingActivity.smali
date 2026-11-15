.class public abstract Lcom/transsion/ad/bidding/base/AbsBiddingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "source.java"

# interfaces
.implements Lcom/transsion/ad/strategy/t$a;
.implements Lxh/b;
.implements Lcom/transsion/player/orplayer/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0011\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u000f\u0010\u000c\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0006J\u0019\u0010\u000f\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0006J\u000f\u0010\u0012\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0006J\u000f\u0010\u0013\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0006J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0006J\u000f\u0010\u0018\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0006J\u000f\u0010\u0019\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0006J\u000f\u0010\u001a\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0006J\u000f\u0010\u001b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0006J\u0019\u0010\u001e\u001a\u00020\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008 \u0010\u0006J\u000f\u0010!\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008!\u0010\u0006J\u0011\u0010#\u001a\u0004\u0018\u00010\"H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J!\u0010,\u001a\u00020\n2\u0006\u0010)\u001a\u00020(2\u0008\u0010+\u001a\u0004\u0018\u00010*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0019\u0010.\u001a\u00020\n2\u0008\u0010+\u001a\u0004\u0018\u00010*H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00080\u0010\u0006J\u0019\u00101\u001a\u00020\n2\u0008\u0010+\u001a\u0004\u0018\u00010*H\u0016\u00a2\u0006\u0004\u00081\u0010/J\u0019\u00102\u001a\u00020\n2\u0008\u0010+\u001a\u0004\u0018\u00010*H\u0016\u00a2\u0006\u0004\u00082\u0010/J\u0019\u00103\u001a\u00020\n2\u0008\u0010+\u001a\u0004\u0018\u00010*H\u0016\u00a2\u0006\u0004\u00083\u0010/J\u000f\u00104\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00084\u00105J\u0011\u00106\u001a\u0004\u0018\u00010\"H&\u00a2\u0006\u0004\u00086\u0010$J\u000f\u00107\u001a\u00020\nH&\u00a2\u0006\u0004\u00087\u0010\u0006J\u0011\u00109\u001a\u0004\u0018\u000108H&\u00a2\u0006\u0004\u00089\u0010:J\u0011\u0010;\u001a\u0004\u0018\u000108H&\u00a2\u0006\u0004\u0008;\u0010:J\u000f\u0010=\u001a\u00020<H&\u00a2\u0006\u0004\u0008=\u0010>J\u0017\u0010@\u001a\u00020\n2\u0006\u0010?\u001a\u00020<H&\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010B\u001a\u00020\nH&\u00a2\u0006\u0004\u0008B\u0010\u0006J\u0011\u0010C\u001a\u0004\u0018\u00010\"H&\u00a2\u0006\u0004\u0008C\u0010$J\u0011\u0010D\u001a\u0004\u0018\u00010\"H&\u00a2\u0006\u0004\u0008D\u0010$J\u0011\u0010E\u001a\u0004\u0018\u00010\"H&\u00a2\u0006\u0004\u0008E\u0010$J-\u0010J\u001a\u00020\n2\u0008\u0010G\u001a\u0004\u0018\u00010F2\u0008\u0010H\u001a\u0004\u0018\u00010<2\u0008\u0010I\u001a\u0004\u0018\u00010<H\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u000f\u0010L\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008L\u0010\u0016J\u000f\u0010M\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008M\u0010\u0016J\u0017\u0010P\u001a\u00020\n2\u0006\u0010O\u001a\u00020NH\u0016\u00a2\u0006\u0004\u0008P\u0010QJ\r\u0010R\u001a\u00020\n\u00a2\u0006\u0004\u0008R\u0010\u0006J\r\u0010S\u001a\u00020\n\u00a2\u0006\u0004\u0008S\u0010\u0006J\u000f\u0010T\u001a\u00020\nH\u0017\u00a2\u0006\u0004\u0008T\u0010\u0006J\u0015\u0010V\u001a\u00020\n2\u0006\u0010U\u001a\u00020\u0014\u00a2\u0006\u0004\u0008V\u0010\'J\r\u0010W\u001a\u00020<\u00a2\u0006\u0004\u0008W\u0010>J\r\u0010X\u001a\u00020<\u00a2\u0006\u0004\u0008X\u0010>J\u000f\u0010Z\u001a\u0004\u0018\u00010Y\u00a2\u0006\u0004\u0008Z\u0010[J\u000f\u0010]\u001a\u0004\u0018\u00010\\\u00a2\u0006\u0004\u0008]\u0010^J\r\u0010_\u001a\u00020\n\u00a2\u0006\u0004\u0008_\u0010\u0006J\r\u0010`\u001a\u00020\n\u00a2\u0006\u0004\u0008`\u0010\u0006J\r\u0010a\u001a\u00020\n\u00a2\u0006\u0004\u0008a\u0010\u0006J\r\u0010b\u001a\u00020\n\u00a2\u0006\u0004\u0008b\u0010\u0006R\u0018\u0010e\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010dR\u0018\u0010i\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u0018\u0010l\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0016\u0010o\u001a\u00020<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0018\u0010r\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0016\u0010v\u001a\u00020s8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u0016\u0010z\u001a\u00020w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0016\u0010|\u001a\u00020w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010yR\u0016\u0010~\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010}R\u0017\u0010\u0082\u0001\u001a\u00020\u007f8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0018\u0010\u0084\u0001\u001a\u00020<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0083\u0001\u0010nR\u001b\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u0018\u0010\u0089\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0088\u0001\u0010}R\u0018\u0010\u008d\u0001\u001a\u00030\u008a\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001\u00a8\u0006\u008e\u0001"
    }
    d2 = {
        "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/transsion/ad/strategy/t$a;",
        "Lxh/b;",
        "Lcom/transsion/player/orplayer/e;",
        "<init>",
        "()V",
        "Lcom/transsion/player/orplayer/f;",
        "n0",
        "()Lcom/transsion/player/orplayer/f;",
        "",
        "z0",
        "W",
        "",
        "errorMsg",
        "u0",
        "(Ljava/lang/String;)V",
        "q0",
        "s0",
        "F0",
        "",
        "A0",
        "()Z",
        "H0",
        "E0",
        "x0",
        "J0",
        "w0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "onDestroy",
        "Landroid/view/View;",
        "getVisibilityView",
        "()Landroid/view/View;",
        "isVisible",
        "onVisibilityChanged",
        "(Z)V",
        "Lcom/transsion/player/orplayer/PlayError;",
        "errorInfo",
        "Lgn/e;",
        "mediaSource",
        "onPlayError",
        "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V",
        "onPrepare",
        "(Lgn/e;)V",
        "onRenderFirstFrame",
        "onVideoPause",
        "onVideoStart",
        "onCompletion",
        "getSceneId",
        "()Ljava/lang/String;",
        "o0",
        "D0",
        "Landroid/widget/FrameLayout;",
        "j0",
        "()Landroid/widget/FrameLayout;",
        "p0",
        "",
        "g0",
        "()I",
        "i",
        "y0",
        "(I)V",
        "r0",
        "c0",
        "k0",
        "l0",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "imageView",
        "width",
        "height",
        "t0",
        "(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "i0",
        "m0",
        "Lcom/gyf/immersionbar/ImmersionBar;",
        "with",
        "L0",
        "(Lcom/gyf/immersionbar/ImmersionBar;)V",
        "b0",
        "K0",
        "B0",
        "isShow",
        "C0",
        "h0",
        "f0",
        "Lcom/transsion/ad/monopoly/model/AdPlans;",
        "e0",
        "()Lcom/transsion/ad/monopoly/model/AdPlans;",
        "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "d0",
        "()Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "X",
        "a0",
        "V",
        "Y",
        "a",
        "Lcom/transsion/ad/monopoly/model/AdPlans;",
        "mAdPlan",
        "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "b",
        "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "maxEcpmObject",
        "c",
        "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "mAdMaterialList",
        "d",
        "I",
        "mAppLayoutId",
        "e",
        "Ljava/lang/String;",
        "mSceneId",
        "",
        "f",
        "J",
        "displayTimestamp",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "g",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isReportAdDisplay",
        "h",
        "isAdMaterialShow",
        "Z",
        "mIsMute",
        "Landroid/os/Handler;",
        "j",
        "Landroid/os/Handler;",
        "mHandler",
        "k",
        "countDownTimes",
        "l",
        "Lcom/transsion/player/orplayer/f;",
        "mOrPlayer",
        "m",
        "isInScreen",
        "Ljava/lang/Runnable;",
        "n",
        "Ljava/lang/Runnable;",
        "countdownRunnable",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private a:Lcom/transsion/ad/monopoly/model/AdPlans;

.field private b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private c:Lcom/transsion/ad/monopoly/model/AdMaterialList;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Z

.field private final j:Landroid/os/Handler;

.field private k:I

.field private l:Lcom/transsion/player/orplayer/f;

.field private m:Z

.field private final n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->i:Z

    .line 21
    .line 22
    new-instance v0, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance v0, Lcom/transsion/ad/bidding/base/l;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/base/l;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n:Ljava/lang/Runnable;

    .line 39
    .line 40
    return-void
.end method

.method private final A0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->i:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->i:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n0()Lcom/transsion/player/orplayer/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->i:Z

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->setMute(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->i:Z

    .line 19
    .line 20
    return v0
.end method

.method private final E0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j0()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    new-instance v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_4

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    new-instance v5, Ljava/io/File;

    .line 44
    .line 45
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v3, 0x0

    .line 56
    :goto_0
    if-eqz v3, :cond_1

    .line 57
    .line 58
    new-instance v4, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-instance v4, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;

    .line 72
    .line 73
    invoke-direct {v4, p0, v1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getWidth()Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getHeight()Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-nez v3, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getWidth()Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getHeight()Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {p0, v1, v3, v2}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->t0(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->t0(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    const-string v2, "\u56fe\u7247\u5e7f\u544a\u7d20\u6750\u4e3a\u7a7a"

    .line 129
    .line 130
    invoke-direct {p0, v2}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->u0(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    const-string v0, "\u56fe\u7247\u5e7f\u544a\u5bb9\u5668\u4e3a\u7a7a"

    .line 141
    .line 142
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->u0(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_3
    return-void
.end method

.method private final F0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const-string v1, "TextAdMaterial"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->E0()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->x0()V

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j0()Landroid/widget/FrameLayout;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    new-instance v7, Lci/g;

    .line 35
    .line 36
    new-instance v4, Lcom/transsion/ad/bidding/base/m;

    .line 37
    .line 38
    invoke-direct {v4, p0}, Lcom/transsion/ad/bidding/base/m;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)V

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    move-object v1, v7

    .line 46
    invoke-direct/range {v1 .. v6}, Lci/g;-><init>(JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->H0()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->c0()Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    sget-object v1, Lcom/transsion/ad/strategy/h;->a:Lcom/transsion/ad/strategy/h;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/transsion/ad/strategy/h;->a(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method private static final G0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->V()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final H0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->p0()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    const-string v2, "TextAdMaterial"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    sget v2, Lcom/transsion/ad/R$mipmap;->ad_volumeoff:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 41
    .line 42
    .line 43
    const/4 v2, -0x1

    .line 44
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/transsion/ad/bidding/base/o;

    .line 48
    .line 49
    invoke-direct {v2, p0, v1}, Lcom/transsion/ad/bidding/base/o;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method private static final I0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->A0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget p0, Lcom/transsion/ad/R$mipmap;->ad_volumeoff:I

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget p0, Lcom/transsion/ad/R$mipmap;->ad_volumeon:I

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private final J0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->w0()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static synthetic O(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->G0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->Z(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->I0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->v0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic S(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic U(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->u0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final W()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "action_close"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "ad_max_ecpm_object"

    .line 17
    .line 18
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lr1/a;->d(Landroid/content/Intent;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private static final Z(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->y0(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->g0()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "countdownRunnable() --> times = "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " --> i = "

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v8, 0x4

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v4, 0x3

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    move-object v3, p0

    .line 43
    invoke-static/range {v3 .. v9}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->r0()V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    .line 54
    .line 55
    add-int/lit8 v0, v0, -0x1

    .line 56
    .line 57
    iput v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->J0()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private final n0()Lcom/transsion/player/orplayer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->l:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-object v0
.end method

.method private final q0()V
    .locals 10

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "scene_id"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto/16 :goto_a

    .line 19
    .line 20
    :cond_0
    move-object v0, v1

    .line 21
    :goto_0
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v3, "app_layout_id"

    .line 31
    .line 32
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v0, v2

    .line 38
    :goto_1
    iput v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_2

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    goto :goto_6

    .line 53
    :cond_2
    move-object v0, v1

    .line 54
    :goto_2
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_5

    .line 61
    .line 62
    check-cast v3, Ljava/lang/Iterable;

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    if-eqz v5, :cond_3

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    goto :goto_4

    .line 95
    :cond_3
    move-object v5, v1

    .line 96
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v7, "\u5904\u7406 FM Parcelable \u5f02\u5e38 --> Bundle key = "

    .line 102
    .line 103
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v4, ", valueClass = "

    .line 110
    .line 111
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    const-string v5, "parcelable"

    .line 122
    .line 123
    const/4 v6, 0x6

    .line 124
    invoke-virtual {p0, v6, v4, v5, v2}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->onLog(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_5
    move-object v0, v1

    .line 132
    :goto_5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    .line 134
    .line 135
    goto :goto_7

    .line 136
    :goto_6
    :try_start_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 137
    .line 138
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :goto_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .line 147
    const/16 v3, 0x21

    .line 148
    .line 149
    const-string v4, "ad_max_ecpm_object"

    .line 150
    .line 151
    if-lt v0, v3, :cond_7

    .line 152
    .line 153
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    const-class v3, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 160
    .line 161
    invoke-static {v0, v4, v3}, Lcom/cloud/hisavana/sdk/common/activity/c;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_6
    move-object v0, v1

    .line 169
    goto :goto_8

    .line 170
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 181
    .line 182
    :goto_8
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 183
    .line 184
    if-eqz v0, :cond_8

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    goto :goto_9

    .line 191
    :cond_8
    move-object v0, v1

    .line 192
    :goto_9
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->a:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 193
    .line 194
    if-eqz v0, :cond_a

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-eqz v0, :cond_a

    .line 201
    .line 202
    check-cast v0, Ljava/util/Collection;

    .line 203
    .line 204
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    const/4 v3, 0x1

    .line 209
    xor-int/2addr v0, v3

    .line 210
    if-ne v0, v3, :cond_a

    .line 211
    .line 212
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->a:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 213
    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-eqz v0, :cond_9

    .line 221
    .line 222
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    move-object v1, v0

    .line 227
    check-cast v1, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 228
    .line 229
    :cond_9
    iput-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->c:Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 230
    .line 231
    :cond_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 232
    .line 233
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    goto :goto_b

    .line 238
    :goto_a
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 239
    .line 240
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    :goto_b
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    if-nez v0, :cond_b

    .line 253
    .line 254
    goto :goto_c

    .line 255
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v2, "initExtData() --> it = "

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    const/16 v8, 0xc

    .line 277
    .line 278
    const/4 v9, 0x0

    .line 279
    const/4 v4, 0x6

    .line 280
    const/4 v6, 0x0

    .line 281
    const/4 v7, 0x0

    .line 282
    move-object v3, p0

    .line 283
    invoke-static/range {v3 .. v9}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :goto_c
    return-void
.end method

.method private final s0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$a;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$a;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->i(Landroidx/lifecycle/u;Landroidx/activity/u;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final u0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j0()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/transsion/ad/bidding/base/n;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/n;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private static final v0(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "show_error"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setErrorMsg(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string p1, "ad_max_ecpm_object"

    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v0}, Lr1/a;->d(Landroid/content/Intent;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b0()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final w0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final x0()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j0()Landroid/widget/FrameLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    new-instance v2, Landroid/view/TextureView;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/transsion/player/orplayer/f$a;

    .line 15
    .line 16
    invoke-direct {v3, v0}, Lcom/transsion/player/orplayer/f$a;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    new-instance v15, Lhn/d;

    .line 20
    .line 21
    move-object v4, v15

    .line 22
    const v23, 0x16fff

    .line 23
    .line 24
    .line 25
    const/16 v24, 0x0

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x0

    .line 35
    const-wide/16 v13, 0x0

    .line 36
    .line 37
    const/16 v16, 0x0

    .line 38
    .line 39
    move-object/from16 v25, v15

    .line 40
    .line 41
    move/from16 v15, v16

    .line 42
    .line 43
    const/16 v17, 0x0

    .line 44
    .line 45
    const/16 v18, 0x1

    .line 46
    .line 47
    const/16 v19, 0x0

    .line 48
    .line 49
    const/16 v20, 0x0

    .line 50
    .line 51
    const/16 v21, 0x0

    .line 52
    .line 53
    const/16 v22, 0x0

    .line 54
    .line 55
    invoke-direct/range {v4 .. v24}, Lhn/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    .line 57
    .line 58
    move-object/from16 v4, v25

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Lcom/transsion/player/orplayer/f$a;->b(Lhn/d;)Lcom/transsion/player/orplayer/f$a;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lcom/transsion/player/orplayer/f$a;->a()Lcom/transsion/player/orplayer/f;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->m0()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-interface {v3, v4}, Lcom/transsion/player/orplayer/f;->setMute(Z)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v3, v2}, Lcom/transsion/player/orplayer/f;->setTextureView(Landroid/view/TextureView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->i0()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-interface {v3, v4}, Lcom/transsion/player/orplayer/f;->setLooping(Z)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v3, v0}, Lcom/transsion/player/orplayer/f;->setPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 86
    .line 87
    .line 88
    iput-object v3, v0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->l:Lcom/transsion/player/orplayer/f;

    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_0

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_0

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    const/4 v3, 0x0

    .line 108
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    const-string v4, ""

    .line 113
    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    if-eqz v3, :cond_2

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-eqz v3, :cond_2

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getUrl()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-nez v3, :cond_1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    move-object v7, v3

    .line 136
    goto :goto_2

    .line 137
    :cond_2
    :goto_1
    move-object v7, v4

    .line 138
    goto :goto_2

    .line 139
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d0()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-eqz v3, :cond_2

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    if-eqz v3, :cond_2

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-nez v3, :cond_1

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :goto_2
    iget-object v3, v0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->l:Lcom/transsion/player/orplayer/f;

    .line 159
    .line 160
    if-eqz v3, :cond_4

    .line 161
    .line 162
    new-instance v4, Lgn/e;

    .line 163
    .line 164
    const/16 v11, 0x1c

    .line 165
    .line 166
    const/4 v12, 0x0

    .line 167
    const/4 v8, 0x0

    .line 168
    const/4 v9, 0x0

    .line 169
    const/4 v10, 0x0

    .line 170
    move-object v5, v4

    .line 171
    move-object v6, v7

    .line 172
    invoke-direct/range {v5 .. v12}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v3, v4}, Lcom/transsion/player/orplayer/f;->setDataSource(Lgn/e;)V

    .line 176
    .line 177
    .line 178
    :cond_4
    iget-object v3, v0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->l:Lcom/transsion/player/orplayer/f;

    .line 179
    .line 180
    if-eqz v3, :cond_5

    .line 181
    .line 182
    invoke-interface {v3}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 183
    .line 184
    .line 185
    :cond_5
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 186
    .line 187
    const/4 v4, -0x1

    .line 188
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_6
    const-string v1, "\u89c6\u9891\u5e7f\u544a\u5bb9\u5668\u4e3a\u7a7a"

    .line 196
    .line 197
    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->u0(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :goto_3
    return-void
.end method

.method private final z0()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v4, "action_display_timestamp"

    .line 16
    .line 17
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "ad_max_ecpm_object"

    .line 25
    .line 26
    iget-object v4, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    iget-wide v6, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f:J

    .line 36
    .line 37
    sub-long/2addr v4, v6

    .line 38
    const-string v1, "display_timestamp"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Lr1/a;->d(Landroid/content/Intent;)Z

    .line 48
    .line 49
    .line 50
    iput-wide v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f:J

    .line 51
    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public B0()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final C0(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n0()Lcom/transsion/player/orplayer/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->w0()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n0()Lcom/transsion/player/orplayer/f;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->J0()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public abstract D0()V
.end method

.method public final K0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ad/MBAd;->b()Lcom/transsion/ad/MBAd$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ad/MBAd$a;->d()Lrh/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->getSceneId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Lrh/a;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public L0(Lcom/gyf/immersionbar/ImmersionBar;)V
    .locals 1

    .line 1
    const-string v0, "with"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final V()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "action_click"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "ad_max_ecpm_object"

    .line 17
    .line 18
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lr1/a;->d(Landroid/content/Intent;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final X()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "action_resume"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "ad_max_ecpm_object"

    .line 17
    .line 18
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lr1/a;->d(Landroid/content/Intent;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final Y()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "action_rewarded"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "ad_max_ecpm_object"

    .line 17
    .line 18
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lr1/a;->d(Landroid/content/Intent;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final a0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "action_display"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "ad_max_ecpm_object"

    .line 17
    .line 18
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lr1/a;->d(Landroid/content/Intent;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final b0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract c0()Landroid/view/View;
.end method

.method public final d0()Lcom/transsion/ad/monopoly/model/AdMaterialList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->c:Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e0()Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->a:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract g0()I
.end method

.method public getClassTag()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lxh/b$a;->a(Lxh/b;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getVisibilityThreshold()D
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/ad/strategy/t$a$a;->a(Lcom/transsion/ad/strategy/t$a;)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getVisibilityView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j0()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final h0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->getSceneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->e(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public i0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public initPlayer()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->b(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract j0()Landroid/widget/FrameLayout;
.end method

.method public abstract k0()Landroid/view/View;
.end method

.method public abstract l0()Landroid/view/View;
.end method

.method public m0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public abstract o0()Landroid/view/View;
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->c(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onBufferedPosition(JLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->d(Lcom/transsion/player/orplayer/e;JLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCompletion(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->e(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->B0()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarAlpha(F)Lcom/gyf/immersionbar/ImmersionBar;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->L0(Lcom/gyf/immersionbar/ImmersionBar;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->o0()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, -0x1

    .line 36
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->q0()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->e0()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->getSceneId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    const/4 v5, 0x4

    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v1, 0x3

    .line 65
    const-string v2, "onCreate() --> \u5f00\u59cb\u5c55\u793a\u5e7f\u544a"

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    move-object v0, p0

    .line 70
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->g0()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k:I

    .line 78
    .line 79
    sget-object p1, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Lcom/transsion/ad/strategy/t;->j(Lcom/transsion/ad/strategy/t$a;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->D0()V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->F0()V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->s0()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/4 v0, 0x1

    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    const-string v1, "is_show_member_btn"

    .line 101
    .line 102
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    const/4 p1, 0x0

    .line 112
    :goto_0
    if-eqz p1, :cond_3

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    xor-int/2addr p1, v0

    .line 119
    if-ne p1, v0, :cond_3

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->k0()Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const/16 v0, 0x8

    .line 126
    .line 127
    if-eqz p1, :cond_1

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->l0()Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_3

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    const-string p1, "onCreate() --> \u5f00\u59cb\u5c55\u793a\u5e7f\u544a --> getAdPlan() == null || getSceneId() is empty"

    .line 143
    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->u0(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->j:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/transsion/ad/strategy/t;->v(Lcom/transsion/ad/strategy/t$a;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n0()Lcom/transsion/player/orplayer/f;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->release()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->z0()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->W()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->g(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->h(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoadingBegin(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->i(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->k(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoadingProgress(IFLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->m(Lcom/transsion/player/orplayer/e;IFLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lxh/b$a;->b(Lxh/b;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoopingStart()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->o(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->p(Lcom/transsion/player/orplayer/e;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V
    .locals 1

    .line 1
    const-string v0, "errorInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/e$a;->q(Lcom/transsion/player/orplayer/e;Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->u0(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onPlayerRelease(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->t(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayerReset()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->v(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPrepare(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->w(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n0()Lcom/transsion/player/orplayer/f;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onProgress(JLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->y(Lcom/transsion/player/orplayer/e;JLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->A(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->e:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/c;->d(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/16 v6, 0xd

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const-string v3, "onResume() --> \u91cd\u65b0\u8fdb\u5165\u9875\u9762\u7684\u65f6\u5019\u9700\u8981\u6821\u9a8c\u4e00\u4e0b\uff0cisVipSkipAd == true"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    move-object v1, p0

    .line 23
    invoke-static/range {v1 .. v7}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->B(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->C(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksChange(Lqn/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->D(Lcom/transsion/player/orplayer/e;Lqn/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->E(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVideoPause(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->F(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/e$a;->H(Lcom/transsion/player/orplayer/e;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVideoStart(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->I(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->X()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->m:Z

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f:J

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->f:J

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->J0()V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n0()Lcom/transsion/player/orplayer/f;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n0()Lcom/transsion/player/orplayer/f;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_5

    .line 59
    .line 60
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->a0()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->n0()Lcom/transsion/player/orplayer/f;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->z0()V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->w0()V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_0
    return-void
.end method

.method public abstract p0()Landroid/widget/FrameLayout;
.end method

.method public abstract r0()V
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->K(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public t0(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract y0(I)V
.end method
