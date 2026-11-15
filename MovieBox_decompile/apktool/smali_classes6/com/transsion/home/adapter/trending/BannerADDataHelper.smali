.class public final Lcom/transsion/home/adapter/trending/BannerADDataHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

.field private static b:I

.field private static c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private static d:Lkotlin/jvm/functions/Function2;

.field private static e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field private static f:Z

.field private static g:Z

.field private static final h:Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;

.field public static final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/home/adapter/trending/BannerADDataHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->b:I

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->h:Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    sput v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->i:I

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->d:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic c()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->h:Lcom/transsion/home/adapter/trending/BannerADDataHelper$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(I)V
    .locals 0

    .line 1
    sput p0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->g:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final i(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    .line 1
    sput-object p1, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 13
    .line 14
    invoke-virtual {p1, v0, p2, p3}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->U()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->c:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 10
    .line 11
    return-void
.end method

.method public final k(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lcom/transsion/wrapperad/R$id;->ad_media:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/hisavana/mediation/ad/TMediaView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 3
    .line 4
    return-void
.end method
