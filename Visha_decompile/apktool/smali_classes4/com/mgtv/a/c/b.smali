.class public Lcom/mgtv/a/c/b;
.super Lcom/mgtv/a/c/a;
.source "SourceFile"


# instance fields
.field protected A:Landroid/widget/ImageView;

.field protected B:Lcom/mgmi/model/CreativeMediaData;

.field protected C:Lcom/mgtv/a/c/d;

.field D:Z

.field E:Z

.field F:Z

.field protected G:Lcom/mgmi/model/ADCreativeInfo;

.field private H:Z

.field private I:Z

.field private J:Z

.field private volatile K:Z

.field protected s:Ljava/lang/String;

.field protected t:Landroid/view/View;

.field protected u:Lcom/mgadplus/brower/ImgoAdWebView;

.field protected v:Lcom/mgadplus/brower/ImgoAdWebView;

.field protected w:Landroid/view/ViewGroup;

.field protected x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

.field protected y:Landroid/view/ViewGroup;

.field protected z:Lcom/mgmi/ads/api/render/MySimpleDraweeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/mgtv/a/c/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/c/b;->I:Z

    iput-boolean v0, p0, Lcom/mgtv/a/c/b;->J:Z

    iput-boolean v0, p0, Lcom/mgtv/a/c/b;->D:Z

    iput-boolean v0, p0, Lcom/mgtv/a/c/b;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/c/b;->F:Z

    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->mgmi_h5_playerview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/c/b;->t:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->ad_h5_webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/brower/ImgoAdWebView;

    iput-object p1, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    iget-object p1, p0, Lcom/mgtv/a/c/b;->t:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->ad_h5_style_imagetext_ivImageup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    iput-object p1, p0, Lcom/mgtv/a/c/a;->p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private A()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    return-void
.end method

.method private B()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    invoke-direct {p0}, Lcom/mgtv/a/c/b;->C()V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_1

    const-string v1, "closeMedia"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/c/b;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private C()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/mgadplus/brower/ImgoAdWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object p0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {p0}, Lcom/mgadplus/brower/BaseWebView;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method private D()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    iget-object v2, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v2}, Lcom/mgmi/model/m;->n()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "adstyle"

    iget-object v2, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v2}, Lcom/mgmi/model/m;->o()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-object v2, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v2}, Lcom/mgmi/model/m;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clk_area"

    iget-object v2, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v2}, Lcom/mgmi/model/m;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/c/d;->k()Lcom/mgmi/ads/api/AdSize;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "width"

    iget v2, p0, Lcom/mgmi/ads/api/AdSize;->width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    iget p0, p0, Lcom/mgmi/ads/api/AdSize;->height:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/a/c/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/a/c/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/c/b;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgtv/a/c/b;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->y()V

    .line 114
    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 115
    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {v0}, Lcom/mgadplus/brower/ImgoAdWebView;->c()V

    .line 116
    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p2, :cond_0

    .line 117
    iget-object p0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/ImgoAdWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/ImgoAdWebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/c/b;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/mgtv/a/c/b;->K:Z

    return p0
.end method

