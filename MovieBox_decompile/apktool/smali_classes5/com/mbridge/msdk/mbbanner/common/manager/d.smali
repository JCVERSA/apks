.class public Lcom/mbridge/msdk/mbbanner/common/manager/d;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private A:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field private B:Lcom/iab/omid/library/mmadbridge/adsession/a;

.field private final C:Landroid/os/Handler;

.field private final D:Lcom/mbridge/msdk/foundation/same/task/a;

.field private E:F

.field private F:F

.field private final G:Landroid/view/View$OnClickListener;

.field private H:Lcom/mbridge/msdk/mbbanner/common/listener/a;

.field private I:Lcom/mbridge/msdk/mbsignalcommon/listener/b;

.field protected a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

.field private b:Z

.field protected c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field protected final d:Lcom/mbridge/msdk/out/MBBannerView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field protected o:Z

.field protected final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field t:Lcom/mbridge/msdk/click/a;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:I

.field private final y:J

.field private z:Lcom/mbridge/msdk/mbbanner/common/communication/b;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/out/MBBannerView;Lcom/mbridge/msdk/mbbanner/common/listener/c;Ljava/lang/String;Ljava/lang/String;ZLcom/mbridge/msdk/setting/l;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->s:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->v:I

    .line 9
    .line 10
    iput v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->w:I

    .line 11
    .line 12
    const-wide/16 v0, 0x3a98

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->y:J

    .line 15
    .line 16
    new-instance v0, Lcom/mbridge/msdk/mbbanner/common/manager/d$e;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/mbbanner/common/manager/d$e;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->C:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v0, Lcom/mbridge/msdk/mbbanner/common/manager/d$f;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d$f;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->D:Lcom/mbridge/msdk/foundation/same/task/a;

    .line 33
    .line 34
    new-instance v0, Lcom/mbridge/msdk/mbbanner/common/manager/d$g;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d$g;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->G:Landroid/view/View$OnClickListener;

    .line 40
    .line 41
    new-instance v0, Lcom/mbridge/msdk/mbbanner/common/manager/d$h;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d$h;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->H:Lcom/mbridge/msdk/mbbanner/common/listener/a;

    .line 47
    .line 48
    new-instance v0, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d$c;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->I:Lcom/mbridge/msdk/mbsignalcommon/listener/b;

    .line 54
    .line 55
    iput-boolean p5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b:Z

    .line 56
    .line 57
    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    .line 58
    .line 59
    iput-object p4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    .line 60
    .line 61
    iput-object p3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->q:Ljava/lang/String;

    .line 62
    .line 63
    new-instance p1, Lcom/mbridge/msdk/mbbanner/common/listener/e;

    .line 64
    .line 65
    invoke-direct {p1, p2, p6}, Lcom/mbridge/msdk/mbbanner/common/listener/e;-><init>(Lcom/mbridge/msdk/mbbanner/common/listener/c;Lcom/mbridge/msdk/setting/l;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    .line 69
    .line 70
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/manager/d;F)F
    .locals 0

    .line 5
    iput p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->E:F

    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/manager/d;I)I
    .locals 0

    .line 7
    iput p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->s:I

    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/manager/d;Lcom/iab/omid/library/mmadbridge/adsession/a;)Lcom/iab/omid/library/mmadbridge/adsession/a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->B:Lcom/iab/omid/library/mmadbridge/adsession/a;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/manager/d;)Lcom/iab/omid/library/mmadbridge/adsession/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->A:Lcom/iab/omid/library/mmadbridge/adsession/b;

    return-object p0
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/lang/String;
    .locals 2

    .line 17
    const-string v0, ""

    if-eqz p1, :cond_0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:////"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BannerShowManager"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 33
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/manager/d$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d$b;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 36
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v5

    sget v8, Lcom/mbridge/msdk/click/retry/a;->m:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 37
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->k()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->k()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->D:Lcom/mbridge/msdk/foundation/same/task/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/manager/d;Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/manager/d;Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    .line 56
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v0

    .line 57
    iget v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->w:I

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g(I)V

    .line 58
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 59
    const-string v2, "result"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string p2, "reason"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v1, p2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 62
    :goto_1
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->d(I)V

    .line 63
    const-string p1, "2000068"

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 64
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BannerShowManager"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_3

    .line 41
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;)Lcom/mbridge/msdk/widget/FeedBackButton;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/feedback/b;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez p1, :cond_1

    .line 47
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/mbridge/msdk/foundation/feedback/b;->e:I

    sget v2, Lcom/mbridge/msdk/foundation/feedback/b;->d:I

    invoke-direct {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_1
    const/16 v1, 0xc

    .line 48
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/manager/d$d;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d$d;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    .line 52
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_3
    return-void
.end method

.method private a()Z
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpReportType()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->n:Z

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/manager/d;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbbanner/common/manager/d;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->F:F

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbbanner/common/manager/d;)Lcom/iab/omid/library/mmadbridge/adsession/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->B:Lcom/iab/omid/library/mmadbridge/adsession/a;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 20
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->k()V

    .line 21
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/mbbanner/common/util/BannerUtils;->inserCloseId(Ljava/lang/String;Ljava/util/List;)V

    .line 34
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->j()V

    .line 35
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    if-eqz v0, :cond_4

    .line 36
    invoke-interface {v0}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->b()V

    .line 37
    :cond_4
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->i()V

    return-void
