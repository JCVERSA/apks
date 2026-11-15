.class public final Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;
.super Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\nR\u0016\u0010\u001c\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;",
        "Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "l",
        "()V",
        "Landroid/view/View;",
        "nonBannerRoot",
        "setMute",
        "(Landroid/view/View;)V",
        "setClick",
        "Landroid/widget/FrameLayout;",
        "getMediaContainer",
        "()Landroid/widget/FrameLayout;",
        "",
        "isShowVolumeIcon",
        "()Z",
        "",
        "getLogTag",
        "()Ljava/lang/String;",
        "showAd",
        "p",
        "Z",
        "isMute",
        "q",
        "Landroid/widget/FrameLayout;",
        "mediaContainer",
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
.field private p:Z

.field private q:Landroid/widget/FrameLayout;


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

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->n(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->m(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final l()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getAdPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

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
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 14
    .line 15
    const/16 v2, 0x44f

    .line 16
    .line 17
    const-string v3, "adPlans is null"

    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getMaxEcpmObject()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Loh/a;->h(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget v1, Lcom/transsion/ad/R$layout;->bidding_buy_out_banner_view:I

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v1, Lcom/transsion/ad/R$id;->flAdContainer:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/FrameLayout;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->q:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->setClick(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->setMute(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    sget v1, Lcom/transsion/ad/R$id;->adIcon:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/transsion/ad/view/AdTagView;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    sget-object v2, Lcom/transsion/ad/strategy/h;->a:Lcom/transsion/ad/strategy/h;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Lcom/transsion/ad/strategy/h;->a(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->showMedia()V

    .line 77
    .line 78
    .line 79
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    const/4 v2, -0x1

    .line 82
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private static final m(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroid/view/View;)Lkotlin/Unit;
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

.method private static final n(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-interface {p2}, Lcom/transsion/player/orplayer/f;->isMute()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-interface {p0, p2}, Lcom/transsion/player/orplayer/f;->setMute(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget p0, Lcom/transsion/ad/R$mipmap;->ad_volumeon:I

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    invoke-interface {p0, v0}, Lcom/transsion/player/orplayer/f;->setMute(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    sget p0, Lcom/transsion/ad/R$mipmap;->ad_volumeoff:I

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method private final setClick(Landroid/view/View;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v6, Lci/g;

    .line 4
    .line 5
    new-instance v3, Lcom/transsion/ad/bidding/banner/b;

    .line 6
    .line 7
    invoke-direct {v3, p0}, Lcom/transsion/ad/bidding/banner/b;-><init>(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;)V

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    move-object v0, v6

    .line 15
    invoke-direct/range {v0 .. v5}, Lci/g;-><init>(JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private final setMute(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget v0, Lcom/transsion/ad/R$id;->mute:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->p:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v0, 0x8

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/transsion/ad/bidding/banner/c;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1}, Lcom/transsion/ad/bidding/banner/c;-><init>(Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ad_b"

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->q:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public isShowVolumeIcon()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final showAd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
