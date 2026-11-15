.class public abstract Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;
.super Landroid/widget/FrameLayout;
.source "source.java"

# interfaces
.implements Lcom/transsion/ad/strategy/t$a;
.implements Lxh/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001d\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0004\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0011\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0011\u0010$\u001a\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u001dH&\u00a2\u0006\u0004\u0008&\u0010\'J\u0015\u0010*\u001a\u00020\n2\u0006\u0010)\u001a\u00020(\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010.\u001a\u00020\n2\u0008\u0010-\u001a\u0004\u0018\u00010,\u00a2\u0006\u0004\u0008.\u0010/J\u0011\u00100\u001a\u0004\u0018\u00010,H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0017\u00104\u001a\u00020\n2\u0008\u00103\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u00086\u00107J\u0017\u0010:\u001a\u00020\n2\u0008\u00109\u001a\u0004\u0018\u000108\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010=\u001a\u0004\u0018\u00010<\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u0004\u0018\u000108\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010A\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008A\u0010BJ\u0017\u0010E\u001a\u00020\n2\u0008\u0010D\u001a\u0004\u0018\u00010C\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010G\u001a\u0004\u0018\u00010C\u00a2\u0006\u0004\u0008G\u0010HJ\r\u0010I\u001a\u00020\n\u00a2\u0006\u0004\u0008I\u0010\u000cJ\r\u0010J\u001a\u00020\n\u00a2\u0006\u0004\u0008J\u0010\u000cJ\u0015\u0010K\u001a\u00020\n2\u0006\u0010K\u001a\u00020\u001d\u00a2\u0006\u0004\u0008K\u0010 J\u0015\u0010M\u001a\u00020\n2\u0006\u0010L\u001a\u00020\u001d\u00a2\u0006\u0004\u0008M\u0010 J\r\u0010N\u001a\u00020\n\u00a2\u0006\u0004\u0008N\u0010\u000cJ\u0019\u0010P\u001a\u00020\n2\u0008\u0010O\u001a\u0004\u0018\u00010,H\u0004\u00a2\u0006\u0004\u0008P\u0010/J\r\u0010Q\u001a\u00020\n\u00a2\u0006\u0004\u0008Q\u0010\u000cJ\r\u0010R\u001a\u00020\n\u00a2\u0006\u0004\u0008R\u0010\u000cR\u0018\u0010U\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0018\u0010X\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0018\u0010[\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\\R\u0018\u0010^\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010]R\u0018\u0010`\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010_R\u0018\u0010b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010aR\u0016\u0010e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010dR\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010fR\u0014\u0010j\u001a\u00020g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0016\u0010L\u001a\u00020k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010oR\u0016\u0010q\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010dR\u0016\u0010K\u001a\u00020k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010mR\u0016\u0010u\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010t\u00a8\u0006v"
    }
    d2 = {
        "Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/transsion/ad/strategy/t$a;",
        "Lxh/b;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "d",
        "()V",
        "",
        "displayTimestamp",
        "e",
        "(J)V",
        "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "adMaterialList",
        "i",
        "(Lcom/transsion/ad/monopoly/model/AdMaterialList;)V",
        "g",
        "Landroid/widget/ImageView;",
        "imageView",
        "setVolumeImage",
        "(Landroid/widget/ImageView;)V",
        "Lcom/transsion/player/orplayer/f;",
        "getOrPlayer",
        "()Lcom/transsion/player/orplayer/f;",
        "",
        "isVisible",
        "onVisibilityChanged",
        "(Z)V",
        "Landroid/view/View;",
        "getVisibilityView",
        "()Landroid/view/View;",
        "getMediaContainer",
        "()Landroid/widget/FrameLayout;",
        "isShowVolumeIcon",
        "()Z",
        "Landroid/widget/ImageView$ScaleType;",
        "scaleType",
        "setScaleType",
        "(Landroid/widget/ImageView$ScaleType;)V",
        "",
        "sceneId",
        "setSceneId",
        "(Ljava/lang/String;)V",
        "getSceneId",
        "()Ljava/lang/String;",
        "Loh/a;",
        "listener",
        "setListener",
        "(Loh/a;)V",
        "getListener",
        "()Loh/a;",
        "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "maxEcpmObject",
        "setEcpmObject",
        "(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V",
        "Lcom/transsion/ad/monopoly/model/AdPlans;",
        "getAdPlans",
        "()Lcom/transsion/ad/monopoly/model/AdPlans;",
        "getMaxEcpmObject",
        "()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "getAdMaterialList",
        "()Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "Lcom/transsion/ad/ps/model/RecommendInfo;",
        "recommendInfo",
        "setRecommendInfo",
        "(Lcom/transsion/ad/ps/model/RecommendInfo;)V",
        "getRecommendInfo",
        "()Lcom/transsion/ad/ps/model/RecommendInfo;",
        "destroy",
        "reset",
        "isReportAdDisplay",
        "isAdMaterialShow",
        "setAdMaterialShow",
        "onAdClick",
        "errorMsg",
        "f",
        "addSession",
        "showMedia",
        "a",
        "Ljava/lang/String;",
        "mSceneId",
        "b",
        "Loh/a;",
        "mListener",
        "c",
        "Lcom/transsion/ad/monopoly/model/AdPlans;",
        "mAdPlans",
        "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
        "Lcom/transsion/ad/monopoly/model/AdMaterialList;",
        "mAdMaterialList",
        "Lcom/transsion/ad/ps/model/RecommendInfo;",
        "mRecommendInfo",
        "Lcom/transsion/player/orplayer/f;",
        "mOrPlayer",
        "h",
        "Z",
        "mIsMute",
        "Landroid/widget/ImageView;",
        "Landroid/view/TextureView;",
        "j",
        "Landroid/view/TextureView;",
        "textureView",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "k",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "l",
        "Landroid/widget/ImageView$ScaleType;",
        "m",
        "isInScreen",
        "n",
        "o",
        "J",
        "showTimestamp",
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


# instance fields
.field private a:Ljava/lang/String;

.field private b:Loh/a;

.field private c:Lcom/transsion/ad/monopoly/model/AdPlans;

.field private d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private e:Lcom/transsion/ad/monopoly/model/AdMaterialList;

.field private f:Lcom/transsion/ad/ps/model/RecommendInfo;

.field private g:Lcom/transsion/player/orplayer/f;

.field private h:Z

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/view/TextureView;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Landroid/widget/ImageView$ScaleType;

.field private m:Z

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h:Z

    .line 5
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    .line 6
    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->j:Landroid/view/TextureView;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->l:Landroid/widget/ImageView$ScaleType;

    .line 9
    new-instance p1, Lci/g;

    new-instance v3, Lcom/transsion/ad/bidding/base/s;

    invoke-direct {v3, p0}, Lcom/transsion/ad/bidding/base/s;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lci/g;-><init>(JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->c(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$isAdMaterialShow$p(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->onAdClick()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Loh/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Loh/a;->c(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Loh/a;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Loh/a;->t(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private final e(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Loh/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1, p2}, Loh/a;->d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Loh/a;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v0, p1, p2}, Loh/a;->s(Lcom/transsion/ad/ps/model/RecommendInfo;J)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private final g(Lcom/transsion/ad/monopoly/model/AdMaterialList;)V
    .locals 29

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getMediaContainer()Landroid/widget/FrameLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->release()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h:Z

    .line 23
    .line 24
    sget-object v2, Lci/q;->a:Lci/q;

    .line 25
    .line 26
    iget-object v3, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->j:Landroid/view/TextureView;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lci/q;->a(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->j:Landroid/view/TextureView;

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->isShowVolumeIcon()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    const/high16 v4, 0x41c00000    # 24.0f

    .line 45
    .line 46
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    const v4, 0x800035

    .line 58
    .line 59
    .line 60
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 61
    .line 62
    const/high16 v4, 0x41000000    # 8.0f

    .line 63
    .line 64
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 69
    .line 70
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    .line 78
    .line 79
    const-string v5, "adVolumeImage"

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v4, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    .line 85
    .line 86
    new-instance v5, Lcom/transsion/ad/bidding/base/t;

    .line 87
    .line 88
    invoke-direct {v5, v7}, Lcom/transsion/ad/bidding/base/t;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    iget-object v4, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-direct {v7, v4}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setVolumeImage(Landroid/widget/ImageView;)V

    .line 97
    .line 98
    .line 99
    iget-object v4, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {v2, v4}, Lci/q;->a(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    .line 105
    .line 106
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    new-instance v2, Lcom/transsion/player/orplayer/f$a;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v3, "getContext(...)"

    .line 116
    .line 117
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {v2, v0}, Lcom/transsion/player/orplayer/f$a;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Lhn/d;

    .line 124
    .line 125
    move-object v8, v0

    .line 126
    const v27, 0x16fff

    .line 127
    .line 128
    .line 129
    const/16 v28, 0x0

    .line 130
    .line 131
    const/4 v9, 0x0

    .line 132
    const/4 v10, 0x0

    .line 133
    const/4 v11, 0x0

    .line 134
    const/4 v12, 0x0

    .line 135
    const/4 v13, 0x0

    .line 136
    const/4 v14, 0x0

    .line 137
    const/4 v15, 0x0

    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    const-wide/16 v17, 0x0

    .line 141
    .line 142
    const/16 v19, 0x0

    .line 143
    .line 144
    const/16 v20, 0x0

    .line 145
    .line 146
    const/16 v21, 0x0

    .line 147
    .line 148
    const/16 v22, 0x0

    .line 149
    .line 150
    const/16 v23, 0x0

    .line 151
    .line 152
    const/16 v24, 0x0

    .line 153
    .line 154
    const/16 v25, 0x0

    .line 155
    .line 156
    const/16 v26, 0x0

    .line 157
    .line 158
    invoke-direct/range {v8 .. v28}, Lhn/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v0}, Lcom/transsion/player/orplayer/f$a;->b(Lhn/d;)Lcom/transsion/player/orplayer/f$a;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/transsion/player/orplayer/f$a;->a()Lcom/transsion/player/orplayer/f;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->setMute(Z)V

    .line 170
    .line 171
    .line 172
    iget-object v2, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->j:Landroid/view/TextureView;

    .line 173
    .line 174
    invoke-interface {v0, v2}, Lcom/transsion/player/orplayer/f;->setTextureView(Landroid/view/TextureView;)V

    .line 175
    .line 176
    .line 177
    sget-object v2, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    .line 178
    .line 179
    invoke-interface {v0, v2}, Lcom/transsion/player/orplayer/f;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->setLooping(Z)V

    .line 183
    .line 184
    .line 185
    new-instance v1, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView$a;

    .line 186
    .line 187
    invoke-direct {v1, v7, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView$a;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Lcom/transsion/player/orplayer/f;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->setPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 191
    .line 192
    .line 193
    iput-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/f;

    .line 194
    .line 195
    if-eqz p1, :cond_2

    .line 196
    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_2

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x0

    .line 209
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    const-string v1, ""

    .line 214
    .line 215
    if-eqz v0, :cond_7

    .line 216
    .line 217
    iget-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/f;

    .line 218
    .line 219
    if-eqz v0, :cond_c

    .line 220
    .line 221
    new-instance v2, Lgn/e;

    .line 222
    .line 223
    if-eqz p1, :cond_4

    .line 224
    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    if-eqz v3, :cond_4

    .line 230
    .line 231
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getUrl()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    if-nez v3, :cond_3

    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_3
    move-object v9, v3

    .line 239
    goto :goto_2

    .line 240
    :cond_4
    :goto_1
    move-object v9, v1

    .line 241
    :goto_2
    if-eqz p1, :cond_6

    .line 242
    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    if-eqz v3, :cond_6

    .line 248
    .line 249
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getUrl()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    if-nez v3, :cond_5

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_5
    move-object v10, v3

    .line 257
    goto :goto_4

    .line 258
    :cond_6
    :goto_3
    move-object v10, v1

    .line 259
    :goto_4
    const/16 v14, 0x1c

    .line 260
    .line 261
    const/4 v15, 0x0

    .line 262
    const/4 v11, 0x0

    .line 263
    const/4 v12, 0x0

    .line 264
    const/4 v13, 0x0

    .line 265
    move-object v8, v2

    .line 266
    invoke-direct/range {v8 .. v15}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v0, v2}, Lcom/transsion/player/orplayer/f;->setDataSource(Lgn/e;)V

    .line 270
    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_7
    iget-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/f;

    .line 274
    .line 275
    if-eqz v0, :cond_c

    .line 276
    .line 277
    new-instance v2, Lgn/e;

    .line 278
    .line 279
    if-eqz p1, :cond_9

    .line 280
    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    if-eqz v3, :cond_9

    .line 286
    .line 287
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    if-nez v3, :cond_8

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_8
    move-object v9, v3

    .line 295
    goto :goto_6

    .line 296
    :cond_9
    :goto_5
    move-object v9, v1

    .line 297
    :goto_6
    if-eqz p1, :cond_b

    .line 298
    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    if-eqz v3, :cond_b

    .line 304
    .line 305
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    if-nez v3, :cond_a

    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_a
    move-object v10, v3

    .line 313
    goto :goto_8

    .line 314
    :cond_b
    :goto_7
    move-object v10, v1

    .line 315
    :goto_8
    const/16 v14, 0x1c

    .line 316
    .line 317
    const/4 v15, 0x0

    .line 318
    const/4 v11, 0x0

    .line 319
    const/4 v12, 0x0

    .line 320
    const/4 v13, 0x0

    .line 321
    move-object v8, v2

    .line 322
    invoke-direct/range {v8 .. v15}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 323
    .line 324
    .line 325
    invoke-interface {v0, v2}, Lcom/transsion/player/orplayer/f;->setDataSource(Lgn/e;)V

    .line 326
    .line 327
    .line 328
    :cond_c
    :goto_9
    iget-object v0, v7, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/f;

    .line 329
    .line 330
    if-eqz v0, :cond_e

    .line 331
    .line 332
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 333
    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_d
    const/16 v5, 0xc

    .line 337
    .line 338
    const/4 v6, 0x0

    .line 339
    const/4 v1, 0x6

    .line 340
    const-string v2, "playVideo() --> getMediaContainer() == null"

    .line 341
    .line 342
    const/4 v3, 0x0

    .line 343
    const/4 v4, 0x0

    .line 344
    move-object/from16 v0, p0

    .line 345
    .line 346
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    :cond_e
    :goto_a
    return-void
.end method

.method private static final h(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;Landroid/view/View;)V
    .locals 7

    .line 1
    const/4 v5, 0x4

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v1, 0x3

    .line 4
    const-string v2, "playVideo() --> \u70b9\u51fb\u4e86\u97f3\u9891\u6309\u94ae"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    move-object v0, p0

    .line 9
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h:Z

    .line 13
    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/f;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->setMute(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setVolumeImage(Landroid/widget/ImageView;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final i(Lcom/transsion/ad/monopoly/model/AdMaterialList;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getMediaContainer()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v2, v1, Landroid/app/Activity;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    move-object v2, v1

    .line 18
    check-cast v2, Landroid/app/Activity;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object v2, v3

    .line 22
    :goto_0
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    :cond_2
    return-void

    .line 37
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 38
    .line 39
    .line 40
    new-instance v2, Landroid/widget/ImageView;

    .line 41
    .line 42
    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->l:Landroid/widget/ImageView$ScaleType;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    move-object v1, v3

    .line 64
    :goto_1
    if-eqz p1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move-object p1, v3

    .line 78
    :goto_2
    if-eqz v1, :cond_7

    .line 79
    .line 80
    new-instance v4, Ljava/io/File;

    .line 81
    .line 82
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_6

    .line 90
    .line 91
    move-object v3, v1

    .line 92
    :cond_6
    if-eqz v3, :cond_7

    .line 93
    .line 94
    new-instance p1, Ljava/io/File;

    .line 95
    .line 96
    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_7
    :try_start_0
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v1, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView$b;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView$b;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v3, "\u52a0\u8f7d\u56fe\u7247\u5931\u8d25 --> "

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->f(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method private final setVolumeImage(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/transsion/ad/R$mipmap;->ad_volumeoff:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v0, Lcom/transsion/ad/R$mipmap;->ad_volumeon:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public final addSession()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/transsion/ad/strategy/t;->j(Lcom/transsion/ad/strategy/t$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->reset()V

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
    return-void
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setErrorMsg(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Loh/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Loh/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Loh/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Loh/a;->u(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->e:Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->c:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    return-object v0
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

.method public final getListener()Loh/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->b:Loh/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract synthetic getLogTag()Ljava/lang/String;
.end method

.method public final getMaxEcpmObject()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getMediaContainer()Landroid/widget/FrameLayout;
.end method

.method protected final getOrPlayer()Lcom/transsion/player/orplayer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->f:Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->a:Ljava/lang/String;

    .line 2
    .line 3
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
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getMediaContainer()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final isReportAdDisplay(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract isShowVolumeIcon()Z
.end method

.method public final onAdClick()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Loh/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Loh/a;->a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Loh/a;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Loh/a;->r(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    .line 31
    .line 32
    .line 33
    :cond_1
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

.method public onVisibilityChanged(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getListener()Loh/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Loh/a;->f(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->m:Z

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    .line 25
    .line 26
    cmp-long p1, v2, v0

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d()V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget-wide v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    .line 84
    .line 85
    cmp-long p1, v2, v0

    .line 86
    .line 87
    if-lez p1, :cond_4

    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    iget-wide v4, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    .line 94
    .line 95
    sub-long/2addr v2, v4

    .line 96
    invoke-direct {p0, v2, v3}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->e(J)V

    .line 97
    .line 98
    .line 99
    :cond_4
    iput-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_0
    return-void
.end method

.method public final reset()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

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
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->o:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->e(J)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setListener(Loh/a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g:Lcom/transsion/player/orplayer/f;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->release()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final setAdMaterialShow(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setEcpmObject(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->d:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p1, v0

    .line 12
    :goto_0
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->c:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    check-cast p1, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v1, 0x1

    .line 29
    xor-int/2addr p1, v1

    .line 30
    if-ne p1, v1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->c:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 49
    .line 50
    :cond_1
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->e:Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public final setListener(Loh/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->b:Loh/a;

    .line 2
    .line 3
    return-void
.end method

.method public final setRecommendInfo(Lcom/transsion/ad/ps/model/RecommendInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->f:Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    const-string v0, "scaleType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->l:Landroid/widget/ImageView$ScaleType;

    .line 7
    .line 8
    return-void
.end method

.method public final setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final showMedia()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    const-string v1, "TextAdMaterial"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->i(Lcom/transsion/ad/monopoly/model/AdMaterialList;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdMaterialList()Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->g(Lcom/transsion/ad/monopoly/model/AdMaterialList;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->addSession()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
