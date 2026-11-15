.class public Lcom/mgmi/ssp/SplashAd;
.super Lcom/mgmi/ads/api/a;
.source "SourceFile"


# static fields
.field public static isBid:Z = false


# instance fields
.field private appID:Ljava/lang/String;

.field private isopenInerBrowser:Z

.field private mActivity:Landroid/app/Activity;

.field private mBootAdsloader:Lcom/mgmi/ads/api/a/b;

.field private mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

.field private posID:Ljava/lang/String;

.field private requestInterface:Lcom/mgmi/ads/api/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/SplashADListener;I)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Lcom/mgmi/ads/api/a;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/mgmi/ssp/SplashAd;->isopenInerBrowser:Z

    .line 29
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p7, :cond_0

    .line 30
    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x1390

    const-string p2, "\u5a92\u4f53\u9ed1\u540d\u5355"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p7, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_0
    return-void

    .line 31
    :cond_1
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/mgmi/platform/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p7, :cond_2

    .line 32
    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x138f

    const-string p2, "\u5e7f\u544a\u4f4d\u9ed1\u540d\u5355"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p7, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_2
    return-void

    .line 33
    :cond_3
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mgmi/platform/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p7, :cond_4

    .line 34
    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x138e

    const-string p2, "\u5305\u540d\u6821\u9a8c\u9519\u8bef\uff0c\u5f53\u524dAPP\u5305\u540d\u4e0e\u5b98\u7f51\u6ce8\u518c\u5a92\u4f53\u662f\u586b\u5199\u7684\u5305\u540d\u4e0d\u4e00\u81f4\uff0c\u65e0\u6cd5\u4f7f\u7528SDK"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p7, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_4
    return-void

    .line 35
    :cond_5
    iput-object p1, p0, Lcom/mgmi/ssp/SplashAd;->mActivity:Landroid/app/Activity;

    .line 36
    iput-object p5, p0, Lcom/mgmi/ssp/SplashAd;->appID:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/mgmi/ssp/SplashAd;->posID:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1, p6}, Lcom/mgmi/ssp/SplashAd;->updateResource(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/mgmi/ssp/SplashAd;->isBid:Z

    .line 40
    new-instance v1, Lcom/mgmi/g/a;

    invoke-direct {v1, p5, p6}, Lcom/mgmi/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p5, Lcom/mgmi/ads/api/a/c;

    invoke-direct {p5}, Lcom/mgmi/ads/api/a/c;-><init>()V

    const-string p6, "ADS_BOOT"

    invoke-virtual {p5, p6}, Lcom/mgmi/ads/api/a/c;->b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    move-result-object p5

    invoke-interface {p5, v1}, Lcom/mgmi/ads/api/a/d;->b(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/d;

    move-result-object p5

    iput-object p5, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    .line 42
    invoke-interface {p5, p2}, Lcom/mgmi/ads/api/a/d;->a(Landroid/view/ViewGroup;)V

    .line 43
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2, p8}, Lcom/mgmi/ads/api/a/d;->c(I)V

    .line 44
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2, p0}, Lcom/mgmi/ads/api/a/d;->a(Lcom/mgmi/ads/api/a;)Lcom/mgmi/ads/api/a/c;

    .line 45
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2, v0}, Lcom/mgmi/ads/api/a/d;->f(Z)V

    if-eqz p3, :cond_6

    .line 46
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2, p3}, Lcom/mgmi/ads/api/a/d;->a(Landroid/view/View;)V

    .line 47
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p7}, Lcom/mgmi/ssp/SplashADListener;->setSkipViewLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/mgmi/ads/api/a/d;->a(Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_6
    if-eqz p4, :cond_7

    .line 48
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2, p4}, Lcom/mgmi/ads/api/a/d;->b(Landroid/view/View;)V

    .line 49
    :cond_7
    iput-object p7, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    .line 50
    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p2

    iget-object p3, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-virtual {p2, p1, p3}, Lcom/mgmi/platform/b/b;->a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Lcom/mgmi/ads/api/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ssp/SplashAd;->mBootAdsloader:Lcom/mgmi/ads/api/a/b;

    if-eqz p1, :cond_8

    .line 51
    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/b;->b(Lcom/mgmi/ads/api/a/d;)V

    :cond_8
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/SplashADListener;II)V
    .locals 3
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/mgmi/ads/api/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mgmi/ssp/SplashAd;->isopenInerBrowser:Z

    .line 3
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/platform/b;->b()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p7, :cond_0

    .line 4
    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x1390

    const-string p2, "\u5a92\u4f53\u9ed1\u540d\u5355"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p7, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/mgmi/platform/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p7, :cond_2

    .line 6
    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x138f

    const-string p2, "\u5e7f\u544a\u4f4d\u9ed1\u540d\u5355"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p7, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_2
    return-void

    .line 7
    :cond_3
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/mgmi/platform/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p7, :cond_4

    .line 8
    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x138e

    const-string p2, "\u5305\u540d\u6821\u9a8c\u9519\u8bef\uff0c\u5f53\u524dAPP\u5305\u540d\u4e0e\u5b98\u7f51\u6ce8\u518c\u5a92\u4f53\u662f\u586b\u5199\u7684\u5305\u540d\u4e0d\u4e00\u81f4\uff0c\u65e0\u6cd5\u4f7f\u7528SDK"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p7, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_4
    return-void

    .line 9
    :cond_5
    iput-object p1, p0, Lcom/mgmi/ssp/SplashAd;->mActivity:Landroid/app/Activity;

    .line 10
    iput-object p5, p0, Lcom/mgmi/ssp/SplashAd;->appID:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/mgmi/ssp/SplashAd;->posID:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1, p6}, Lcom/mgmi/ssp/SplashAd;->updateResource(Landroid/app/Activity;Ljava/lang/String;)V

    .line 13
    sput-boolean v0, Lcom/mgmi/ssp/SplashAd;->isBid:Z

    .line 14
    new-instance v0, Lcom/mgmi/g/a;

    invoke-direct {v0, p5, p6}, Lcom/mgmi/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p9}, Lcom/mgmi/g/a;->j(I)Lcom/mgmi/g/a;

    .line 16
    new-instance p5, Lcom/mgmi/ads/api/a/c;

    invoke-direct {p5}, Lcom/mgmi/ads/api/a/c;-><init>()V

    const-string p6, "ADS_BOOT"

    invoke-virtual {p5, p6}, Lcom/mgmi/ads/api/a/c;->b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    move-result-object p5

    invoke-interface {p5, v0}, Lcom/mgmi/ads/api/a/d;->b(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/d;

    move-result-object p5

    iput-object p5, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    .line 17
    invoke-interface {p5, p2}, Lcom/mgmi/ads/api/a/d;->a(Landroid/view/ViewGroup;)V

    .line 18
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2, p8}, Lcom/mgmi/ads/api/a/d;->c(I)V

    .line 19
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2, p0}, Lcom/mgmi/ads/api/a/d;->a(Lcom/mgmi/ads/api/a;)Lcom/mgmi/ads/api/a/c;

    .line 20
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    sget-boolean p5, Lcom/mgmi/ssp/SplashAd;->isBid:Z

    invoke-interface {p2, p5}, Lcom/mgmi/ads/api/a/d;->f(Z)V

    if-eqz p3, :cond_6

    .line 21
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2, p3}, Lcom/mgmi/ads/api/a/d;->a(Landroid/view/View;)V

    .line 22
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p7}, Lcom/mgmi/ssp/SplashADListener;->setSkipViewLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/mgmi/ads/api/a/d;->a(Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_6
    if-eqz p4, :cond_7

    .line 23
    iget-object p2, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2, p4}, Lcom/mgmi/ads/api/a/d;->b(Landroid/view/View;)V

    .line 24
    :cond_7
    iput-object p7, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    .line 25
    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p2

    iget-object p3, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-virtual {p2, p1, p3}, Lcom/mgmi/platform/b/b;->a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Lcom/mgmi/ads/api/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ssp/SplashAd;->mBootAdsloader:Lcom/mgmi/ads/api/a/b;

    if-eqz p1, :cond_8

    .line 26
    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->requestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/b;->b(Lcom/mgmi/ads/api/a/d;)V

    :cond_8
    return-void