.end method

.method private b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 40
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/mbridge/msdk/click/retry/a;->n:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BannerShowManager"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbbanner/common/manager/d;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/mbbanner/common/manager/d;)Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    return-object p0
.end method

.method private c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    .line 7
    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BannerShowManager"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/mbbanner/common/manager/d;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->m:Z

    return p1
.end method

.method static synthetic d(Lcom/mbridge/msdk/mbbanner/common/manager/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->v:I

    return p0
.end method

.method private declared-synchronized d()Z
    .locals 3

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic e(Lcom/mbridge/msdk/mbbanner/common/manager/d;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->E:F

    return p0
.end method

.method private e()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/mbbanner/common/manager/d;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->F:F

    return p0
.end method

.method private f()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    .line 4
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_banner_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    const-string v1, "closeButton"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/mbbanner/common/manager/d;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method private g()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    .line 7
    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/manager/d$j;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d$j;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/manager/d$k;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d$k;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d$l;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v1, 0xd6daf

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    .line 13
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    goto :goto_0

    .line 15
    :cond_3
    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v1, 0xd6dae

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    .line 16
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->o()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->A:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->c()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->A:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 5
    const-string v0, "omsdk"

    const-string v1, " adSession.finish() "

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->m()V

    return-void
.end method

.method static synthetic j(Lcom/mbridge/msdk/mbbanner/common/manager/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->r:Ljava/lang/String;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->w:I

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g(I)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Z)V

    .line 6
    const-string v1, "2000152"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerShowManager"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private k()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->w:I

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g(I)V

    .line 5
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 6
    const-string v2, "close_click_type"

    iget v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    const-string v2, "creative_id"

    iget-object v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCreativeId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    const-string v2, "2000069"

    invoke-static {v2, v0, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerShowManager"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b()V

    return-void
.end method

.method private l()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->w:I

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g(I)V

    .line 5
    const-string v1, "2000133"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerShowManager"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic l(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e()V

    return-void
.end method

.method private m()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPrivacyButtonTemplateVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    :goto_0
    new-instance v0, Lcom/mbridge/msdk/widget/MBAdChoice;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/widget/MBAdChoice;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/widget/MBAdChoice;->setCampaign(Lcom/mbridge/msdk/out/Campaign;)V

    .line 7
    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/manager/d$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d$a;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/widget/MBAdChoice;->setFeedbackDialogEventListener(Lcom/mbridge/msdk/foundation/feedback/a;)V

    .line 8
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 11
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic m(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->n()V

    return-void
.end method

.method private n()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p()V

    return-void
.end method

.method private o()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->w:I

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 12
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Z)V

    :cond_3
    return-void
.end method

.method static synthetic o(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g()V

    return-void
.end method

.method private p()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->k:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->l:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->l:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->C:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->D:Lcom/mbridge/msdk/foundation/same/task/a;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isCallbacked()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCallbacked(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0, v2}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->a(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget-object v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v0, v2, v3}, Lcom/mbridge/msdk/click/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->k:Z

    .line 69
    .line 70
    if-eqz v0, :cond_12

    .line 71
    .line 72
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->i:Z

    .line 73
    .line 74
    if-eqz v0, :cond_12

    .line 75
    .line 76
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->j:Z

    .line 77
    .line 78
    if-eqz v0, :cond_12

    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->l:Z

    .line 81
    .line 82
    if-eqz v0, :cond_12

    .line 83
    .line 84
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 85
    .line 86
    if-eqz v0, :cond_12

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_12

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const-wide/16 v2, 0x3e8

    .line 99
    .line 100
    if-nez v0, :cond_1

    .line 101
    .line 102
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    .line 103
    .line 104
    if-eqz v4, :cond_1

    .line 105
    .line 106
    new-instance v5, Lcom/mbridge/msdk/mbbanner/common/manager/d$m;

    .line 107
    .line 108
    invoke-direct {v5, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d$m;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v5, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    .line 113
    .line 114
    :cond_1
    iget-boolean v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->m:Z

    .line 115
    .line 116
    const/4 v5, 0x2

    .line 117
    const-string v6, "BannerShowManager"

    .line 118
    .line 119
    const/4 v7, 0x0

    .line 120
    if-eqz v4, :cond_3

    .line 121
    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    const-string v4, "onBannerWebViewShow && transInfoToMraid"

    .line 125
    .line 126
    invoke-static {v6, v4}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-array v4, v5, [I

    .line 130
    .line 131
    iget-object v8, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    .line 132
    .line 133
    invoke-virtual {v8, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 134
    .line 135
    .line 136
    iget-object v8, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 137
    .line 138
    aget v9, v4, v7

    .line 139
    .line 140
    int-to-float v9, v9

    .line 141
    aget v10, v4, v1

    .line 142
    .line 143
    int-to-float v10, v10

    .line 144
    invoke-static {v8, v9, v10}, Lcom/mbridge/msdk/mbbanner/common/communication/a;->a(Landroid/webkit/WebView;FF)V

    .line 145
    .line 146
    .line 147
    iget-object v8, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 148
    .line 149
    aget v9, v4, v7

    .line 150
    .line 151
    aget v4, v4, v1

    .line 152
    .line 153
    iget-object v10, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    .line 154
    .line 155
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    iget-object v11, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    .line 160
    .line 161
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    invoke-static {v8, v9, v4, v10, v11}, Lcom/mbridge/msdk/mbbanner/common/communication/a;->a(Landroid/webkit/WebView;IIII)V

    .line 166
    .line 167
    .line 168
    iput-boolean v7, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->m:Z

    .line 169
    .line 170
    iput v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->w:I

    .line 171
    .line 172
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 173
    .line 174
    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-nez v4, :cond_2

    .line 183
    .line 184
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-static {v4}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    iget-object v8, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 197
    .line 198
    invoke-virtual {v8}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->l()V

    .line 206
    .line 207
    .line 208
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v8, "showSuccessed:"

    .line 214
    .line 215
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v8, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 219
    .line 220
    invoke-virtual {v8}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-static {v6, v4}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    if-eqz v0, :cond_11

    .line 235
    .line 236
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    .line 237
    .line 238
    const-string v4, "banner"

    .line 239
    .line 240
    if-eqz v0, :cond_4

    .line 241
    .line 242
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-nez v0, :cond_4

    .line 247
    .line 248
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 249
    .line 250
    if-eqz v0, :cond_8

    .line 251
    .line 252
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V

    .line 258
    .line 259
    .line 260
    iput v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->w:I

    .line 261
    .line 262
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    .line 263
    .line 264
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 265
    .line 266
    invoke-static {v0, v5, v4}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 272
    .line 273
    if-eqz v0, :cond_8

    .line 274
    .line 275
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-lez v0, :cond_8

    .line 280
    .line 281
    move v0, v7

    .line 282
    move v5, v0

    .line 283
    move v6, v5

    .line 284
    :goto_0
    iget-object v8, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 285
    .line 286
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-ge v0, v8, :cond_7

    .line 291
    .line 292
    iget-object v8, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 293
    .line 294
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    check-cast v8, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 299
    .line 300
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isHasMBTplMark()Z

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    if-nez v8, :cond_6

    .line 305
    .line 306
    if-eqz v0, :cond_5

    .line 307
    .line 308
    iget-object v8, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 309
    .line 310
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    check-cast v8, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 315
    .line 316
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReport()Z

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    if-nez v8, :cond_6

    .line 321
    .line 322
    :cond_5
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 323
    .line 324
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    check-cast v5, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 329
    .line 330
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    iget-object v8, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    .line 339
    .line 340
    invoke-direct {p0, v5, v6, v8}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 344
    .line 345
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    check-cast v5, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 350
    .line 351
    invoke-virtual {v5, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V

    .line 352
    .line 353
    .line 354
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    .line 355
    .line 356
    iget-object v6, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 357
    .line 358
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    check-cast v6, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 363
    .line 364
    invoke-static {v5, v6, v4}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    move v6, v0

    .line 368
    move v5, v1

    .line 369
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 370
    .line 371
    goto :goto_0

    .line 372
    :cond_7
    if-eqz v5, :cond_8

    .line 373
    .line 374
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 375
    .line 376
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 381
    .line 382
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    .line 391
    .line 392
    invoke-direct {p0, v0, v4, v5}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 396
    .line 397
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 402
    .line 403
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    .line 412
    .line 413
    invoke-direct {p0, v0, v4, v5}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    :cond_8
    :goto_1
    iput-boolean v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->o:Z

    .line 417
    .line 418
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    .line 419
    .line 420
    if-eqz v0, :cond_9

    .line 421
    .line 422
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 423
    .line 424
    invoke-interface {v0, v4}, Lcom/mbridge/msdk/mbbanner/common/listener/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 425
    .line 426
    .line 427
    :cond_9
    const/4 v0, 0x0

    .line 428
    :try_start_0
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 429
    .line 430
    if-eqz v4, :cond_d

    .line 431
    .line 432
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-eqz v4, :cond_d

    .line 437
    .line 438
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 447
    .line 448
    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    iget-object v8, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 453
    .line 454
    invoke-static {v4, v5, v6, v8}, Lcom/mbridge/msdk/omsdk/b;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    iput-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->A:Lcom/iab/omid/library/mmadbridge/adsession/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 459
    .line 460
    if-eqz v4, :cond_c

    .line 461
    .line 462
    :try_start_1
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 463
    .line 464
    invoke-virtual {v4, v5}, Lcom/iab/omid/library/mmadbridge/adsession/b;->d(Landroid/view/View;)V

    .line 465
    .line 466
    .line 467
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    .line 468
    .line 469
    if-eqz v4, :cond_a

    .line 470
    .line 471
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->A:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 472
    .line 473
    sget-object v6, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    .line 474
    .line 475
    invoke-virtual {v5, v4, v6, v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    goto :goto_2

    .line 479
    :catch_0
    move-exception v4

    .line 480
    goto :goto_3

    .line 481
    :cond_a
    :goto_2
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    .line 482
    .line 483
    if-eqz v4, :cond_b

    .line 484
    .line 485
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->A:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 486
    .line 487
    sget-object v6, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    .line 488
    .line 489
    invoke-virtual {v5, v4, v6, v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    :cond_b
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->A:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 493
    .line 494
    invoke-virtual {v4}, Lcom/iab/omid/library/mmadbridge/adsession/b;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 495
    .line 496
    .line 497
    goto :goto_4

    .line 498
    :goto_3
    :try_start_2
    const-string v5, "OMSDK"

    .line 499
    .line 500
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    invoke-static {v5, v4}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    goto :goto_4

    .line 508
    :cond_c
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 509
    .line 510
    if-eqz v4, :cond_d

    .line 511
    .line 512
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v9

    .line 516
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 517
    .line 518
    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v11

    .line 522
    iget-object v12, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    .line 523
    .line 524
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 525
    .line 526
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v10

    .line 530
    new-instance v8, Lcom/mbridge/msdk/foundation/same/report/h;

    .line 531
    .line 532
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    invoke-direct {v8, v4}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    .line 541
    .line 542
    .line 543
    const-string v13, "fetch OM failed, context null"

    .line 544
    .line 545
    invoke-virtual/range {v8 .. v13}, Lcom/mbridge/msdk/foundation/same/report/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 546
    .line 547
    .line 548
    goto :goto_4

    .line 549
    :catch_1
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 550
    .line 551
    if-eqz v4, :cond_d

    .line 552
    .line 553
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v9

    .line 557
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 558
    .line 559
    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v11

    .line 563
    iget-object v12, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    .line 564
    .line 565
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 566
    .line 567
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v10

    .line 571
    new-instance v8, Lcom/mbridge/msdk/foundation/same/report/h;

    .line 572
    .line 573
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 578
    .line 579
    .line 580
    move-result-object v4

    .line 581
    invoke-direct {v8, v4}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    .line 582
    .line 583
    .line 584
    const-string v13, "fetch OM failed, context null"

    .line 585
    .line 586
    invoke-virtual/range {v8 .. v13}, Lcom/mbridge/msdk/foundation/same/report/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    :cond_d
    :goto_4
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->C:Landroid/os/Handler;

    .line 590
    .line 591
    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 592
    .line 593
    .line 594
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    .line 599
    .line 600
    iget-object v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 601
    .line 602
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    if-eqz v1, :cond_12

    .line 611
    .line 612
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h:Landroid/widget/ImageView;

    .line 613
    .line 614
    if-nez v2, :cond_e

    .line 615
    .line 616
    new-instance v2, Landroid/widget/ImageView;

    .line 617
    .line 618
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 619
    .line 620
    .line 621
    move-result-object v3

    .line 622
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 627
    .line 628
    .line 629
    iput-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h:Landroid/widget/ImageView;

    .line 630
    .line 631
    :cond_e
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h:Landroid/widget/ImageView;

    .line 632
    .line 633
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    if-eqz v2, :cond_f

    .line 638
    .line 639
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h:Landroid/widget/ImageView;

    .line 640
    .line 641
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    .line 643
    .line 644
    :cond_f
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h:Landroid/widget/ImageView;

    .line 645
    .line 646
    iget-object v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    .line 647
    .line 648
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    invoke-static {v2, v1, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Landroid/util/DisplayMetrics;)Landroid/widget/ImageView;

    .line 657
    .line 658
    .line 659
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h:Landroid/widget/ImageView;

    .line 660
    .line 661
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    if-nez v1, :cond_10

    .line 666
    .line 667
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    .line 668
    .line 669
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h:Landroid/widget/ImageView;

    .line 670
    .line 671
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 672
    .line 673
    const/4 v4, -0x1

    .line 674
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    .line 679
    .line 680
    :cond_10
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->A:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 681
    .line 682
    if-eqz v1, :cond_12

    .line 683
    .line 684
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->h:Landroid/widget/ImageView;

    .line 685
    .line 686
    sget-object v3, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    .line 687
    .line 688
    invoke-virtual {v1, v2, v3, v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    goto :goto_5

    .line 692
    :cond_11
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 693
    .line 694
    invoke-virtual {v0, v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V

    .line 695
    .line 696
    .line 697
    :cond_12
    :goto_5
    return-void
.end method

.method private q()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_7

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_5

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    :try_start_0
    new-instance v1, Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 24
    .line 25
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct {v1, v4}, Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 37
    .line 38
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    .line 40
    const/4 v5, -0x1

    .line 41
    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 48
    .line 49
    new-instance v4, Lcom/mbridge/msdk/mbbanner/view/a;

    .line 50
    .line 51
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v6, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 54
    .line 55
    iget-object v7, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->H:Lcom/mbridge/msdk/mbbanner/common/listener/a;

    .line 56
    .line 57
    invoke-direct {v4, v5, v6, v7}, Lcom/mbridge/msdk/mbbanner/view/a;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/mbridge/msdk/mbbanner/common/listener/a;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    const v0, 0xd6d9d

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/error/a;->a(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {p0, v0, v3}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    const/16 v4, 0x8

    .line 80
    .line 81
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-nez v1, :cond_3

    .line 104
    .line 105
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Z)V

    .line 119
    .line 120
    .line 121
    :cond_3
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->m()V

    .line 130
    .line 131
    .line 132
    :cond_4
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->n()V

    .line 133
    .line 134
    .line 135
    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/communication/b;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iget-object v4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->q:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    .line 146
    .line 147
    invoke-direct {v1, v2, v4, v5}, Lcom/mbridge/msdk/mbbanner/common/communication/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iput-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->z:Lcom/mbridge/msdk/mbbanner/common/communication/b;

    .line 151
    .line 152
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->u:Ljava/util/List;

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/mbbanner/common/communication/b;->a(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->z:Lcom/mbridge/msdk/mbbanner/common/communication/b;

    .line 158
    .line 159
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->H:Lcom/mbridge/msdk/mbbanner/common/listener/a;

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/mbbanner/common/communication/b;->a(Lcom/mbridge/msdk/mbbanner/common/listener/a;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->z:Lcom/mbridge/msdk/mbbanner/common/communication/b;

    .line 165
    .line 166
    iget v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->x:I

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/mbbanner/common/communication/b;->a(I)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 172
    .line 173
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->I:Lcom/mbridge/msdk/mbsignalcommon/listener/b;

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mbridge/msdk/mbsignalcommon/windvane/c;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 179
    .line 180
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->z:Lcom/mbridge/msdk/mbbanner/common/communication/b;

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 191
    .line 192
    if-eqz v0, :cond_6

    .line 193
    .line 194
    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/manager/d$i;

    .line 195
    .line 196
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d$i;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V

    .line 197
    .line 198
    .line 199
    const-wide/16 v4, 0x3e8

    .line 200
    .line 201
    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_5
    const v0, 0xd6dae

    .line 206
    .line 207
    .line 208
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/error/a;->a(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const/4 v2, 0x2

    .line 213
    invoke-direct {p0, v1, v2}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    new-instance v1, Lcom/mbridge/msdk/foundation/error/b;

    .line 217
    .line 218
    invoke-direct {v1, v0}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->r:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    .line 227
    .line 228
    .line 229
    :cond_6
    :goto_1
    return v3

    .line 230
    :cond_7
    return v2
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object p3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    invoke-static {p3, p1, p2}, Lcom/mbridge/msdk/mbbanner/common/communication/a;->a(Landroid/webkit/WebView;II)V

    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->r:Ljava/lang/String;

    return-void
.end method

.method public a(ZI)V
    .locals 1

    .line 9
    iput p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->x:I

    if-eqz p2, :cond_0

    .line 10
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b:Z

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->g()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 3

    .line 4
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/mbridge/msdk/foundation/error/b;

    const v0, 0xd6dab

    invoke-direct {p1, v0}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->C:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->D:Lcom/mbridge/msdk/foundation/same/task/a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f()V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->k:Z

    .line 11
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->l:Z

    .line 12
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->o:Z

    .line 13
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->C:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->D:Lcom/mbridge/msdk/foundation/same/task/a;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->q()Z

    move-result p1

    if-nez p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const p1, 0xd6db0

    .line 18
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/error/a;->a(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Ljava/lang/String;I)V

    .line 19
    :cond_4
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g()V

    :cond_5
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->i:Z

    .line 39
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p()V

    return-void
.end method

.method public c()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->w:I

    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->b:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->j:Z

    .line 5
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->i()V

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iput-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a:Lcom/mbridge/msdk/mbbanner/common/listener/c;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mbridge/msdk/mbsignalcommon/windvane/c;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->I:Lcom/mbridge/msdk/mbsignalcommon/listener/b;

    if-eqz v0, :cond_2

    .line 9
    iput-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->I:Lcom/mbridge/msdk/mbsignalcommon/listener/b;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d:Lcom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f:Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->z:Lcom/mbridge/msdk/mbbanner/common/communication/b;

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbanner/common/communication/b;->a()V

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->H:Lcom/mbridge/msdk/mbbanner/common/listener/a;

    if-eqz v0, :cond_8

    .line 21
    iput-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->H:Lcom/mbridge/msdk/mbbanner/common/listener/a;

    .line 22
    :cond_8
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;)V

    return-void
.end method
