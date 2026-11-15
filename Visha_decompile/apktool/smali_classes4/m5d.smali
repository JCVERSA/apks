.class public Lm5d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5d$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/mgmi/model/VASTAd;

.field public c:Lcom/mgmi/e/a/d;

.field public d:Ljava/lang/ref/WeakReference;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/model/VASTAd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm5d;->e:Ljava/lang/String;

    iput-object v0, p0, Lm5d;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lm5d;->d:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lm5d;->a:Ljava/lang/String;

    iput-object p3, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p1

    iput-object p1, p0, Lm5d;->c:Lcom/mgmi/e/a/d;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lm5d;->d:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/ads/api/e;)V
    .locals 9

    :try_start_0
    new-instance v3, Lcom/mgmi/ViewGroup/a/a;

    invoke-direct {v3, p1}, Lcom/mgmi/ViewGroup/a/a;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/mgmi/R$string;->mgmi_confim_leave:I

    invoke-virtual {v3, v0}, Lcom/mgmi/ViewGroup/a/a;->a(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_common_cancel:I

    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->b(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_common_confim:I

    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->c(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v7

    new-instance v8, Lm5d$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v3

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lm5d$a;-><init>(Lm5d;Lcom/mgmi/ViewGroup/a/a;Lcom/mgmi/ViewGroup/a/a;Lcom/mgmi/ads/api/e;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/mgmi/ViewGroup/a/a;->a(Lcom/mgmi/ViewGroup/a/a$a;)Lcom/mgmi/ViewGroup/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/a/a;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1, p2}, Lh2d;->e(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;Lcom/mgmi/ads/api/c/a;Ldkd;Lcom/mgmi/model/VASTStaticResource;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ldkd;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "0"

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/mgmi/model/VASTStaticResource;->getStaticResourceBinder()Lcom/mgmi/model/q;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p4}, Lcom/mgmi/model/VASTStaticResource;->getStaticResourceBinder()Lcom/mgmi/model/q;

    move-result-object p4

    invoke-interface {p4, p1}, Lcom/mgmi/model/q;->a(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lm5d;->c:Lcom/mgmi/e/a/d;

    if-eqz p1, :cond_20

    new-instance p1, Lcom/mgmi/e/g;

    invoke-direct {p1}, Lcom/mgmi/e/g;-><init>()V

    invoke-virtual {p1, v3}, Lcom/mgmi/e/g;->f(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    :cond_2
    invoke-virtual {p1, p3}, Lcom/mgmi/e/g;->a(Ldkd;)Lcom/mgmi/e/g;

    invoke-virtual {p1, v3}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    iget-object p2, p0, Lm5d;->c:Lcom/mgmi/e/a/d;

    iget-object p0, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p2, p0, p1}, Lcom/mgmi/e/a/d;->g(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    goto/16 :goto_c

    :cond_3
    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p1

    iget-object v4, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1, v4}, Lcom/mgmi/ads/api/j;->a(Lcom/mgmi/model/VASTAd;)V

    const/4 p1, 0x0

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p4}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/model/VASTMediaFile;

    invoke-virtual {v4}, Lcom/mgmi/model/VASTMediaFile;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v4

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object v4, p1

    :goto_1
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-virtual {p0}, Lm5d;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mgmi/model/Clicks;->getDeepLink(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/mgmi/model/Clicks;->getExternal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/mgmi/model/Clicks;->getClickUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    const-string v8, "1"

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/mgmi/model/VASTAd;->getClk_macro()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {p3, v6}, Lbld;->a(Ldkd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_7
    invoke-static {}, Lg4d;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lm5d;->c:Lcom/mgmi/e/a/d;

    if-eqz v9, :cond_a

    new-instance v9, Lcom/mgmi/e/g;

    invoke-direct {v9}, Lcom/mgmi/e/g;-><init>()V

    invoke-virtual {v9, v3}, Lcom/mgmi/e/g;->f(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object v3

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    :cond_8
    invoke-virtual {v3, p3}, Lcom/mgmi/e/g;->a(Ldkd;)Lcom/mgmi/e/g;

    invoke-virtual {v4}, Lcom/mgmi/model/Clicks;->getDeepLinkReport()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/mgmi/e/g;->b(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object p3

    invoke-virtual {p3, v7}, Lcom/mgmi/e/g;->g(Ljava/lang/String;)Lcom/mgmi/e/g;

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lm5d;->c:Lcom/mgmi/e/a/d;

    iget-object p4, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p3, p4, v3}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    goto :goto_2

    :cond_9
    iget-object p3, p0, Lm5d;->c:Lcom/mgmi/e/a/d;

    iget-object p4, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p3, p4, v3}, Lcom/mgmi/e/a/d;->g(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_a
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_b

    return-void

    :cond_b
    new-instance p3, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string p4, "ADS_ONLINE_VIDEO"

    invoke-direct {p3, p4}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setClickUrl(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object p3

    invoke-virtual {p3, v7}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setUuid(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object p3

    iget-object p4, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    if-eqz p4, :cond_c

    invoke-virtual {p4}, Lcom/mgmi/model/VASTAd;->isShowLandAdLog()Z

    move-result p4

    iget-object v3, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v3}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4, v3}, Lcom/mgmi/ads/api/g;->a(Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;ZLjava/lang/String;)V

    :cond_c
    invoke-virtual {v4}, Lcom/mgmi/model/Clicks;->getSchemeNoticeConfirm()I

    move-result p4

    if-ne p4, v1, :cond_d

    sget-object p4, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_YES:Lcom/mgmi/ads/api/d;

    invoke-virtual {p3, p4}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setAwayAppType(Lcom/mgmi/ads/api/d;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    goto :goto_3

    :cond_d
    sget-object p4, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_NO:Lcom/mgmi/ads/api/d;

    invoke-virtual {p3, p4}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setAwayAppType(Lcom/mgmi/ads/api/d;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    :goto_3
    invoke-virtual {v4}, Lcom/mgmi/model/Clicks;->getSchemeNoticeConfirm()I

    move-result p4

    if-ne p4, v1, :cond_e

    move p4, v1

    goto :goto_4

    :cond_e
    move p4, v0

    :goto_4
    invoke-virtual {p0, v6, p4, p1}, Lm5d;->e(Ljava/lang/String;ZLcom/mgmi/ads/api/e;)Z

    move-result p4

    if-eqz p4, :cond_f

    invoke-virtual {v4}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTraceCheck()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/o;->c(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_f
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_10

    if-nez v2, :cond_10

    invoke-virtual {p0}, Lm5d;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lh2d;->h(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_10
    const-string p4, "2"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_13

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ads/api/a;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lcom/mgmi/ads/api/a$a;->LOAD_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    if-nez v2, :cond_1f

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    goto/16 :goto_b

    :cond_11
    iget-object p1, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdStyle()I

    move-result p1

    const/4 p4, 0x5

    if-ne p1, p4, :cond_12

    sget-object p1, Lcom/mgmi/ads/api/a$a;->JUMP_SHOWTIME_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    goto :goto_5

    :cond_12
    sget-object p1, Lcom/mgmi/ads/api/a$a;->JUMP_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    :goto_5
    if-nez v2, :cond_1f

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    goto/16 :goto_b

    :cond_13
    iget-object p4, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    if-eqz p4, :cond_1e

    const-string v3, "8"

    invoke-virtual {p4}, Lcom/mgmi/model/VASTAd;->getAction()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1e

    const-string p4, "MiniProgram://"

    const-string v3, "?username"

    invoke-static {v6, p4, v3}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg4d;->k(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    array-length v5, v3

    if-lez v5, :cond_15

    move-object v5, p1

    move-object v6, v5

    :goto_6
    array-length v8, v3

    if-ge v0, v8, :cond_16

    aget-object v8, v3, v0

    invoke-static {v8}, Lg4d;->n(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    move-object v5, v8

    goto :goto_7

    :cond_14
    move-object v6, v8

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    move-object v5, p1

    move-object v6, v5

    :cond_16
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "://"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lm5d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p4

    if-eqz p4, :cond_1c

    const-string p4, "path="

    invoke-virtual {v5, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "username="

    if-eqz v0, :cond_17

    const-string v0, "&"

    invoke-static {v5, v3, v0}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_17
    invoke-static {v5, v3}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v5, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v5, p4}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_18
    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p4

    if-eqz p4, :cond_1e

    invoke-virtual {v4}, Lcom/mgmi/model/Clicks;->getSchemeNoticeConfirm()I

    move-result p3

    if-eq p3, v1, :cond_1a

    iget-object p3, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p3}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p3

    if-eqz p3, :cond_19

    iget-object p3, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p3}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p3

    if-eqz p3, :cond_19

    iget-object p0, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/Clicks;->getSchemeNoticeConfirm()I

    move-result p0

    if-ne p0, v1, :cond_19

    goto :goto_9

    :cond_19
    sget-object p0, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_NO:Lcom/mgmi/ads/api/d;

    goto :goto_a

    :cond_1a
    :goto_9
    sget-object p0, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_YES:Lcom/mgmi/ads/api/d;

    :goto_a
    if-nez v2, :cond_1b

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p2

    sget-object p3, Lcom/mgmi/ads/api/a$b;->TYPE_MINIPROGRAM:Lcom/mgmi/ads/api/a$b;

    invoke-virtual {p2, p3, v0, p1, p0}, Lcom/mgmi/ads/api/a;->gotoMiniProgram(Lcom/mgmi/ads/api/a$b;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ads/api/d;)V

    :cond_1b
    return-void

    :cond_1c
    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p3, v6}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setClickUrl(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setUuid(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    sget-object p0, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    if-nez v2, :cond_1d

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_1d
    return-void

    :cond_1e
    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_1f

    sget-object p1, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    if-nez v2, :cond_1f

    invoke-virtual {p2}, Lcom/mgmi/ads/api/c/a;->c()Lcom/mgmi/ads/api/a;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_1f
    :goto_b
    invoke-virtual {v4}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lm5d;->b:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTraceCheck()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/o;->c(Ljava/lang/String;Ljava/util/List;)V

    :cond_20
    :goto_c
    return-void
.end method

.method public d(Lcom/mgmi/model/VASTAd;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTMediaFile;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lm5d;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mgmi/model/Clicks;->getDeepLink(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mgmi/model/Clicks;->getClickUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg4d;->r(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "1"

    invoke-virtual {v0}, Lcom/mgmi/model/Clicks;->getExternal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public e(Ljava/lang/String;ZLcom/mgmi/ads/api/e;)Z
    .locals 3

    invoke-static {p1}, Lg4d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lm5d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh2d;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lg4d;->v(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v0, p1, p3}, Lm5d;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/ads/api/e;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lh2d;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm5d;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0, p1}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p0, p1}, Lh2d;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
