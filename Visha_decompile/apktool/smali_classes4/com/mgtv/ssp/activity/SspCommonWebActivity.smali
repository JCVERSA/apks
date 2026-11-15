.class public Lcom/mgtv/ssp/activity/SspCommonWebActivity;
.super Lcom/mgtv/ssp/activity/SspBaseWebActivity;
.source "SourceFile"


# instance fields
.field j:Landroid/webkit/ValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->k:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/activity/SspCommonWebActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/activity/SspCommonWebActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p2, :cond_1

    .line 6
    :try_start_0
    new-instance v0, Lcom/hunantv/imgo/a/e;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/a/e;-><init>(Landroid/content/Context;)V

    .line 7
    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    new-instance p2, Lcom/hunantv/imgo/data/EventClickData;

    invoke-static {}, Lcom/hunantv/imgo/util/u;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "downdiver"

    const-string v7, "qt_webview"

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/hunantv/imgo/data/EventClickData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->m:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p2, p0}, Lcom/hunantv/imgo/data/EventClickData;->setCpid(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-virtual {v0, p2}, Lcom/hunantv/imgo/a/e;->a(Lcom/hunantv/imgo/data/EventClickData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "webUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vcode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->m:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/util/u;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->j:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->j:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->b(IILandroid/content/Intent;)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->j:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->b(IILandroid/content/Intent;)V

    const/4 v1, 0x1

    :cond_5
    :goto_1
    return v1
.end method

.method public b()I
    .locals 0

    .line 1
    sget p0, Lcom/mgtv/ssp/R$layout;->activity_web:I

    return p0
.end method

.method public b(IILandroid/content/Intent;)V
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->j:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_3

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p3}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    move v2, v0

    .line 6
    :goto_0
    invoke-virtual {p3}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 7
    invoke-virtual {p3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :cond_2
    if-eqz p2, :cond_4

    const/4 p3, 0x1

    .line 9
    new-array v1, p3, [Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, v1, v0

    goto :goto_1

    :cond_3
    move-object v1, p1

    .line 10
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->j:Landroid/webkit/ValueCallback;

    invoke-interface {p2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->j:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public c()V
    .locals 2

    sget v0, Lcom/mgtv/ssp/R$id;->vip_web:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgtv/webview/MgSspWebView;

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    sget v0, Lcom/mgtv/ssp/R$id;->error_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->g:Landroid/view/View;

    sget v0, Lcom/mgtv/ssp/R$id;->tv_web_error:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->h:Landroid/widget/TextView;

    sget v0, Lcom/mgtv/ssp/R$id;->close_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->c:Landroid/view/View;

    sget v1, Lcom/mgtv/ssp/R$id;->close_web:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->c:Landroid/view/View;

    sget v1, Lcom/mgtv/ssp/R$id;->tv_webtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->i:Landroid/widget/TextView;

    const-string p0, ""

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->d()V

    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mgtv/ssp/activity/SspCommonWebActivity$1;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/activity/SspCommonWebActivity$1;-><init>(Lcom/mgtv/ssp/activity/SspCommonWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    new-instance v1, Lcom/mgtv/ssp/activity/SspCommonWebActivity$2;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/activity/SspCommonWebActivity$2;-><init>(Lcom/mgtv/ssp/activity/SspCommonWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/webview/MgSspWebView;->a(Lcom/mgtv/webview/c;)V

    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    new-instance v1, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/activity/SspCommonWebActivity$3;-><init>(Lcom/mgtv/ssp/activity/SspCommonWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->a(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->onDestroy()V

    return-void
.end method
