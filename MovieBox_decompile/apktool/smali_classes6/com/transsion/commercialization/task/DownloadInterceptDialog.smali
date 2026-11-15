.class public final Lcom/transsion/commercialization/task/DownloadInterceptDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/commercialization/task/DownloadInterceptDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0095\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0007*\u0001w\u0018\u0000 {2\u00020\u0001:\u0001|B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u0019\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0003J\u0019\u0010\u001c\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0019J\u000f\u0010\u001d\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0003J\u0019\u0010\u001e\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0019J\u000f\u0010\u001f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0003J\u000f\u0010 \u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008 \u0010\u0003J\u000f\u0010!\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0003J\u000f\u0010#\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0003J\u000f\u0010$\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008%\u0010\u0003J\u000f\u0010\'\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008)\u0010(J\u000f\u0010*\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0003J\u0019\u0010-\u001a\u00020\u00062\u0008\u0010,\u001a\u0004\u0018\u00010+H\u0016\u00a2\u0006\u0004\u0008-\u0010.J!\u0010/\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010,\u001a\u0004\u0018\u00010+H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00081\u0010\u0003J\u0017\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u000202H\u0016\u00a2\u0006\u0004\u00084\u00105R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00020;0:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR&\u0010F\u001a\u0012\u0012\u0004\u0012\u00020&\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0016\u0010I\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010S\u001a\u00020N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010PR\u001b\u0010W\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010(R\u0016\u0010Y\u001a\u00020N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010PR\u0016\u0010[\u001a\u00020N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010PR\u0016\u0010]\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010HR\u001b\u0010`\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010U\u001a\u0004\u0008_\u0010(R\u0014\u0010b\u001a\u00020N8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008a\u0010PR\u0014\u0010d\u001a\u00020N8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008c\u0010PR\u0016\u0010h\u001a\u00020e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0018\u0010l\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0018\u0010p\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010oR\u0016\u0010r\u001a\u00020N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010PR\u0014\u0010v\u001a\u00020s8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u0014\u0010z\u001a\u00020w8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008x\u0010y\u00a8\u0006}"
    }
    d2 = {
        "Lcom/transsion/commercialization/task/DownloadInterceptDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "",
        "g1",
        "(Landroid/view/View;)V",
        "f1",
        "w1",
        "m1",
        "u1",
        "loadData",
        "G1",
        "W0",
        "B1",
        "Z0",
        "t1",
        "s1",
        "D1",
        "j1",
        "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "maxEcpmObject",
        "F1",
        "(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V",
        "Y0",
        "i1",
        "E1",
        "X0",
        "q1",
        "r1",
        "n1",
        "l1",
        "o1",
        "p1",
        "v1",
        "h1",
        "",
        "d1",
        "()I",
        "a1",
        "C1",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroy",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "c",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "adManager",
        "",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;",
        "d",
        "Ljava/util/List;",
        "iconList",
        "Lsj/d;",
        "e",
        "Lsj/d;",
        "bind",
        "Lkotlin/Function1;",
        "f",
        "Lkotlin/jvm/functions/Function1;",
        "mCallback",
        "g",
        "I",
        "finishTaskType",
        "Lcom/transsion/commercialization/task/n;",
        "h",
        "Lcom/transsion/commercialization/task/n;",
        "mDownloadAdapter",
        "",
        "i",
        "Z",
        "isLoading",
        "j",
        "mIsTask",
        "k",
        "Lkotlin/Lazy;",
        "b1",
        "iconFetchCount",
        "l",
        "isRewardedAdShow",
        "m",
        "shouldCheckIconAd",
        "n",
        "curShowErrorTimes",
        "o",
        "c1",
        "maxShowErrorTimes",
        "p",
        "isRewardedOff",
        "q",
        "isRewardInterstitialOff",
        "",
        "r",
        "Ljava/lang/String;",
        "interceptSceneId",
        "Lcom/transsion/ad/bidding/video/BiddingVideoManager;",
        "s",
        "Lcom/transsion/ad/bidding/video/BiddingVideoManager;",
        "rewardedAdManager",
        "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;",
        "t",
        "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;",
        "interstitialAdManager",
        "u",
        "isRewarded",
        "Loh/a;",
        "v",
        "Loh/a;",
        "listener",
        "com/transsion/commercialization/task/DownloadInterceptDialog$d",
        "w",
        "Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;",
        "rewardInterceptListener",
        "x",
        "a",
        "Commercialization_psRelease"
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


# static fields
.field public static final x:Lcom/transsion/commercialization/task/DownloadInterceptDialog$a;


# instance fields
.field private c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

.field private final d:Ljava/util/List;

.field private e:Lsj/d;

.field private f:Lkotlin/jvm/functions/Function1;

.field private g:I

.field private h:Lcom/transsion/commercialization/task/n;

.field private i:Z

.field private j:Z

.field private final k:Lkotlin/Lazy;

.field private l:Z

.field private m:Z

.field private n:I

.field private final o:Lkotlin/Lazy;

.field private final p:Z

.field private final q:Z

.field private r:Ljava/lang/String;

.field private s:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

.field private t:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private u:Z

.field private final v:Loh/a;

.field private final w:Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->x:Lcom/transsion/commercialization/task/DownloadInterceptDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcom/transsion/commercialization/R$layout;->dialog_download_intercept_v2_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->d:Ljava/util/List;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->g:I

    .line 22
    .line 23
    new-instance v1, Lcom/transsion/commercialization/task/g;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/g;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->k:Lkotlin/Lazy;

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->m:Z

    .line 35
    .line 36
    new-instance v1, Lcom/transsion/commercialization/task/h;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/h;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->o:Lkotlin/Lazy;

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->p:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->q:Z

    .line 50
    .line 51
    const-string v0, ""

    .line 52
    .line 53
    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->r:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$c;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$c;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->v:Loh/a;

    .line 61
    .line 62
    new-instance v0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->w:Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;

    .line 68
    .line 69
    return-void
.end method

.method public static final synthetic A0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->t:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final A1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->D1()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/transsion/commercialization/pslink/f;->a:Lcom/transsion/commercialization/pslink/f;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/commercialization/pslink/f;->b()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic B0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Loh/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->v:Loh/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private final B1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->d:Ljava/util/List;

    .line 21
    .line 22
    check-cast v1, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->d:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->d:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->u1()V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->h:Lcom/transsion/commercialization/task/n;

    .line 55
    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-boolean v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->m:Z

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    iget-object v1, v1, Lsj/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-boolean v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->p:Z

    .line 78
    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->Z0()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    sget-object v1, Lfh/b;->a:Lfh/b$a;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 88
    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    iget-object v3, v3, Lsj/d;->j:Lsj/h;

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    iget-object v3, v3, Lsj/h;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 96
    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    sget v4, Lcom/tn/lib/widget/R$string;->no_more_ad_tips:I

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    goto :goto_0

    .line 112
    :cond_5
    const/4 v3, 0x0

    .line 113
    :goto_0
    invoke-virtual {v1, v3}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_1
    iput-boolean v2, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->m:Z

    .line 117
    .line 118
    iput-boolean v2, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->i:Z

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->W0()V

    .line 121
    .line 122
    .line 123
    sget-object v1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, " --> show() --> \u7ec4\u88c5\u6570\u636e ..... --> excessiveList.size = "

    .line 142
    .line 143
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v0, " \u4e00\u6b21\u6570\u636e\u52a0\u8f7d\u7ed3\u675f -- isLoading = false"

    .line 150
    .line 151
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v1, v0}, Lcom/transsion/commercialization/pslink/a;->b(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_7
    :goto_2
    return-void
.end method

.method public static final synthetic C0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method private final C1()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Lfh/b;->a:Lfh/b$a;

    .line 7
    .line 8
    sget v2, Lcom/transsion/commercialization/R$layout;->download_toast_layout:I

    .line 9
    .line 10
    const/high16 v0, 0x42840000    # 66.0f

    .line 11
    .line 12
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    const/16 v7, 0x8

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const-string v3, "+1 download granted"

    .line 20
    .line 21
    const/16 v4, 0x50

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static/range {v1 .. v8}, Lfh/b$a;->h(Lfh/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic D0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->w:Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;

    .line 2
    .line 3
    return-object p0
.end method

.method private final D1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->r:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "DownloadInterceptRewarded"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->j1()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "DownloadInterceptInterstitial"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->i1()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic E0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->s:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    return-object p0
.end method

.method private final E1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "DownloadInterceptInterstitial"

    .line 8
    .line 9
    iput-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->r:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v5, Lcom/transsion/commercialization/task/DownloadInterceptDialog$showInterstitialAd$1$1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v5, p0, v0, p1, v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$showInterstitialAd$1$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/content/Context;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public static final synthetic F0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->h1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final F1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "DownloadInterceptRewarded"

    .line 8
    .line 9
    iput-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->r:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v5, Lcom/transsion/commercialization/task/DownloadInterceptDialog$showRewardedAd$1$1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v5, p0, v0, p1, v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$showRewardedAd$1$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/content/Context;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public static final synthetic G0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->l1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final G1()V
    .locals 8

    .line 1
    new-instance v7, Landroid/view/animation/RotateAnimation;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    const/high16 v6, 0x3f000000    # 0.5f

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/high16 v2, 0x43b40000    # 360.0f

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/high16 v4, 0x3f000000    # 0.5f

    .line 11
    .line 12
    move-object v0, v7

    .line 13
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, 0x3e8

    .line 17
    .line 18
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 19
    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, v0, Lsj/d;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public static final synthetic H0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->m1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->n1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->o1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->p1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->q1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic M0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->r1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic N0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->v1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic O0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic P0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->t:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Q0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic R0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lcom/transsion/ad/bidding/video/BiddingVideoManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->s:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic S0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->B1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic T0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->C1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic U0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->E1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic V0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->F1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final W0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lsj/d;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final X0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->t:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->t:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 10
    .line 11
    return-void
.end method

.method private final Y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->s:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->s:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 10
    .line 11
    return-void
.end method

.method private final Z0()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->g:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final a1()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "DownloadInterceptRewarded"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "iconFetchCount"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0xa

    .line 25
    .line 26
    :goto_0
    return v0
.end method

.method private final b1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final c1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final d1()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "DownloadInterceptRewarded"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "maxShowErrorTimes"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x3

    .line 25
    :goto_0
    return v0
.end method

.method private static final e1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->a1()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final f1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lsj/d;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/commercialization/task/n;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/transsion/commercialization/task/n;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->h:Lcom/transsion/commercialization/task/n;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/transsion/commercialization/task/DownloadInterceptDialog$b;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$b;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method private final g1(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, -0x2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x11

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-static {p1}, Lsj/d;->a(Landroid/view/View;)Lsj/d;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 50
    .line 51
    const-class p1, Lim/b;

    .line 52
    .line 53
    new-array v0, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {p1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lim/b;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-interface {p1}, Lim/b;->z()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move p1, v1

    .line 69
    :goto_0
    const/16 v0, 0x8

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    iget-boolean p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->j:Z

    .line 74
    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    :cond_4
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 78
    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    iget-object p1, p1, Lsj/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_5
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    iget-object p1, p1, Lsj/d;->i:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_6
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 100
    .line 101
    if-eqz p1, :cond_8

    .line 102
    .line 103
    iget-object p1, p1, Lsj/d;->j:Lsj/h;

    .line 104
    .line 105
    if-eqz p1, :cond_8

    .line 106
    .line 107
    iget-object p1, p1, Lsj/h;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 108
    .line 109
    if-eqz p1, :cond_8

    .line 110
    .line 111
    iget-boolean v2, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->p:Z

    .line 112
    .line 113
    if-eqz v2, :cond_7

    .line 114
    .line 115
    move v1, v0

    .line 116
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    :cond_8
    return-void
.end method

.method private final h1()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->X0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Lsj/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->i(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->Z0()V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, v2, Lsj/d;->j:Lsj/h;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v2, v2, Lsj/h;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    sget v1, Lcom/transsion/commercialization/R$string;->reward_intercept_skip:I

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_0
    invoke-virtual {v0, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    iget-object v2, v2, Lsj/d;->j:Lsj/h;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget-object v2, v2, Lsj/h;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    sget v1, Lcom/tn/lib/widget/R$string;->common_failed:I

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :cond_2
    invoke-virtual {v0, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method private final i1()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v1, "DownloadInterceptInterstitial"

    .line 13
    .line 14
    iput-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->r:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v5, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadInterstitialAd$1$1;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v5, p0, v0, v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadInterstitialAd$1$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x3

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private final j1()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v1, "DownloadInterceptRewarded"

    .line 13
    .line 14
    iput-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->r:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v5, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v5, p0, v0, v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadRewardedAd$1$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x3

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private static final k1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->d1()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final l1()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final loadData()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->i:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->G1()V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v4, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadData$1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {v4, p0, v0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$loadData$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final m1()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->g:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->C1()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final n1()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->l:Z

    .line 3
    .line 4
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v4, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onRewardAdClose$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v4, p0, v0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onRewardAdClose$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->A1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final o1()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onRewardLoadError$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onRewardLoadError$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->x1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p1()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onRewardShowError$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onRewardShowError$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic q0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->y1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final q1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onRewardedLoad$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onRewardedLoad$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic r0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->z1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final r1()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->l:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->n:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic s0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->k1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final s1()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "DownloadInterceptInterstitial"

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->r:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v1, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->t:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v0, v3, v2, v3}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;->b(Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic t0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->X0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final t1()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "DownloadInterceptRewarded"

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->r:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v1, Lcom/transsion/ad/bidding/video/BiddingVideoManager;->t:Lcom/transsion/ad/bidding/video/BiddingVideoManager$Companion;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v0, v3, v2, v3}, Lcom/transsion/ad/bidding/video/BiddingVideoManager$Companion;->b(Lcom/transsion/ad/bidding/video/BiddingVideoManager$Companion;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic u0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->Y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final u1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->h:Lcom/transsion/commercialization/task/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x2

    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public static final synthetic v0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 2
    .line 3
    return-object p0
.end method

.method private final v1()V
    .locals 3

    .line 1
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Lsj/d;->j:Lsj/h;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lsj/h;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget v2, Lcom/tn/lib/widget/R$string;->common_failed:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->q:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->n:I

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    iput v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->n:I

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->c1()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-lt v0, v1, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, v0, Lsj/d;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-static {v0}, Luf/c;->i(Landroid/view/View;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->Z0()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->Y0()V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->s1()V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    return-void
.end method

.method public static final synthetic w0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->g:I

    .line 2
    .line 3
    return p0
.end method

.method private final w1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lsj/d;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/commercialization/task/i;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/i;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lsj/d;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/transsion/commercialization/task/j;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/j;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-object v0, Lcom/transsion/baseui/util/o;->a:Lcom/transsion/baseui/util/o;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v3, v1, Lsj/d;->p:Landroid/widget/TextView;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v3, v2

    .line 44
    :goto_0
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v2, v1, Lsj/d;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 47
    .line 48
    :cond_3
    const/4 v1, 0x2

    .line 49
    new-array v1, v1, [Landroid/view/View;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    aput-object v3, v1, v4

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    aput-object v2, v1, v3

    .line 56
    .line 57
    new-instance v2, Lcom/transsion/commercialization/task/k;

    .line 58
    .line 59
    invoke-direct {v2, p0}, Lcom/transsion/commercialization/task/k;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/transsion/baseui/util/o;->a([Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->e:Lsj/d;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v0, v0, Lsj/d;->j:Lsj/h;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget-object v0, v0, Lsj/h;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    new-instance v1, Lcom/transsion/commercialization/task/l;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/l;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    return-void
.end method

.method public static final synthetic x0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->b1()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final x1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final y1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V
    .locals 8

    .line 1
    sget-object p1, Lcom/transsion/commercialization/pslink/f;->a:Lcom/transsion/commercialization/pslink/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/commercialization/pslink/f;->a()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    .line 8
    .line 9
    const-class v0, Lim/b;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Lim/b;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/transsion/memberapi/MemberSource;->SOURCE_DOWNLOAD_DIALOG:Lcom/transsion/memberapi/MemberSource;

    .line 25
    .line 26
    new-instance v3, Lcom/transsion/commercialization/task/DownloadInterceptDialog$e;

    .line 27
    .line 28
    invoke-direct {v3, p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$e;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    .line 29
    .line 30
    .line 31
    const/16 v6, 0x18

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static/range {v0 .. v7}, Lim/b$a;->c(Lim/b;Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lim/c;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public static final synthetic z0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final z1(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->i:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object p1, Lcom/transsion/commercialization/pslink/f;->a:Lcom/transsion/commercialization/pslink/f;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/commercialization/pslink/f;->c()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->d:Ljava/util/List;

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->B1()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->loadData()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lcom/tn/lib/widget/R$style;->center_DialogStyle:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " --> onCreate() --> \u4e0b\u8f7d\u5e94\u7528\u5f39\u7a97"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->u1()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->I()V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-boolean v2, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->l:Z

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " --> onDestroy() -> "

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->l:Z

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->Y0()V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->X0()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->l:Z

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " --> onDismiss() --> "

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->l:Z

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->f:Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->g:I

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lkotlin/Unit;

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->t1()V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lcom/transsion/commercialization/pslink/f;->a:Lcom/transsion/commercialization/pslink/f;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/transsion/commercialization/pslink/f;->g()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->g1(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->f1()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->w1()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->loadData()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
