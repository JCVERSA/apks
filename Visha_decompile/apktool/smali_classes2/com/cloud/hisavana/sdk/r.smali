.class public final Lcom/cloud/hisavana/sdk/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/r$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:I

.field public final g:Lyi5;

.field public h:Landroid/webkit/WebView;

.field public i:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public j:Lhvd;

.field public final k:Lcom/cloud/hisavana/sdk/r$b;

.field public l:J

.field public m:Z

.field public n:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AdmHandler"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/r;->a:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/cloud/hisavana/sdk/r;->b:F

    iput v0, p0, Lcom/cloud/hisavana/sdk/r;->c:F

    iput v0, p0, Lcom/cloud/hisavana/sdk/r;->d:F

    iput v0, p0, Lcom/cloud/hisavana/sdk/r;->e:F

    sget-object v0, Lcom/cloud/hisavana/sdk/r$c;->a:Lcom/cloud/hisavana/sdk/r$c;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/r;->g:Lyi5;

    new-instance v0, Lcom/cloud/hisavana/sdk/r$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/r$b;-><init>(Lcom/cloud/hisavana/sdk/r;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/r;->k:Lcom/cloud/hisavana/sdk/r$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/r;->n:J

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/r;->g(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/cloud/hisavana/sdk/r;)Lhvd;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/r;->j:Lhvd;

    return-object p0
.end method

.method public static final g(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const-string/jumbo p3, "this$0"

    invoke-static {p0, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$mAdBean"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$admWebView"

    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz p4, :cond_5

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/r;->i()Ljcc;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v1, 0xc8

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    if-eq v0, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/r;->m:Z

    if-eqz v0, :cond_1

    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/r;->l:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/r;->l:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    :cond_1
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/r;->d:F

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    iput p4, p0, Lcom/cloud/hisavana/sdk/r;->e:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/r;->l:J

    invoke-static {}, Likd;->b()Likd;

    move-result-object p4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simulateClickByCoordinate,isADXI01Style->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/r;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mAdBean.isAdmNormalClick() ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdmNormalClick()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mGestureDetector.isClicked -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/r;->i()Ljcc;

    move-result-object v2

    invoke-virtual {v2}, Ljcc;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/cloud/hisavana/sdk/r;->m:Z

    if-eqz p4, :cond_2

    sget-object p4, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    invoke-virtual {p4, p2}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->v(Landroid/webkit/WebView;)V

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/r;->i()Ljcc;

    move-result-object p2

    invoke-virtual {p2}, Ljcc;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdmNormalClick()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, p3}, Lcom/cloud/hisavana/sdk/r;->f(Z)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/r;->m:Z

    if-eqz p1, :cond_4

    iget-wide p1, p0, Lcom/cloud/hisavana/sdk/r;->l:J

    cmp-long p1, p1, v3

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/r;->l:J

    sub-long/2addr p1, v3

    cmp-long p1, p1, v1

    if-lez p1, :cond_5

    :cond_4
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/cloud/hisavana/sdk/r;->b:F

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/cloud/hisavana/sdk/r;->c:F

    :cond_5
    :goto_0
    return p3
.end method

.method public static final synthetic h(Lcom/cloud/hisavana/sdk/r;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/r;->k(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/r;->h:Landroid/webkit/WebView;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/r;->m:Z

    if-eqz v1, :cond_1

    sget-object v1, Ls9;->a:Ls9;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/r;->n:J

    invoke-virtual {v1, v2, v3}, Ls9;->d(J)V

    :cond_1
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/r;->j:Lhvd;

    return-void
.end method

.method public final d(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lhvd;)V
    .locals 2

    const-string v0, "admWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mAdBean"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadAdmListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/c0;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/r;->k:Lcom/cloud/hisavana/sdk/r$b;

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/c0;-><init>(Lcom/cloud/hisavana/sdk/r$a;)V

    const-string v1, "loadError"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/d0;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/r;->k:Lcom/cloud/hisavana/sdk/r$b;

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/d0;-><init>(Lcom/cloud/hisavana/sdk/r$a;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lkrd;

    invoke-direct {v0, p0, p2, p1}, Lkrd;-><init>(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/r;->i:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/r;->j:Lhvd;

    const/4 p1, 0x0

    iput p1, p0, Lcom/cloud/hisavana/sdk/r;->f:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Ls9;->a:Ls9;

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/r;->n:J

    invoke-virtual {v0, v1, v2, p1}, Ls9;->g(JLjava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/r;->j:Lhvd;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lhvd;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public final f(Z)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r;->j:Lhvd;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/cloud/hisavana/sdk/r;->b:F

    iget v2, p0, Lcom/cloud/hisavana/sdk/r;->c:F

    iget v3, p0, Lcom/cloud/hisavana/sdk/r;->d:F

    iget v4, p0, Lcom/cloud/hisavana/sdk/r;->e:F

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lhvd;->a(FFFFZ)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/cloud/hisavana/sdk/r;->f:I

    return-void
.end method

.method public final i()Ljcc;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/r;->g:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljcc;

    return-object p0
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/r;->m:Z

    return-void
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/r;->i()Ljcc;

    move-result-object v0

    invoke-virtual {v0}, Ljcc;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/cloud/hisavana/sdk/r;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r;->i:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setClickUrl(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/r;->i:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setUpdateClickUrl(Z)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/r;->f(Z)V

    goto :goto_4

    :cond_2
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r;->i:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen()Z

    move-result v0

    if-ne v0, v1, :cond_8

    :cond_3
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/r;->m:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/r;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r;->h:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/r;->h:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/r;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/r;->a:Ljava/lang/String;

    const-string v3, "create web view error"

    invoke-virtual {v0, v2, v3}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/r;->h:Landroid/webkit/WebView;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_8
    :goto_4
    return v1

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
