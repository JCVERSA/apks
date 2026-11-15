.class public Lcom/mbridge/msdk/advanced/manager/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Ljava/lang/String;

.field protected b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field protected c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

.field protected d:Lcom/mbridge/msdk/advanced/middle/d;

.field protected e:Lcom/mbridge/msdk/click/a;

.field private f:Lcom/mbridge/msdk/advanced/middle/c;

.field private g:Z

.field private h:I

.field private i:Landroid/widget/ImageView;

.field protected j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field protected l:Lcom/mbridge/msdk/out/MBridgeIds;

.field private m:Z

.field private n:Landroid/view/View$OnClickListener;

.field public o:Landroid/os/Handler;

.field private p:Lcom/mbridge/msdk/advanced/middle/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NativeAdvancedShowManager"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->h:I

    .line 10
    .line 11
    new-instance v0, Lcom/mbridge/msdk/advanced/manager/a$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/advanced/manager/a$a;-><init>(Lcom/mbridge/msdk/advanced/manager/a;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->n:Landroid/view/View$OnClickListener;

    .line 17
    .line 18
    new-instance v0, Lcom/mbridge/msdk/advanced/manager/a$b;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/advanced/manager/a$b;-><init>(Lcom/mbridge/msdk/advanced/manager/a;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->o:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance v0, Lcom/mbridge/msdk/advanced/manager/a$c;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/advanced/manager/a$c;-><init>(Lcom/mbridge/msdk/advanced/manager/a;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->p:Lcom/mbridge/msdk/advanced/middle/a;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->k:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 41
    .line 42
    invoke-direct {v0, p2, p3}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->l:Lcom/mbridge/msdk/out/MBridgeIds;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->i:Landroid/widget/ImageView;

    .line 48
    .line 49
    if-nez p2, :cond_0

    .line 50
    .line 51
    new-instance p2, Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->i:Landroid/widget/ImageView;

    .line 57
    .line 58
    const/high16 p3, 0x40000000    # 2.0f

    .line 59
    .line 60
    invoke-static {p1, p3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {p1, p3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-static {p1, p3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-static {p1, p3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/mbridge/msdk/advanced/manager/a;->d()V

    .line 80
    .line 81
    .line 82
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/a;->l:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/advanced/middle/d;->c(Lcom/mbridge/msdk/out/MBridgeIds;)V

    .line 79
    iput-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    .line 80
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v2}, Lcom/mbridge/msdk/advanced/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, p1, v2}, Lcom/mbridge/msdk/advanced/report/a;->a(Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 82
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lcom/mbridge/msdk/advanced/manager/a;->e()V

    .line 85
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->getAdvancedNativeWebview()Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->finishAdSession()V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a;->o:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/advanced/manager/a;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/advanced/manager/a;->a(I)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isHasMBTplMark()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/advanced/manager/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V

    .line 72
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    const-string v1, "h5_native"

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/advanced/manager/a;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/advanced/manager/a;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 89
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/controller/a;->a(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbridge/msdk/advanced/manager/a$f;

    invoke-direct {v1, p0, p2, p1}, Lcom/mbridge/msdk/advanced/manager/a$f;-><init>(Lcom/mbridge/msdk/advanced/manager/a;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v5

    sget v8, Lcom/mbridge/msdk/click/retry/a;->m:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 94
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

    .line 95
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

.method static synthetic a(Lcom/mbridge/msdk/advanced/manager/a;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/mbridge/msdk/advanced/manager/a;->g:Z

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/advanced/manager/a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mbridge/msdk/advanced/manager/a;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/advanced/manager/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/advanced/manager/a;->h:I

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/advanced/manager/a;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mbridge/msdk/advanced/manager/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
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

    .line 6
    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
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
    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->i:Landroid/widget/ImageView;

    .line 10
    .line 11
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->i:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 27
    .line 28
    const/high16 v2, 0x41e80000    # 29.0f

    .line 29
    .line 30
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/high16 v3, 0x41800000    # 16.0f

    .line 35
    .line 36
    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/a;->i:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->i:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "mbridge_native_advanced_close_icon"

    .line 63
    .line 64
    const-string v4, "drawable"

    .line 65
    .line 66
    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReport()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/advanced/manager/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/advanced/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->l:Lcom/mbridge/msdk/out/MBridgeIds;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/advanced/middle/d;->e(Lcom/mbridge/msdk/out/MBridgeIds;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->setAdChoiceCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/c;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/mbridge/msdk/advanced/middle/c;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a;->f:Lcom/mbridge/msdk/advanced/middle/c;

    return-void
.end method

.method public a(Lcom/mbridge/msdk/advanced/middle/d;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;Z)V
    .locals 7

    const-string v0, "OMSDK"

    if-nez p2, :cond_0

    return-void

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 12
    iput-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 13
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    new-instance v3, Lcom/mbridge/msdk/advanced/manager/a$d;

    invoke-direct {v3, p0, p2}, Lcom/mbridge/msdk/advanced/manager/a$d;-><init>(Lcom/mbridge/msdk/advanced/manager/a;Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;)V

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    .line 14
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/feedback/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;)Lcom/mbridge/msdk/widget/FeedBackButton;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 19
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/mbridge/msdk/foundation/feedback/b;->e:I

    sget v4, Lcom/mbridge/msdk/foundation/feedback/b;->d:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_1
    const/16 v3, 0xc

    .line 20
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 22
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    :cond_2
    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    :cond_3
    iget-boolean v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->g:Z

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/advanced/manager/a;->a(Z)V

    .line 25
    invoke-virtual {p2}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->getAdvancedNativeSignalCommunicationImpl()Lcom/mbridge/msdk/advanced/signal/b;

    move-result-object v1

    if-nez v1, :cond_4

    .line 26
    new-instance v1, Lcom/mbridge/msdk/advanced/signal/b;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/manager/a;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/mbridge/msdk/advanced/signal/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/advanced/signal/b;->a(Ljava/util/List;)V

    .line 30
    :cond_4
    iget-boolean v2, p0, Lcom/mbridge/msdk/advanced/manager/a;->g:Z

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/advanced/signal/b;->a(I)V

    .line 31
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/a;->p:Lcom/mbridge/msdk/advanced/middle/a;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/advanced/signal/b;->a(Lcom/mbridge/msdk/advanced/middle/a;)V

    .line 32
    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->setAdvancedNativeSignalCommunicationImpl(Lcom/mbridge/msdk/advanced/signal/b;)V

    .line 33
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isHasMBTplMark()Z

    move-result v1

    if-nez v1, :cond_5

    .line 34
    iget-boolean v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->g:Z

    if-nez v1, :cond_6

    .line 35
    :cond_5
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :cond_6
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/advanced/manager/a;->a(Landroid/view/View;)V

    .line 37
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->setCloseView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 39
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_7
    invoke-virtual {p2}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->getAdvancedNativeWebview()Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Landroid/view/View;I)Z

    move-result v1

    .line 41
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/a;->f:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v2, :cond_c

    if-nez v1, :cond_c

    invoke-virtual {v2}, Lcom/mbridge/msdk/advanced/middle/c;->d()Lcom/mbridge/msdk/advanced/view/MBOutNativeAdvancedViewGroup;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->f:Lcom/mbridge/msdk/advanced/middle/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/advanced/middle/c;->d()Lcom/mbridge/msdk/advanced/view/MBOutNativeAdvancedViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_c

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->f:Lcom/mbridge/msdk/advanced/middle/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/advanced/middle/c;->d()Lcom/mbridge/msdk/advanced/view/MBOutNativeAdvancedViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->m:Z

    if-eqz v1, :cond_8

    goto/16 :goto_2

    .line 42
    :cond_8
    invoke-virtual {p2}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->show()V

    .line 43
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Landroid/content/Context;)V

    .line 44
    iget-object p3, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object p3

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-virtual {p3, v1, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 46
    iget-object p3, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 47
    invoke-virtual {p2}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->getAdvancedNativeWebview()Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 48
    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v1, p3, v2, v3}, Lcom/mbridge/msdk/omsdk/b;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/iab/omid/library/mmadbridge/adsession/b;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 49
    invoke-virtual {p3, v1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 50
    invoke-virtual {v1, p3}, Lcom/iab/omid/library/mmadbridge/adsession/b;->d(Landroid/view/View;)V

    .line 51
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->g()V

    .line 52
    const-string p3, "adSession.start()"

    invoke-static {v0, p3}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    .line 53
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_9

    .line 55
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 56
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v3

    .line 57
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v4

    .line 58
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/h;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetch OM failed, exception"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/mbridge/msdk/advanced/manager/a;->h()V

    .line 60
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 61
    invoke-direct {p0}, Lcom/mbridge/msdk/advanced/manager/a;->i()V

    .line 62
    :cond_a
    iget p3, p0, Lcom/mbridge/msdk/advanced/manager/a;->h:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_b

    .line 63
    invoke-virtual {p2, p3}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->changeCloseBtnState(I)V

    .line 64
    :cond_b
    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-static {p2}, Lcom/mbridge/msdk/advanced/manager/d;->b(Ljava/lang/String;)V

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/mbridge/msdk/advanced/manager/a;->k:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/common/c;->b(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a;->o:Landroid/os/Handler;

    const/4 p2, 0x2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result p2

    iget-object p3, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mbridge/msdk/click/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_c
    :goto_2
    if-eqz p3, :cond_d

    .line 68
    new-instance p3, Lcom/mbridge/msdk/advanced/manager/a$e;

    invoke-direct {p3, p0, p1, p2}, Lcom/mbridge/msdk/advanced/manager/a$e;-><init>(Lcom/mbridge/msdk/advanced/manager/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/mbridge/msdk/advanced/manager/a;->g:Z

    return-void
.end method

.method public b()Lcom/mbridge/msdk/advanced/middle/a;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->p:Lcom/mbridge/msdk/advanced/middle/a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->getAdvancedNativeWebview()Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->isDestoryed()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "onViewDisappeared"

    .line 22
    .line 23
    const-string v3, ""

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->getAdvancedNativeWebview()Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->isDestoryed()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string v1, "onViewAppeared"

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/advanced/signal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->d:Lcom/mbridge/msdk/advanced/middle/d;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->p:Lcom/mbridge/msdk/advanced/middle/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iput-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->p:Lcom/mbridge/msdk/advanced/middle/a;

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->n:Landroid/view/View$OnClickListener;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iput-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->n:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->getAdvancedNativeWebview()Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->finishAdSession()V

    .line 31
    .line 32
    .line 33
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->destroy()V

    .line 36
    .line 37
    .line 38
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a;->f:Lcom/mbridge/msdk/advanced/middle/c;

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->f:Lcom/mbridge/msdk/advanced/middle/c;

    .line 43
    .line 44
    :cond_5
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
