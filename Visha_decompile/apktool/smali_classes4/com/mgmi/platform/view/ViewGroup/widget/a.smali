.class public Lcom/mgmi/platform/view/ViewGroup/widget/a;
.super Lcom/mgmi/platform/view/ViewGroup/widget/b;
.source "SourceFile"


# instance fields
.field protected a:Z

.field protected b:Lcom/mgadplus/brower/ImgoAdWebView;

.field protected c:Lcom/mgtv/a/c/b;

.field protected d:Landroid/view/ViewGroup;

.field protected e:Landroid/view/ViewGroup;

.field protected f:Landroid/widget/ImageView;

.field protected g:Landroid/view/View;

.field protected h:Landroid/widget/ImageView;

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcom/mgmi/ads/api/a;

.field private u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgmi/ads/api/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a(ILjava/lang/String;)V
    .locals 5

    .line 32
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_1

    .line 33
    :try_start_0
    instance-of v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    if-eqz v0, :cond_1

    .line 34
    check-cast p0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/mgmi/model/i;->e()Ljava/util/List;

    move-result-object p0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    const-string v2, "mgmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportErrors url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v2, "[ERRORCODE]"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v2, "[ERRORURL]"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p0

    .line 43
    invoke-virtual {p0, v0}, Lcom/mgmi/e/a/d;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->g:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v0, v1}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 8
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 9
    sget v0, Lcom/mgmi/R$layout;->layout_creative_interact_ex:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->g:Landroid/view/View;

    .line 10
    sget v0, Lcom/mgmi/R$id;->ad_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->e:Landroid/view/ViewGroup;

    .line 11
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->g:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->creative_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->f:Landroid/widget/ImageView;

    .line 12
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->g:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->creative_webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 13
    new-instance v0, Lcom/mgtv/a/c/b;

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mgtv/a/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->c:Lcom/mgtv/a/c/b;

    .line 14
    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mgtv/a/c/b;->a(Landroid/content/Context;)V

    .line 15
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->c:Lcom/mgtv/a/c/b;

    new-instance v1, Lcom/mgmi/model/m;

    invoke-direct {v1}, Lcom/mgmi/model/m;-><init>()V

    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->o:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, v2}, Lcom/mgmi/model/m;->a(Ljava/lang/Object;)Lcom/mgmi/model/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/a/c/a;->a(Lcom/mgmi/model/m;)V

    .line 16
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->c:Lcom/mgtv/a/c/b;

    invoke-virtual {v0}, Lcom/mgtv/a/c/b;->s()Lcom/mgadplus/brower/ImgoAdWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    .line 17
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->c:Lcom/mgtv/a/c/b;

    invoke-virtual {v0}, Lcom/mgtv/a/c/b;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 18
    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->w()V

    .line 19
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->g:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->creative_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->h:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 20
    new-instance v0, Lcom/mgmi/platform/view/ViewGroup/widget/a$1;

    invoke-direct {v0, p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a$1;-><init>(Lcom/mgmi/platform/view/ViewGroup/widget/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->d:Landroid/view/ViewGroup;

    const-string v0, "#30000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->d:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ll4d;->f(Landroid/view/View;I)Z

    .line 23
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-static {p1, v0}, Ll4d;->f(Landroid/view/View;I)Z

    .line 24
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 25
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 26
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->d:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->g:Landroid/view/View;

    invoke-static {v0, p0, p1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/mgmi/platform/view/ViewGroup/widget/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->y()V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/platform/view/ViewGroup/widget/a;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 44
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    sget-object p1, Lcom/mgmi/ads/api/a$a;->AD_INTERACTION_START:Lcom/mgmi/ads/api/a$a;

    goto :goto_0

    .line 46
    :cond_0
    sget-object p1, Lcom/mgmi/ads/api/a$a;->AD_INTERACTION_OVER:Lcom/mgmi/ads/api/a$a;

    .line 47
    :goto_0
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->t:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_1

    .line 48
    new-instance v0, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v1, "interaction"

    invoke-direct {v0, v1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/mgmi/platform/view/ViewGroup/widget/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->p:Z

    return p1
.end method

.method public static synthetic b(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Lcom/mgmi/ads/api/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->t:Lcom/mgmi/ads/api/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->q:Z

    return p0
.end method

.method public static synthetic e(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/mgmi/platform/view/ViewGroup/widget/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->x()V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;

    invoke-direct {v1, p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;-><init>(Lcom/mgmi/platform/view/ViewGroup/widget/a;)V

    invoke-virtual {v0, v1}, Lcom/mgadplus/brower/ImgoAdWebView;->setWebViewLifeCycleCallback(Lmbd;)V

    return-void
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->u:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    instance-of v1, v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgmi/model/i;->a(Z)V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ads/api/d/a;

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    check-cast p0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/d;->a()Lcom/mgmi/model/i;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/mgmi/ads/api/d/a;->a(ILcom/mgmi/model/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->d:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->g:Landroid/view/View;

    invoke-static {v0, v1}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->c:Lcom/mgtv/a/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/c/b;->v()V

    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/mgmi/platform/view/ViewGroup/widget/g;)Landroid/view/View;
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 3

    .line 27
    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a:Z

    .line 29
    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->c()V

    .line 30
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz p0, :cond_0

    .line 31
    const-string v0, "landscape"

    const/4 v1, 0x0

    const-string v2, "orientationChange"

    invoke-virtual {p0, v2, v0, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->b()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a:Z

    .line 4
    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->c()V

    .line 5
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz p0, :cond_0

    .line 6
    const-string v0, "portrait"

    const/4 v1, 0x0

    const-string v2, "orientationChange"

    invoke-virtual {p0, v2, v0, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5
    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    const/16 v1, 0xd

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 9
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->d()V

    .line 3
    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->y()V

    return-void
.end method