.method public static synthetic a(Lcom/mgtv/a/c/b;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/a/c/b;->K:Z

    return p1
.end method

.method public static synthetic b(Lcom/mgtv/a/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 4

    .line 48
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    .line 49
    iget-object p0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/mgmi/model/m;->f()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 51
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    const-string v2, "[EV_KEY]"

    const-string v3, "interact_ad"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "[EV_V1]"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v2, "[EV_V4]"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcom/mgmi/model/CreativeMediaData;Lcom/mgmi/model/m;)V
    .locals 2
    .param p1    # Lcom/mgmi/model/CreativeMediaData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_9

    .line 2
    iget-object p1, p1, Lcom/mgmi/model/CreativeMediaData;->params:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/mgmi/model/CreativeMediaData$MediaParams;->src:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/mgtv/a/c/b;->a(Ljava/lang/String;Z)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 10
    invoke-virtual {p2}, Lcom/mgmi/model/m;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 11
    :cond_4
    const-string p2, ""

    .line 12
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    return-void

    .line 14
    :cond_5
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mgmi/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    return-void

    .line 17
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    const-string v0, "/index.html"

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 21
    :cond_7
    const-string v0, "index.html"

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 p2, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/mgtv/a/c/b;->a(Ljava/lang/String;Z)V

    goto :goto_2

    .line 23
    :cond_8
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    :goto_2
    return-void

    .line 24
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    return-void
.end method

.method public static synthetic c(Lcom/mgtv/a/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->C()V

    return-void
.end method

.method public static synthetic d(Lcom/mgtv/a/c/b;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->D()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/c/b;->z:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Llbd;->E:Llbd;

    new-instance v2, Lcom/mgtv/a/c/b$13;

    invoke-direct {v2, p0, p1}, Lcom/mgtv/a/c/b$13;-><init>(Lcom/mgtv/a/c/b;Ljava/lang/String;)V

    invoke-static {v0, p1, v1, v2}, Ley4;->c(Landroid/widget/ImageView;Ljava/lang/String;Llbd;Lckd;)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/mgtv/a/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->B()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/mgtv/a/c/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/mgtv/a/c/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/a/c/b;->H:Z

    return p0
.end method

.method public static synthetic g(Lcom/mgtv/a/c/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/a/c/b;->A()V

    return-void
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mgtv/a/c/b$14;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$14;-><init>(Lcom/mgtv/a/c/b;)V

    invoke-virtual {v0, v1}, Lcom/mgadplus/brower/ImgoAdWebView;->setWebViewLifeCycleCallback(Lmbd;)V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mgtv/a/c/b$17;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$17;-><init>(Lcom/mgtv/a/c/b;)V

    invoke-virtual {v0, v1}, Lcom/mgadplus/brower/ImgoAdWebView;->setWebViewLifeCycleCallback(Lmbd;)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    invoke-virtual {p0}, Lcom/mgtv/a/c/b;->w()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mgtv/a/c/b;->t:Landroid/view/View;

    return-object p0
.end method

.method public a(ILcom/mgmi/model/CreativeMediaData;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 59
    iget-object p0, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->x()V

    .line 6
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->y()V

    return-void
.end method

.method public a(Lcom/mgmi/model/CreativeMediaData;)V
    .locals 5

    .line 33
    iget-object v0, p0, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    iget-object v1, p1, Lcom/mgmi/model/CreativeMediaData;->params:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 34
    :cond_0
    invoke-interface {v0}, Lcom/mgtv/a/c/d;->h()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 35
    :cond_1
    iget-object v1, p1, Lcom/mgmi/model/CreativeMediaData;->params:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    iget v1, v1, Lcom/mgmi/model/CreativeMediaData$MediaParams;->fullScreen:I

    .line 36
    iget-object v2, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 37
    iget-object v2, p0, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    invoke-interface {v2, v1}, Lcom/mgtv/a/c/d;->a(I)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    return-void

    .line 39
    :cond_3
    iget-object v3, p0, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    if-eqz v3, :cond_4

    .line 40
    invoke-static {v2, v3}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 41
    :cond_4
    iget-object v2, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 42
    invoke-virtual {p0, v1, p1}, Lcom/mgtv/a/c/b;->a(ILcom/mgmi/model/CreativeMediaData;)V

    .line 43
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    sget v2, Lcom/mgmi/R$layout;->layout_creative_interact:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    iput-object v0, p0, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    .line 45
    sget v2, Lcom/mgmi/R$id;->ad_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mgtv/a/c/b;->w:Landroid/view/ViewGroup;

    .line 46
    iget-object v0, p0, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    sget v2, Lcom/mgmi/R$id;->creative_img:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    iput-object v0, p0, Lcom/mgtv/a/c/b;->z:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    .line 47
    iget-object v0, p0, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    sget v2, Lcom/mgmi/R$id;->creative_webview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/brower/ImgoAdWebView;

    iput-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    .line 48
    iget-object v0, p0, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    sget v2, Lcom/mgmi/R$id;->creative_close:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/a/c/b;->A:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/mgtv/a/c/b;->w:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/a/c/b;->a(Lcom/mgmi/model/CreativeMediaData;Landroid/view/ViewGroup;)V

    .line 50
    iget-object p1, p1, Lcom/mgmi/model/CreativeMediaData;->params:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    iget p1, p1, Lcom/mgmi/model/CreativeMediaData$MediaParams;->showCloseButton:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 51
    iget-object p1, p0, Lcom/mgtv/a/c/b;->A:Landroid/widget/ImageView;

    invoke-static {p1, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 52
    iget-object p1, p0, Lcom/mgtv/a/c/b;->A:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 53
    new-instance v2, Lcom/mgtv/a/c/b$11;

    invoke-direct {v2, p0}, Lcom/mgtv/a/c/b$11;-><init>(Lcom/mgtv/a/c/b;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 54
    :cond_5
    iget-object p1, p0, Lcom/mgtv/a/c/b;->A:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-static {p1, v2}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_6
    :goto_0
    if-ne v1, v0, :cond_7

    .line 55
    iget-object p1, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    const-string v0, "#99000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 56
    :cond_7
    iget-object p1, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    :goto_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    iget-object v0, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    invoke-static {v0, p0, p1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public a(Lcom/mgmi/model/CreativeMediaData;Landroid/view/ViewGroup;)V
    .locals 13

    .line 61
    iget-object v0, p0, Lcom/mgtv/a/c/b;->B:Lcom/mgmi/model/CreativeMediaData;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/mgmi/model/CreativeMediaData;->params:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    if-eqz p2, :cond_f

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    const/16 v2, 0xe

    const/4 v3, -0x2

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    :cond_0
    iget-object v4, p0, Lcom/mgtv/a/c/b;->B:Lcom/mgmi/model/CreativeMediaData;

    iget-object v4, v4, Lcom/mgmi/model/CreativeMediaData;->params:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    iget v5, v4, Lcom/mgmi/model/CreativeMediaData$MediaParams;->width:I

    int-to-float v5, v5

    .line 67
    iget v4, v4, Lcom/mgmi/model/CreativeMediaData$MediaParams;->height:I

    int-to-float v4, v4

    .line 68
    iget-object v6, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 69
    iget-object v7, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    if-gtz v6, :cond_1

    .line 70
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lmpd;->a(Landroid/content/Context;)I

    move-result v6

    :cond_1
    if-gtz v7, :cond_2

    .line 71
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lmpd;->n(Landroid/content/Context;)I

    move-result v7

    :cond_2
    const/4 v8, 0x0

    cmpl-float v9, v5, v8

    if-nez v9, :cond_3

    int-to-float v5, v6

    :cond_3
    cmpl-float v8, v4, v8

    if-nez v8, :cond_4

    int-to-float v4, v7

    .line 72
    :cond_4
    iget-object v8, p0, Lcom/mgtv/a/c/b;->B:Lcom/mgmi/model/CreativeMediaData;

    iget-object v8, v8, Lcom/mgmi/model/CreativeMediaData;->params:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    iget-object v8, v8, Lcom/mgmi/model/CreativeMediaData$MediaParams;->baseOn:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "width"

    if-nez v8, :cond_5

    .line 73
    iget-object v8, p0, Lcom/mgtv/a/c/b;->B:Lcom/mgmi/model/CreativeMediaData;

    iget-object v8, v8, Lcom/mgmi/model/CreativeMediaData;->params:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    iget-object v8, v8, Lcom/mgmi/model/CreativeMediaData$MediaParams;->baseOn:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v8, v9

    :goto_0
    div-float v10, v5, v4

    .line 74
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    int-to-float v8, v6

    cmpl-float v9, v5, v8

    if-nez v9, :cond_6

    int-to-float v9, v7

    cmpl-float v9, v4, v9

    if-eqz v9, :cond_9

    :cond_6
    if-lez v6, :cond_9

    div-float v4, v8, v10

    move v5, v8

    goto :goto_1

    :cond_7
    int-to-float v8, v7

    cmpl-float v9, v4, v8

    if-nez v9, :cond_8

    int-to-float v9, v6

    cmpl-float v9, v5, v9

    if-eqz v9, :cond_9

    :cond_8
    if-lez v7, :cond_9

    mul-float v5, v8, v10

    move v4, v8

    :cond_9
    :goto_1
    float-to-int v5, v5

    .line 75
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    float-to-int v4, v4

    .line 76
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 77
    iget-object p1, p1, Lcom/mgmi/model/CreativeMediaData;->params:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    iget v4, p1, Lcom/mgmi/model/CreativeMediaData$MediaParams;->fullScreen:I

    .line 78
    iget-object p1, p1, Lcom/mgmi/model/CreativeMediaData$MediaParams;->position:Lcom/mgmi/model/CreativeMediaData$MediaParams$Position;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 79
    iget-object v8, p0, Lcom/mgtv/a/c/b;->A:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v8, :cond_a

    .line 80
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_a
    int-to-double v9, v6

    const-wide v11, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v9, v11

    double-to-int v3, v9

    .line 81
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    int-to-double v9, v7

    const-wide v11, 0x3fc1eb851eb851ecL    # 0.14

    mul-double/2addr v9, v11

    double-to-int v3, v9

    .line 82
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 83
    iget-object p0, p0, Lcom/mgtv/a/c/b;->A:Landroid/widget/ImageView;

    invoke-virtual {p0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    const/4 p0, 0x0

    if-eqz p1, :cond_c

    .line 84
    iget v3, p1, Lcom/mgmi/model/CreativeMediaData$MediaParams$Position;->y:F

    int-to-float v8, v7

    cmpl-float v3, v3, v8

    if-lez v3, :cond_c

    move p0, v5

    :cond_c
    if-ne v4, v5, :cond_d

    if-nez p0, :cond_d

    .line 85
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/16 p0, 0xd

    .line 87
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_d
    if-eqz p1, :cond_e

    int-to-float p0, v6

    .line 88
    iget v1, p1, Lcom/mgmi/model/CreativeMediaData$MediaParams$Position;->x:F

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float p0, v7

    .line 89
    iget p1, p1, Lcom/mgmi/model/CreativeMediaData$MediaParams$Position;->y:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 90
    :cond_e
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    return-void
.end method

.method public a(Lcom/mgmi/model/CreativeMediaData;Lcom/mgmi/model/m;)V
    .locals 4
    .param p1    # Lcom/mgmi/model/CreativeMediaData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgtv/a/c/b;->a(Lcom/mgmi/model/CreativeMediaData;)V

    .line 92
    const-string v0, "image"

    iget-object v1, p1, Lcom/mgmi/model/CreativeMediaData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/mgtv/a/c/b;->z:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/mgtv/a/c/b;->z:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/mgtv/a/c/b;->z:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/mgmi/model/CreativeMediaData;->params:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    iget v1, v1, Lcom/mgmi/model/CreativeMediaData$MediaParams;->clickOpenWebview:I

    if-ne v1, v3, :cond_3

    .line 99
    new-instance v1, Lcom/mgtv/a/c/b$15;

    invoke-direct {v1, p0, p2}, Lcom/mgtv/a/c/b$15;-><init>(Lcom/mgtv/a/c/b;Lcom/mgmi/model/m;)V

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/render/MySimpleDraweeView;->setTapclickListener(Lcom/mgmi/ads/api/render/MySimpleDraweeView$a;)V

    .line 100
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/c/b;->b(Lcom/mgmi/model/CreativeMediaData;Lcom/mgmi/model/m;)V

    goto :goto_0

    .line 101
    :cond_4
    const-string v0, "h5"

    iget-object v3, p1, Lcom/mgmi/model/CreativeMediaData;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    iget-object v0, p0, Lcom/mgtv/a/c/b;->z:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_6

    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {v0}, Lcom/mgadplus/brower/ImgoAdWebView;->c()V

    .line 107
    :cond_6
    invoke-virtual {p0}, Lcom/mgtv/a/c/b;->t()V

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/mgtv/a/c/b;->c(Lcom/mgmi/model/CreativeMediaData;Lcom/mgmi/model/m;)V

    goto :goto_0

    .line 109
    :cond_7
    const-string p0, "video"

    iget-object p1, p1, Lcom/mgmi/model/CreativeMediaData;->type:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/model/m;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/mgtv/a/c/a;->a(Lcom/mgmi/model/m;)V

    .line 30
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v0}, Lcom/mgmi/model/m;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/c/a;->n:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p1}, Lcom/mgtv/a/c/b;->b(Lcom/mgmi/model/m;)V

    return-void
.end method

.method public a(Lcom/mgtv/a/c/e;)V
    .locals 1

    .line 7
    invoke-super {p0, p1}, Lcom/mgtv/a/c/a;->a(Lcom/mgtv/a/c/e;)V

    .line 8
    instance-of v0, p1, Lcom/mgtv/a/c/d;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Lcom/mgtv/a/c/d;

    iput-object p1, p0, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    if-eqz v0, :cond_0

    .line 120
    iget v0, v0, Lcom/mgmi/model/m;->m:I

    if-lez v0, :cond_0

    .line 121
    new-instance v1, Lcom/mgtv/a/c/b$31;

    invoke-direct {v1, p0, p1, p2}, Lcom/mgtv/a/c/b$31;-><init>(Lcom/mgtv/a/c/b;Ljava/lang/String;I)V

    int-to-long p0, v0

    invoke-static {v1, p0, p1}, Lj4d;->c(Ljava/lang/Runnable;J)Z

    return-void

    .line 122
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mgtv/a/c/b;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Ljava/io/File;)V
    .locals 2

    .line 110
    sget-object v0, Llbd;->E:Llbd;

    invoke-static {p1, v0}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llbd$b;->n(I)Llbd$b;

    move-result-object v0

    invoke-virtual {v0}, Llbd$b;->t()Llbd;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/mgtv/a/c/b$16;

    invoke-direct {v1, p0, p1}, Lcom/mgtv/a/c/b$16;-><init>(Lcom/mgtv/a/c/b;Ljava/lang/String;)V

    invoke-static {p2, p3, v0, v1}, Ley4;->a(Landroid/widget/ImageView;Ljava/io/File;Llbd;Lckd;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .line 10
    invoke-super {p0, p1}, Lcom/mgtv/a/c/a;->a(Ljava/lang/String;)Z

    .line 11
    iget-boolean v0, p0, Lcom/mgtv/a/c/b;->J:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/mgtv/a/c/a;->p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 13
    iget-object v0, p0, Lcom/mgtv/a/c/a;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mgtv/a/c/b;->b(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object v0

    iget-object v2, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mgmi/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Laud;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/c/b;->s:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/mgtv/a/c/b;->H:Z

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0}, Lcom/mgmi/model/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/c/b;->s:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {v0}, Lcom/mgmi/model/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/c/b;->s:Ljava/lang/String;

    .line 23
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/mgtv/a/c/b;->J:Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare load "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/a/c/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SspH5Player"

    invoke-static {v2, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/mgtv/a/c/b;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_3

    const v2, 0x497cd

    .line 27
    const-string v3, "\u7d20\u6750\u4e3a\u7a7a"

    invoke-interface {v0, p1, v2, v3}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    :cond_3
    iget-object p1, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    iget-object p0, p0, Lcom/mgtv/a/c/b;->s:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/mgadplus/brower/ImgoAdWebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {v0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {p0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/net/bean/BootDataItem;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {p0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public b(Lcom/mgmi/model/CreativeMediaData;Lcom/mgmi/model/m;)V
    .locals 2
    .param p1    # Lcom/mgmi/model/CreativeMediaData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    iget-object p1, p1, Lcom/mgmi/model/CreativeMediaData;->params:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    iget-object p1, p1, Lcom/mgmi/model/CreativeMediaData$MediaParams;->src:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-direct {p0, p1}, Lcom/mgtv/a/c/b;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {p2}, Lcom/mgmi/model/m;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 33
    :cond_2
    const-string p2, ""

    .line 34
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    return-void

    .line 36
    :cond_3
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mgmi/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    return-void

    .line 39
    :cond_4
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    const-string v0, "/index.html"

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 41
    :cond_5
    const-string v0, "index.html"

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 42
    :goto_1
    iget-object p2, p0, Lcom/mgtv/a/c/b;->z:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    if-eqz p2, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 43
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    iget-object v0, p0, Lcom/mgtv/a/c/b;->z:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    invoke-virtual {p0, p1, v0, p2}, Lcom/mgtv/a/c/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_2

    .line 46
    :cond_6
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    goto :goto_2

    .line 47
    :cond_7
    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    :goto_2
    return-void
.end method

.method public b(Lcom/mgmi/model/m;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Lcom/mgtv/a/c/b$1;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$1;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "openWebview"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$12;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$12;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "interactReport"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$23;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$23;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "pageReady"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 6
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$32;

    invoke-direct {v1, p0, p1}, Lcom/mgtv/a/c/b$32;-><init>(Lcom/mgtv/a/c/b;Lcom/mgmi/model/m;)V

    const-string v2, "showMedia"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 7
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$33;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$33;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "hideMedia"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$34;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$34;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "playEnd"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$35;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$35;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "playError"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 10
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$36;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$36;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "muteChange"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 11
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$37;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$37;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "disableNativeEvent"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 12
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$2;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$2;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "showNativeVoiceButton"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 13
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_2

    .line 14
    new-instance v1, Lcom/mgtv/a/c/b$3;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$3;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "triggerNativeAction"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$4;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$4;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "postMessage"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 16
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$5;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$5;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "getH5Config"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 17
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$6;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$6;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "interactionStart"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 18
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$7;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$7;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "interactionEnd"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 19
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$8;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$8;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "adEventReport"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 20
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$9;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$9;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "getAdspaceInfo"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    .line 21
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$10;

    invoke-direct {v1, p0, p1}, Lcom/mgtv/a/c/b$10;-><init>(Lcom/mgtv/a/c/b;Lcom/mgmi/model/m;)V

    invoke-virtual {v0, v1}, Lcom/mgadplus/brower/ImgoAdWebView;->setWebViewJsCallBack(Ly9d;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/mgtv/a/c/a;->p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mgtv/a/c/a;->p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/mgtv/a/c/b;->c(Ljava/lang/String;)Llbd;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, v1, p0, p1}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Llbd;
    .locals 0

    .line 25
    sget-object p0, Llbd;->E:Llbd;

    invoke-static {p1, p0}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Llbd$b;->n(I)Llbd$b;

    move-result-object p0

    invoke-virtual {p0}, Llbd$b;->t()Llbd;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 3

    .line 26
    invoke-super {p0}, Lcom/mgtv/a/c/a;->c()V

    .line 27
    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "SspH5Player"

    const-string v1, "start playStart "

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-static {}, Lcom/mgmi/platform/c;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "playStart"

    invoke-virtual {p0, v2, v0, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    :cond_0
    return-void
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lcom/mgtv/a/c/a;->b:I

    return p0
.end method

.method public i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()V
    .locals 3

    invoke-super {p0}, Lcom/mgtv/a/c/a;->j()V

    const-string v0, "SspH5Player"

    const-string v1, "pause playStop "

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/c/b;->K:Z

    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgadplus/brower/ImgoAdWebView;->d()V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    const-string v1, "playStop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    const-string v1, "hideAd"

    invoke-virtual {v0, v1, v2, v2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    invoke-static {v0, v1}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    invoke-direct {p0}, Lcom/mgtv/a/c/b;->C()V

    return-void
.end method

.method public k()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/a/c/a;->k()V

    const-string v0, "SspH5Player"

    const-string v1, "resume playStart "

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mgtv/a/c/b;->c()V

    return-void
.end method

.method public q()V
    .locals 0

    invoke-super {p0}, Lcom/mgtv/a/c/a;->q()V

    invoke-virtual {p0}, Lcom/mgtv/a/c/b;->v()V

    return-void
.end method

.method public s()Lcom/mgadplus/brower/ImgoAdWebView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    return-object p0
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/mgtv/a/c/b$18;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$18;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "openWebview"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$19;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$19;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "interactReport"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$20;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$20;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "pageReady"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$21;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$21;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "playEnd"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$22;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$22;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "playError"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$24;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$24;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "muteChange"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$25;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$25;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "disableNativeEvent"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$26;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$26;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "showNativeVoiceButton"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mgtv/a/c/b$27;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$27;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "triggerNativeAction"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$28;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$28;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "postMessage"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$29;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$29;-><init>(Lcom/mgtv/a/c/b;)V

    const-string v2, "getH5Config"

    invoke-virtual {v0, v2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgtv/a/c/b$30;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/b$30;-><init>(Lcom/mgtv/a/c/b;)V

    const-string p0, "getAdspaceInfo"

    invoke-virtual {v0, p0, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    :cond_1
    return-void
.end method

.method public u()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p0

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public v()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/c/b;->K:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mgtv/a/c/b;->J:Z

    iget-object v1, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgadplus/brower/ImgoAdWebView;->d()V

    iget-object v1, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    const-string v3, "playStop"

    invoke-virtual {v1, v3, v2, v2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    iget-object v1, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    const-string v3, "hideAd"

    invoke-virtual {v1, v3, v2, v2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    :try_start_0
    iget-object v1, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    const-string v3, "about:blank"

    invoke-virtual {v1, v3}, Lcom/mgadplus/brower/ImgoAdWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v1, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearView()V

    iget-object v1, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {v1}, Lcom/mgadplus/brower/BaseWebView;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object v2, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    :cond_0
    iget-object v1, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    invoke-static {v1, v3}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/mgtv/a/c/b;->z()V

    iget-boolean v1, p0, Lcom/mgtv/a/c/b;->F:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/mgtv/a/c/b;->F:Z

    invoke-direct {p0}, Lcom/mgtv/a/c/b;->C()V

    iput-object v2, p0, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    iput-object v2, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    :cond_1
    return-void
.end method

.method public w()V
    .locals 0

    return-void
.end method