.end method

.method private finish()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->mBootAdsloader:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->a()V

    :cond_0
    return-void
.end method

.method private getJumpUrl(Lcom/mgmi/net/bean/CustomBootAdBean;)Ljava/lang/String;
    .locals 6

    iget-object v0, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpkind:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lqyd;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "player?clipId="

    const-string v3, "imgotv://"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const-string v4, "player?clipId=0&plId="

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    const-string v5, "subjectpage?subjectId="

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const-string v1, "&barrage=1"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&videoId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->childId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&plId=0&videoId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->childId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "player?clipId=0&plId=0&videoId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->childId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "channel?vclassId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->childId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vault?fstlvlId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&videoId=0&barrage=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&plId=0&videoId=0&barrage=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&from=lm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/platform/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/ssp/SplashAd;->appID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->posID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {p1}, Lcom/mgmi/net/bean/CustomBootAdBean;->getMid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&dc=m_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/CustomBootAdBean;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    return-object v3

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public biddingFail(Lcom/mgmi/ssp/BidInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ssp/SplashAd;->mBootAdsloader:Lcom/mgmi/ads/api/a/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/SplashAd;->copyInfo(Lcom/mgmi/ssp/BidInfo;)Lcom/mgmi/e/a;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/mgmi/ads/api/a/b;->a(ZLcom/mgmi/e/a;)V

    :cond_0
    return-void
.end method

.method public copyInfo(Lcom/mgmi/ssp/BidInfo;)Lcom/mgmi/e/a;
    .locals 3

    if-nez p1, :cond_0

    new-instance p0, Lcom/mgmi/e/a;

    invoke-direct {p0}, Lcom/mgmi/e/a;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/mgmi/e/a;

    invoke-direct {p0}, Lcom/mgmi/e/a;-><init>()V

    invoke-virtual {p1}, Lcom/mgmi/ssp/BidInfo;->getResult()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgmi/e/a;->setResult(I)Lcom/mgmi/e/a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/mgmi/ssp/BidInfo;->getBidType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/e/a;->setBidType(Ljava/lang/String;)Lcom/mgmi/e/a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/mgmi/ssp/BidInfo;->getBidWinner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/e/a;->setBidWinner(Ljava/lang/String;)Lcom/mgmi/e/a;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/ssp/BidInfo;->getWinECPM()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/e/a;->setWinECPM(Ljava/lang/String;)Lcom/mgmi/e/a;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/ssp/BidInfo;->getSecondECPM()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/e/a;->setSecondECPM(Ljava/lang/String;)Lcom/mgmi/e/a;

    move-result-object p0

    return-object p0
.end method

.method public loadAd()V
    .locals 0

    .line 1
    return-void
.end method

.method public loadAd(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    return-void
.end method

.method public onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V
    .locals 2
    .param p2    # Lcom/mgmi/net/bean/CustomBootAdBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_FAIL:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "mgadlog"

    if-eqz v0, :cond_0

    const-string p1, "AD_REQUEST_FAIL111"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    if-eqz p0, :cond_9

    new-instance p1, Lcom/mgmi/ssp/AdError;

    invoke-virtual {p2}, Lcom/mgmi/net/bean/CustomBootAdBean;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/mgmi/net/bean/CustomBootAdBean;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_SUCCESS:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "AD_REQUEST_SC"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object p1, p2, Lcom/mgmi/net/bean/CustomBootAdBean;->eCpm:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    iget-object p1, p2, Lcom/mgmi/net/bean/CustomBootAdBean;->eCpm:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lwrd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg4d;->j(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/SplashADListener;->onADLoad(I)V

    goto/16 :goto_1

    :cond_1
    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/SplashADListener;->onADLoad(I)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/mgmi/ssp/SplashADListener;->onADClicked()V

    :cond_3
    new-instance p1, Lcom/mgmi/net/bean/ExSplashAdBean;

    invoke-direct {p1}, Lcom/mgmi/net/bean/ExSplashAdBean;-><init>()V

    invoke-virtual {p1, p2}, Lcom/mgmi/net/bean/ExSplashAdBean;->build(Lcom/mgmi/net/bean/CustomBootAdBean;)V

    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/SplashAd;->splashAdOuterOpen(Lcom/mgmi/net/bean/ExSplashAdBean;)V

    invoke-direct {p0}, Lcom/mgmi/ssp/SplashAd;->finish()V

    if-eqz p2, :cond_9

    iget-boolean p1, p2, Lcom/mgmi/net/bean/CustomBootAdBean;->isApkDown:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/mgmi/ssp/SplashADListener;->onADDismissed()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/mgmi/ads/api/a$a;->CLOSE_AD:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_FINISH:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_RENDER_FAIL:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_RENDER_SUCCESS:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/mgmi/ssp/SplashADListener;->onADPresent()V

    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    invoke-interface {p0}, Lcom/mgmi/ssp/SplashADListener;->onADExposure()V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_COUNTDOWN_NOTIFY:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    if-eqz p0, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/mgmi/net/bean/CustomBootAdBean;->getAdDurationRemain()I

    move-result p1

    int-to-long p1, p1

    invoke-interface {p0, p1, p2}, Lcom/mgmi/ssp/SplashADListener;->onADTick(J)V

    goto :goto_1

    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->mSplashADListener:Lcom/mgmi/ssp/SplashADListener;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/mgmi/ssp/SplashADListener;->onADDismissed()V

    :cond_9
    :goto_1
    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->mBootAdsloader:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->c()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->mBootAdsloader:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->b()V

    :cond_0
    return-void
.end method

.method public setIsopenInerBrowser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ssp/SplashAd;->isopenInerBrowser:Z

    return-void
.end method

.method public showAd(Lcom/mgmi/ssp/BidInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ssp/SplashAd;->mBootAdsloader:Lcom/mgmi/ads/api/a/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/SplashAd;->copyInfo(Lcom/mgmi/ssp/BidInfo;)Lcom/mgmi/e/a;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/mgmi/ads/api/a/b;->a(ZLcom/mgmi/e/a;)V

    iget-object p0, p0, Lcom/mgmi/ssp/SplashAd;->mBootAdsloader:Lcom/mgmi/ads/api/a/b;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->g()V

    :cond_0
    return-void
.end method

.method public splashAdOuterOpen(Lcom/mgmi/net/bean/ExSplashAdBean;)V
    .locals 0

    invoke-static {}, Lcom/mgmi/f/e;->i()Z

    return-void
.end method

.method public updateResource(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mgmi/ssp/SplashAd$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mgmi/ssp/SplashAd$1;-><init>(Lcom/mgmi/ssp/SplashAd;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
