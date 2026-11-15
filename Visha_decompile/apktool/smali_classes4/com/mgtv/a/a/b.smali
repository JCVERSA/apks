.class public Lcom/mgtv/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/mgmi/model/VASTAd;

.field private h:Lcom/mgmi/net/bean/BootDataItem;

.field private i:Lcom/mgmi/e/a/d;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/mgmi/ads/api/e;

.field private l:Lcom/mgmi/ads/api/a;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/mgtv/a/a/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/a/b;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mgtv/a/a/b;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mgtv/a/a/b;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/a/a/b;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mgtv/a/a/b;->e:Z

    instance-of v0, p2, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/mgmi/model/VASTAd;

    iput-object p2, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getVastAid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mgtv/a/a/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/mgmi/net/bean/BootAdBean;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/mgmi/net/bean/BootAdBean;

    iget-object p2, p2, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-object p2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    const-string p2, ""

    iput-object p2, p0, Lcom/mgtv/a/a/b;->f:Ljava/lang/String;

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/mgtv/a/a/b;->j:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/mgtv/a/a/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/a/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/a/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;ILm5d$b;)V
    .locals 1

    .line 115
    :try_start_0
    invoke-static {p1}, Lh2d;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/mgmi/ViewGroup/a/a;

    invoke-direct {v0, p1}, Lcom/mgmi/ViewGroup/a/a;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, p2}, Lcom/mgmi/ViewGroup/a/a;->a(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_common_cancel:I

    invoke-virtual {p1, p2}, Lcom/mgmi/ViewGroup/a/a;->b(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_common_confim:I

    .line 118
    invoke-virtual {p1, p2}, Lcom/mgmi/ViewGroup/a/a;->c(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object p1

    new-instance p2, Lcom/mgtv/a/a/b$8;

    invoke-direct {p2, p0, v0, v0, p3}, Lcom/mgtv/a/a/b$8;-><init>(Lcom/mgtv/a/a/b;Lcom/mgmi/ViewGroup/a/a;Lcom/mgmi/ViewGroup/a/a;Lm5d$b;)V

    .line 119
    invoke-virtual {p1, p2}, Lcom/mgmi/ViewGroup/a/a;->a(Lcom/mgmi/ViewGroup/a/a$a;)Lcom/mgmi/ViewGroup/a/a;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/a/a;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_1

    .line 122
    invoke-interface {p3}, Lm5d$b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/ads/api/e;)V
    .locals 9

    .line 107
    :try_start_0
    new-instance v3, Lcom/mgmi/ViewGroup/a/a;

    invoke-direct {v3, p1}, Lcom/mgmi/ViewGroup/a/a;-><init>(Landroid/content/Context;)V

    .line 108
    sget v0, Lcom/mgmi/R$string;->mgmi_confim_leave:I

    invoke-virtual {v3, v0}, Lcom/mgmi/ViewGroup/a/a;->a(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_common_cancel:I

    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->b(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_common_confim:I

    .line 109
    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->c(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v7

    new-instance v8, Lcom/mgtv/a/a/b$7;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v3

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/a/a/b$7;-><init>(Lcom/mgtv/a/a/b;Lcom/mgmi/ViewGroup/a/a;Lcom/mgmi/ViewGroup/a/a;Lcom/mgmi/ads/api/e;Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v7, v8}, Lcom/mgmi/ViewGroup/a/a;->a(Lcom/mgmi/ViewGroup/a/a$a;)Lcom/mgmi/ViewGroup/a/a;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/a/a;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    invoke-static {p1, p2}, Lh2d;->e(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/mgmi/model/VASTAd;Ldkd;Lcom/mgmi/model/Clicks;Ljava/lang/String;)V
    .locals 8
    .param p2    # Ldkd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {p2}, Ldkd;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    if-eqz v0, :cond_3

    .line 85
    instance-of v0, p1, Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_1

    .line 86
    move-object v0, p1

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getDelayRandTime()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    new-instance v7, Lcom/mgtv/a/a/b$6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mgtv/a/a/b$6;-><init>(Lcom/mgtv/a/a/b;Lcom/mgmi/model/VASTAd;Ldkd;Lcom/mgmi/model/Clicks;Ljava/lang/String;)V

    int-to-long p0, v0

    invoke-static {v7, p0, p1}, Lj4d;->c(Ljava/lang/Runnable;J)Z

    return-void

    .line 88
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mgtv/a/a/b;->a(Lcom/mgmi/model/VASTAd;)Lcom/mgmi/e/g;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->f(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p2}, Lcom/mgmi/e/g;->a(Ldkd;)Lcom/mgmi/e/g;

    .line 90
    iget-object p2, p0, Lcom/mgtv/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 91
    invoke-virtual {p3}, Lcom/mgmi/model/Clicks;->getDeepLinkReport()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/mgmi/e/g;->g(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 92
    :cond_2
    iget-object p0, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/a/b;Lcom/mgmi/model/VASTAd;Ldkd;Lcom/mgmi/model/Clicks;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mgtv/a/a/b;->a(Lcom/mgmi/model/VASTAd;Ldkd;Lcom/mgmi/model/Clicks;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/model/Clicks;Lcom/mgmi/ads/api/render/AdWidgetInfo;Ldkd;)V
    .locals 8

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p4, :cond_0

    goto/16 :goto_2

    .line 11
    :cond_0
    invoke-static {}, Lcom/mgmi/f/e;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-static {p2}, Lg4d;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p4}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->getAwayAppType()Lcom/mgmi/ads/api/d;

    move-result-object v0

    sget-object v1, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_YES:Lcom/mgmi/ads/api/d;

    if-ne v0, v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/mgtv/a/a/b;->a()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/mgmi/R$string;->mgmi_confirm_download:I

    new-instance v7, Lcom/mgtv/a/a/b$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mgtv/a/a/b$5;-><init>(Lcom/mgtv/a/a/b;Lcom/mgmi/ads/api/render/AdWidgetInfo;Ljava/lang/String;Ldkd;Lcom/mgmi/model/Clicks;)V

    invoke-direct {p0, p1, v0, v7}, Lcom/mgtv/a/a/b;->a(Landroid/content/Context;ILm5d$b;)V

    return-void

    .line 15
    :cond_1
    invoke-virtual {p4}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-direct {p0, v0, p2}, Lcom/mgtv/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-direct {p0, v1, p5, p3, v0}, Lcom/mgtv/a/a/b;->a(Lcom/mgmi/model/VASTAd;Ldkd;Lcom/mgmi/model/Clicks;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 18
    invoke-virtual {p3}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTraceCheck()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/o;->c(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 19
    :cond_3
    const-string p5, "1"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/mgtv/a/a/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lh2d;->h(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 22
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/mgtv/a/a/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p4}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->getClickUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->getUuid()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->getAwayAppType()Lcom/mgmi/ads/api/d;

    move-result-object p4

    invoke-static {p1, p2, p5, p4}, Lcom/mgadplus/brower/CustomWebActivity;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ads/api/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    .line 24
    invoke-virtual {p3}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTraceCheck()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/o;->c(Ljava/lang/String;Ljava/util/List;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/net/bean/CustomBootAdBean;)V
    .locals 3

    if-nez p3, :cond_1

    .line 25
    sget-object p1, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    .line 26
    iget-object p0, p0, Lcom/mgtv/a/a/b;->l:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0, p1, p3}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    :cond_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p3}, Lcom/mgmi/net/bean/CustomBootAdBean;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p3}, Lcom/mgmi/net/bean/CustomBootAdBean;->getJump_type()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {}, Lcom/mgmi/f/e;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 31
    invoke-static {v0}, Lg4d;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    invoke-direct {p0, p2, v0}, Lcom/mgtv/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 33
    sget-object p1, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    .line 34
    iget-object p0, p0, Lcom/mgtv/a/a/b;->l:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p3, Lcom/mgmi/net/bean/CustomBootAdBean;->isApkDown:Z

    .line 36
    invoke-virtual {p0, p1, p3}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    :cond_2
    return-void

    .line 37
    :cond_3
    const-string p2, "browser"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/mgtv/a/a/b;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lh2d;->h(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 39
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 40
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/mgtv/a/a/b;->a()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3}, Lcom/mgmi/net/bean/CustomBootAdBean;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/mgmi/net/bean/CustomBootAdBean;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mgmi/net/bean/CustomBootAdBean;->getAwayAppType()Lcom/mgmi/ads/api/d;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/mgadplus/brower/CustomWebActivity;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ads/api/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 41
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p2, p2, Lcom/mgmi/net/bean/BootDataItem;->trace:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/mgadplus/mgutil/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object p1, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    .line 44
    iget-object p0, p0, Lcom/mgtv/a/a/b;->l:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_6

    .line 45
    invoke-virtual {p0, p1, p3}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    :cond_6
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/a/b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mgtv/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/mgtv/a/a/b;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lk7d;->c(Landroid/content/Context;)Lk7d;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lk7d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic b(Lcom/mgtv/a/a/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/a/a/b;->d:Z

    return p0
.end method

.method public static synthetic c(Lcom/mgtv/a/a/b;)Lcom/mgmi/model/VASTAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/a/a/b;)Lcom/mgmi/e/a/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    return-object p0
.end method

.method public static synthetic e(Lcom/mgtv/a/a/b;)Lcom/mgmi/ads/api/e;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/a/b;->k:Lcom/mgmi/ads/api/e;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/mgtv/a/a/b;->j:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/mgmi/model/VASTAd;)Lcom/mgmi/e/g;
    .locals 2

    .line 93
    new-instance v0, Lcom/mgmi/e/g;

    invoke-direct {v0}, Lcom/mgmi/e/g;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/mgtv/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->c(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 98
    iget-object p0, p0, Lcom/mgtv/a/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/mgmi/e/g;->d(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object p0

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getCid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/e/g;->e(Ljava/lang/String;)Lcom/mgmi/e/g;

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 47
    :cond_0
    iput-object v1, p0, Lcom/mgtv/a/a/b;->m:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/mgtv/a/a/b;->n:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lg4d;->k(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 50
    array-length v0, p1

    if-lez v0, :cond_d

    const/4 v0, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 51
    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_6

    .line 52
    aget-object v7, p1, v0

    .line 53
    invoke-static {v7}, Lg4d;->n(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v2, v7

    goto :goto_1

    .line 54
    :cond_1
    invoke-static {v7}, Lg4d;->m(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v4, v7

    goto :goto_1

    .line 55
    :cond_2
    invoke-static {v7}, Lg4d;->t(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 56
    invoke-static {}, Lg4d;->f()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v6, v7

    goto :goto_1

    .line 57
    :cond_3
    invoke-static {v7}, Lg4d;->r(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v3, v7

    goto :goto_1

    :cond_4
    move-object v5, v7

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_a

    .line 58
    const-string p1, "MiniProgram://"

    const-string v0, "?username"

    invoke-static {v2, p1, v0}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    .line 59
    iput-object v1, p0, Lcom/mgtv/a/a/b;->m:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/mgtv/a/a/b;->n:Ljava/lang/String;

    :goto_2
    move-object v2, v1

    goto :goto_4

    .line 61
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "://"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_8

    .line 63
    iput-object v1, p0, Lcom/mgtv/a/a/b;->m:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/mgtv/a/a/b;->n:Ljava/lang/String;

    goto :goto_2

    .line 65
    :cond_8
    const-string p1, "path="

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v7, "username="

    if-eqz v0, :cond_9

    .line 66
    const-string v0, "&"

    invoke-static {v2, v7, v0}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/a/b;->m:Ljava/lang/String;

    goto :goto_3

    .line 67
    :cond_9
    invoke-static {v2, v7}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/a/b;->m:Ljava/lang/String;

    .line 68
    :goto_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 69
    invoke-static {v2, p1}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/a/b;->n:Ljava/lang/String;

    :cond_a
    :goto_4
    if-eqz v3, :cond_c

    .line 70
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_e

    .line 71
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 72
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move-object v3, v1

    goto :goto_6

    :cond_c
    if-eqz v6, :cond_e

    .line 73
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_e

    :goto_5
    move-object v3, v6

    goto :goto_6

    :cond_d
    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    .line 74
    :cond_e
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/mgtv/a/a/b;->m:Ljava/lang/String;

    if-eqz p1, :cond_f

    .line 75
    const-string p1, "4"

    iput-object p1, p0, Lcom/mgtv/a/a/b;->a:Ljava/lang/String;

    return-object v2

    .line 76
    :cond_f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 77
    const-string p1, "1"

    iput-object p1, p0, Lcom/mgtv/a/a/b;->a:Ljava/lang/String;

    return-object v3

    .line 78
    :cond_10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "2"

    if-nez p1, :cond_11

    .line 79
    iput-object v0, p0, Lcom/mgtv/a/a/b;->a:Ljava/lang/String;

    return-object v4

    .line 80
    :cond_11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 81
    iput-object v0, p0, Lcom/mgtv/a/a/b;->a:Ljava/lang/String;

    return-object v5

    .line 82
    :cond_12
    const-string p1, "3"

    iput-object p1, p0, Lcom/mgtv/a/a/b;->a:Ljava/lang/String;

    return-object v1
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_2

    .line 126
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 127
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    invoke-static {v1}, Lwrd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public a(Landroid/view/View;Ldkd;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/a/b;->b(Landroid/view/View;Ldkd;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/a/b;->c(Landroid/view/View;Ldkd;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgtv/a/a/b;->l:Lcom/mgmi/ads/api/a;

    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/mgmi/ads/api/e;)Z
    .locals 3

    .line 99
    invoke-static {p1}, Lg4d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/mgtv/a/a/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh2d;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 101
    invoke-static {v0, p1}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_0

    .line 102
    invoke-direct {p0, v0, p1, p3}, Lcom/mgtv/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/ads/api/e;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {v0, p1}, Lh2d;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/a/a/b;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 105
    invoke-static {p0, p1}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 106
    invoke-static {p0, p1}, Lh2d;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTrackingEventFullScreen()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/e/a/d;->a(Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/VASTAd;->getTrackingEventFullScreen(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 78
    iget-object p0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->isMk()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/mgmi/e/f;->a(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;Ldkd;)V
    .locals 12

    .line 2
    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p1

    iget-object v0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1, v0}, Lcom/mgmi/ads/api/j;->a(Lcom/mgmi/model/VASTAd;)V

    .line 3
    iget-object p1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v2

    .line 6
    iput-boolean v1, p0, Lcom/mgtv/a/a/b;->d:Z

    :cond_0
    if-nez v2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iput-boolean v0, p0, Lcom/mgtv/a/a/b;->d:Z

    .line 9
    iget-object p1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTMediaFile;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p1

    move-object v2, p1

    :cond_1
    if-nez v2, :cond_2

    .line 10
    iput-boolean v0, p0, Lcom/mgtv/a/a/b;->d:Z

    .line 11
    iget-object p1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v2

    .line 12
    :cond_2
    const-string p1, "3"

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 13
    invoke-virtual {p0}, Lcom/mgtv/a/a/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mgmi/model/Clicks;->getDeepLink(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    invoke-virtual {v2}, Lcom/mgmi/model/Clicks;->getClickUrl()Ljava/lang/String;

    move-result-object v3

    .line 15
    iget-object v4, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    if-eqz v4, :cond_3

    const-string v5, "1"

    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getClk_macro()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-static {p2, v3}, Lbld;->a(Ldkd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    move-object v5, v3

    .line 17
    invoke-virtual {v2}, Lcom/mgmi/model/Clicks;->getExternal()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-static {}, Lg4d;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_4

    .line 19
    invoke-virtual {p2}, Ldkd;->f()Z

    move-result v6

    goto :goto_0

    :cond_4
    move v6, v0

    .line 20
    :goto_0
    iget-object v7, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    const/4 v8, 0x5

    if-eqz v7, :cond_a

    .line 21
    iget-object v7, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    instance-of v9, v7, Lcom/mgmi/model/VASTFloatAd;

    if-eqz v9, :cond_5

    .line 22
    check-cast v7, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v7}, Lcom/mgmi/model/VASTFloatAd;->getDelayRandTime()I

    move-result v7

    if-lez v7, :cond_5

    .line 23
    new-instance v9, Lcom/mgtv/a/a/b$1;

    invoke-direct {v9, p0, p2, v2, v3}, Lcom/mgtv/a/a/b$1;-><init>(Lcom/mgtv/a/a/b;Ldkd;Lcom/mgmi/model/Clicks;Ljava/lang/String;)V

    int-to-long v10, v7

    invoke-static {v9, v10, v11}, Lj4d;->c(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 24
    :cond_5
    new-instance v7, Lcom/mgmi/e/g;

    invoke-direct {v7}, Lcom/mgmi/e/g;-><init>()V

    const-string v9, "0"

    invoke-virtual {v7, v9}, Lcom/mgmi/e/g;->f(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object v7

    .line 25
    invoke-virtual {v7, p2}, Lcom/mgmi/e/g;->a(Ldkd;)Lcom/mgmi/e/g;

    .line 26
    iget-object v9, p0, Lcom/mgtv/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    if-eqz p2, :cond_7

    .line 27
    invoke-virtual {v2}, Lcom/mgmi/model/Clicks;->getDeepLinkReport()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object v9

    invoke-virtual {p2}, Ldkd;->h()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {p2}, Ldkd;->h()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_6
    move-object v10, v3

    :goto_1
    invoke-virtual {v9, v10}, Lcom/mgmi/e/g;->g(Ljava/lang/String;)Lcom/mgmi/e/g;

    goto :goto_2

    .line 28
    :cond_7
    invoke-virtual {v2}, Lcom/mgmi/model/Clicks;->getDeepLinkReport()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/mgmi/e/g;->g(Ljava/lang/String;)Lcom/mgmi/e/g;

    :goto_2
    if-eqz p2, :cond_8

    .line 29
    invoke-virtual {p2}, Ldkd;->e()Z

    move-result v9

    if-nez v9, :cond_a

    .line 30
    :cond_8
    iget-boolean v9, p0, Lcom/mgtv/a/a/b;->d:Z

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v9}, Lcom/mgmi/model/VASTAd;->getShow_type()I

    move-result v9

    if-lez v9, :cond_9

    iget-object v9, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v9}, Lcom/mgmi/model/VASTAd;->getShow_type()I

    move-result v9

    if-gt v9, v8, :cond_9

    .line 31
    iget-object v9, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    iget-object v10, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v9, v10, v7}, Lcom/mgmi/e/a/d;->g(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    goto :goto_3

    .line 32
    :cond_9
    iget-object v9, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    iget-object v10, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v9, v10, v7}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_a
    :goto_3
    if-nez v6, :cond_18

    .line 33
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto/16 :goto_7

    .line 34
    :cond_b
    invoke-static {}, Lcom/mgmi/f/e;->d()Z

    move-result v6

    const-string v7, "ADS_VIDEO_WIDGET"

    if-nez v6, :cond_13

    .line 35
    new-instance p2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-direct {p2, v7}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setClickUrl(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setUuid(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object p2

    .line 36
    iget-object v0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_c

    .line 37
    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->isShowLandAdLog()Z

    move-result v0

    iget-object v3, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v3}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v0, v3}, Lcom/mgmi/ads/api/g;->a(Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;ZLjava/lang/String;)V

    .line 38
    :cond_c
    invoke-virtual {v2}, Lcom/mgmi/model/Clicks;->getSchemeNoticeConfirm()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 39
    sget-object v0, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_YES:Lcom/mgmi/ads/api/d;

    invoke-virtual {p2, v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setAwayAppType(Lcom/mgmi/ads/api/d;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    goto :goto_4

    .line 40
    :cond_d
    sget-object v0, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_NO:Lcom/mgmi/ads/api/d;

    invoke-virtual {p2, v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setAwayAppType(Lcom/mgmi/ads/api/d;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    .line 41
    :goto_4
    const-string v0, "2"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 42
    iget-object p1, p0, Lcom/mgtv/a/a/b;->l:Lcom/mgmi/ads/api/a;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/mgmi/ads/api/a;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 43
    sget-object p1, Lcom/mgmi/ads/api/a$a;->LOAD_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    goto :goto_5

    .line 44
    :cond_e
    iget-object p1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdStyle()I

    move-result p1

    if-ne p1, v8, :cond_f

    .line 45
    sget-object p1, Lcom/mgmi/ads/api/a$a;->JUMP_SHOWTIME_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    goto :goto_5

    .line 46
    :cond_f
    sget-object p1, Lcom/mgmi/ads/api/a$a;->JUMP_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    goto :goto_5

    .line 47
    :cond_10
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 48
    sget-object p1, Lcom/mgmi/ads/api/a$a;->JUMP_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    goto :goto_5

    .line 49
    :cond_11
    sget-object p1, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    .line 50
    :goto_5
    iget-object v0, p0, Lcom/mgtv/a/a/b;->l:Lcom/mgmi/ads/api/a;

    if-eqz v0, :cond_12

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    .line 52
    :cond_12
    invoke-virtual {v2}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTraceCheck()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/o;->c(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 53
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onclick url="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "fz"

    invoke-static {v6, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance p1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-direct {p1, v7}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setClickUrl(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setUuid(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object v7

    .line 55
    iget-object p1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    if-eqz p1, :cond_14

    .line 56
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isShowLandAdLog()Z

    move-result p1

    iget-object v3, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v3}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, p1, v3}, Lcom/mgmi/ads/api/g;->a(Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;ZLjava/lang/String;)V

    .line 57
    :cond_14
    invoke-virtual {v2}, Lcom/mgmi/model/Clicks;->getSchemeNoticeConfirm()I

    move-result p1

    if-ne p1, v1, :cond_15

    .line 58
    sget-object p1, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_YES:Lcom/mgmi/ads/api/d;

    invoke-virtual {v7, p1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setAwayAppType(Lcom/mgmi/ads/api/d;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    goto :goto_6

    .line 59
    :cond_15
    sget-object p1, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_NO:Lcom/mgmi/ads/api/d;

    invoke-virtual {v7, p1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setAwayAppType(Lcom/mgmi/ads/api/d;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    .line 60
    :goto_6
    invoke-virtual {v2}, Lcom/mgmi/model/Clicks;->getSchemeNoticeConfirm()I

    move-result p1

    if-ne p1, v1, :cond_16

    move v0, v1

    :cond_16
    new-instance p1, Lcom/mgtv/a/a/b$2;

    invoke-direct {p1, p0}, Lcom/mgtv/a/a/b$2;-><init>(Lcom/mgtv/a/a/b;)V

    invoke-virtual {p0, v5, v0, p1}, Lcom/mgtv/a/a/b;->a(Ljava/lang/String;ZLcom/mgmi/ads/api/e;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 61
    invoke-virtual {v2}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTraceCheck()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/o;->c(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_17
    move-object v3, p0

    move-object v6, v2

    move-object v8, p2

    .line 62
    invoke-direct/range {v3 .. v8}, Lcom/mgtv/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/model/Clicks;Lcom/mgmi/ads/api/render/AdWidgetInfo;Ldkd;)V

    .line 63
    invoke-virtual {v2}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTraceCheck()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/o;->c(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    :cond_18
    :goto_7
    return-void

    .line 64
    :cond_19
    iget-object v0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_1c

    if-eqz p2, :cond_1a

    .line 65
    :try_start_0
    invoke-virtual {p2}, Ldkd;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 66
    :cond_1a
    iget-object v0, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    if-eqz v0, :cond_1c

    .line 67
    iget-object v0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    instance-of v1, v0, Lcom/mgmi/model/VASTFloatAd;

    if-eqz v1, :cond_1b

    .line 68
    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getDelayRandTime()I

    move-result v0

    if-lez v0, :cond_1b

    .line 69
    new-instance p1, Lcom/mgtv/a/a/b$3;

    invoke-direct {p1, p0, p2}, Lcom/mgtv/a/a/b$3;-><init>(Lcom/mgtv/a/a/b;Ldkd;)V

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lj4d;->c(Ljava/lang/Runnable;J)Z

    return-void

    .line 70
    :cond_1b
    new-instance v0, Lcom/mgmi/e/g;

    invoke-direct {v0}, Lcom/mgmi/e/g;-><init>()V

    .line 71
    invoke-virtual {v0, p2}, Lcom/mgmi/e/g;->a(Ldkd;)Lcom/mgmi/e/g;

    .line 72
    iget-object p2, p0, Lcom/mgtv/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 73
    invoke-virtual {v0, p1}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 74
    iget-object p1, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    iget-object p0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1, p0, v0}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1c
    :goto_8
    return-void
.end method

.method public c()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    instance-of v1, v0, Lcom/mgmi/model/VASTFloatAd;

    if-eqz v1, :cond_0

    .line 54
    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getDelayRandTime()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    check-cast v1, Lcom/mgmi/model/VASTFloatAd;

    .line 56
    new-instance v2, Lcom/mgtv/a/a/b$9;

    invoke-direct {v2, p0, v1}, Lcom/mgtv/a/a/b$9;-><init>(Lcom/mgtv/a/a/b;Lcom/mgmi/model/VASTFloatAd;)V

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lj4d;->c(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/a/b;->g:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, v1}, Lcom/mgtv/a/a/b;->a(Lcom/mgmi/model/VASTAd;)Lcom/mgmi/e/g;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/mgmi/e/a/d;->i(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;Ldkd;)V
    .locals 7

    .line 2
    iget-object p1, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->jumpKind:Ljava/lang/String;

    if-eqz p1, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->jumpKind:Ljava/lang/String;

    .line 3
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 4
    new-instance p1, Lcom/mgmi/e/g;

    invoke-direct {p1}, Lcom/mgmi/e/g;-><init>()V

    .line 5
    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    invoke-virtual {v1, v2}, Lcom/mgmi/ads/api/j;->a(Lcom/mgmi/net/bean/BootDataItem;)V

    .line 6
    iget-object v1, p0, Lcom/mgtv/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 7
    invoke-virtual {p1, p2}, Lcom/mgmi/e/g;->a(Ldkd;)Lcom/mgmi/e/g;

    .line 8
    invoke-virtual {p1, v0}, Lcom/mgmi/e/g;->f(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v1, v0, Lcom/mgmi/net/bean/BootDataItem;->pageUrl:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v1}, Lcom/mgtv/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mgmi/net/bean/BootDataItem;->pageUrl:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/mgtv/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 12
    new-instance v0, Lcom/mgmi/net/bean/CustomBootAdBean;

    invoke-direct {v0}, Lcom/mgmi/net/bean/CustomBootAdBean;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget v3, v2, Lcom/mgmi/net/bean/BootDataItem;->landAdLog:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->advertiser:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/mgmi/ads/api/g;->a(Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;ZLjava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->childId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mgmi/net/bean/CustomBootAdBean;->setChildId(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->jump_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mgmi/net/bean/CustomBootAdBean;->setJump_type(Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->jumpId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mgmi/net/bean/CustomBootAdBean;->setJumpid(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->jumpKind:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mgmi/net/bean/CustomBootAdBean;->setJumpkind(Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->webviewClickUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->webviewClickUrl:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->pageUrl:Ljava/lang/String;

    .line 19
    :goto_1
    iget-object v3, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v3, :cond_2

    if-eqz v3, :cond_2

    const-string v6, "1"

    iget-object v3, v3, Lcom/mgmi/net/bean/BootDataItem;->clk_macro:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20
    invoke-static {p2, v2}, Lbld;->a(Ldkd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    :cond_2
    invoke-virtual {v0, v2}, Lcom/mgmi/net/bean/CustomBootAdBean;->setPageUrl(Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->jump_val:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/mgmi/net/bean/CustomBootAdBean;->setJump_val(Ljava/util/List;)V

    .line 23
    iget-object v2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget v2, v2, Lcom/mgmi/net/bean/BootDataItem;->transfer:I

    invoke-virtual {v0, v2}, Lcom/mgmi/net/bean/CustomBootAdBean;->setTransfer(I)V

    .line 24
    invoke-virtual {v0}, Lcom/mgmi/net/bean/CustomBootAdBean;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg4d;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    invoke-static {}, Lg4d;->a()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p1, v2}, Lcom/mgmi/e/g;->g(Ljava/lang/String;)Lcom/mgmi/e/g;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 27
    :goto_2
    iget-boolean v3, p0, Lcom/mgtv/a/a/b;->e:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    if-eqz v3, :cond_6

    .line 28
    iput-boolean v5, p0, Lcom/mgtv/a/a/b;->e:Z

    if-eqz p2, :cond_4

    .line 29
    invoke-virtual {p2}, Ldkd;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 30
    iput-boolean v4, p0, Lcom/mgtv/a/a/b;->e:Z

    goto :goto_3

    .line 31
    :cond_4
    iget-object p2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p2, :cond_5

    iget-object v3, p2, Lcom/mgmi/net/bean/BootBaseReport;->enc:Lcom/mgmi/net/bean/BootEncTrace;

    if-eqz v3, :cond_5

    .line 32
    iget-object p2, p2, Lcom/mgmi/net/bean/BootDataItem;->click:Ljava/util/List;

    iget-object v3, v3, Lcom/mgmi/net/bean/BootEncTrace;->click:Ljava/util/List;

    invoke-virtual {p0, p2, v3}, Lcom/mgtv/a/a/b;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 33
    iget-object v3, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iput-object p2, v3, Lcom/mgmi/net/bean/BootDataItem;->click:Ljava/util/List;

    .line 34
    :cond_5
    iget-object p2, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    iget-object v3, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    invoke-virtual {p2, v3, p1}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/net/bean/BootDataItem;Lcom/mgmi/e/g;)V

    .line 35
    :cond_6
    :goto_3
    invoke-virtual {v0}, Lcom/mgmi/net/bean/CustomBootAdBean;->getPageUrl()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget p2, p2, Lcom/mgmi/net/bean/BootDataItem;->confirm:I

    if-ne p2, v5, :cond_7

    move v4, v5

    :cond_7
    new-instance p2, Lcom/mgtv/a/a/b$4;

    invoke-direct {p2, p0}, Lcom/mgtv/a/a/b$4;-><init>(Lcom/mgtv/a/a/b;)V

    invoke-virtual {p0, p1, v4, p2}, Lcom/mgtv/a/a/b;->a(Ljava/lang/String;ZLcom/mgmi/ads/api/e;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 36
    iget-object p1, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->trace:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/mgadplus/mgutil/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object p1, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    .line 38
    iget-object p0, p0, Lcom/mgtv/a/a/b;->l:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_8

    .line 39
    new-instance p2, Lcom/mgmi/net/bean/CustomBootAdBean;

    invoke-direct {p2}, Lcom/mgmi/net/bean/CustomBootAdBean;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    :cond_8
    return-void

    .line 40
    :cond_9
    iget-object p1, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget p1, p1, Lcom/mgmi/net/bean/BootDataItem;->confirm:I

    if-ne p1, v5, :cond_a

    .line 41
    sget-object p1, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_YES:Lcom/mgmi/ads/api/d;

    goto :goto_4

    .line 42
    :cond_a
    sget-object p1, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_NO:Lcom/mgmi/ads/api/d;

    .line 43
    :goto_4
    invoke-virtual {v0, p1}, Lcom/mgmi/net/bean/CustomBootAdBean;->setAwayAppType(Lcom/mgmi/ads/api/d;)V

    .line 44
    invoke-direct {p0, v1, v2, v0}, Lcom/mgtv/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/net/bean/CustomBootAdBean;)V

    goto :goto_5

    .line 45
    :cond_b
    iget-object p1, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p1, :cond_c

    .line 46
    new-instance p1, Lcom/mgmi/e/g;

    invoke-direct {p1}, Lcom/mgmi/e/g;-><init>()V

    .line 47
    iget-object v0, p0, Lcom/mgtv/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 48
    invoke-virtual {p1, p2}, Lcom/mgmi/e/g;->a(Ldkd;)Lcom/mgmi/e/g;

    .line 49
    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p2

    iget-object v0, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    invoke-virtual {p2, v0}, Lcom/mgmi/ads/api/j;->a(Lcom/mgmi/net/bean/BootDataItem;)V

    .line 50
    iget-object p2, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v0, p2, Lcom/mgmi/net/bean/BootDataItem;->pageUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mgtv/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/mgmi/net/bean/BootDataItem;->pageUrl:Ljava/lang/String;

    .line 51
    const-string p2, "3"

    invoke-virtual {p1, p2}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 52
    iget-object p2, p0, Lcom/mgtv/a/a/b;->i:Lcom/mgmi/e/a/d;

    iget-object p0, p0, Lcom/mgtv/a/a/b;->h:Lcom/mgmi/net/bean/BootDataItem;

    invoke-virtual {p2, p0, p1}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/net/bean/BootDataItem;Lcom/mgmi/e/g;)V

    :cond_c
    :goto_5
    return-void
.end method
