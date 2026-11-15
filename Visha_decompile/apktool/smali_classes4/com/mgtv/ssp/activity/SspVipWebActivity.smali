.class public Lcom/mgtv/ssp/activity/SspVipWebActivity;
.super Lcom/mgtv/ssp/activity/SspBaseWebActivity;
.source "SourceFile"


# static fields
.field private static k:Lcom/mgtv/ssp/authbase/MgSspAccountCallback;


# instance fields
.field private j:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/activity/SspVipWebActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->k:Lcom/mgtv/ssp/authbase/MgSspAccountCallback;

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/ssp/activity/SspVipWebActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/ssp/activity/SspVipWebActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/ssp/activity/SspVipWebActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/mgtv/ssp/activity/SspVipWebActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->j:Z

    return p0
.end method

.method public static synthetic f()Lcom/mgtv/ssp/authbase/MgSspAccountCallback;
    .locals 1

    sget-object v0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->k:Lcom/mgtv/ssp/authbase/MgSspAccountCallback;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 13

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "acinfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/mgtv/ssp/authbase/AccountInfo;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/mgtv/ssp/authbase/AccountInfo;

    invoke-virtual {v0}, Lcom/mgtv/ssp/authbase/AccountInfo;->getVipurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->b:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "currentVideoId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->l:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "currentEncodeVideoId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->m:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->n:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "collection_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->o:Ljava/lang/String;

    .line 10
    invoke-static {p0}, Lcom/hunantv/imgo/a/f;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/f;

    move-result-object v1

    iget-object v6, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->n:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->l:Ljava/lang/String;

    iget-object v9, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->m:Ljava/lang/String;

    const-string v11, ""

    iget-object v12, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->o:Ljava/lang/String;

    const-string v2, "vip_click"

    const-string v3, "vip_in"

    const-string v4, "0"

    const/4 v5, 0x0

    const-string v7, ""

    const/4 v10, -0x1

    invoke-virtual/range {v1 .. v12}, Lcom/hunantv/imgo/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 0

    .line 2
    sget p0, Lcom/mgtv/ssp/R$layout;->activity_web:I

    return p0
.end method

.method public c()V
    .locals 2

    .line 2
    sget v0, Lcom/mgtv/ssp/R$id;->vip_web:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgtv/webview/MgSspWebView;

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    .line 3
    sget v0, Lcom/mgtv/ssp/R$id;->error_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->g:Landroid/view/View;

    .line 4
    sget v0, Lcom/mgtv/ssp/R$id;->tv_web_error:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->h:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/mgtv/ssp/R$id;->close_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->c:Landroid/view/View;

    .line 6
    sget v1, Lcom/mgtv/ssp/R$id;->close_web:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->d:Landroid/view/View;

    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->d()V

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/activity/SspVipWebActivity$1;-><init>(Lcom/mgtv/ssp/activity/SspVipWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/webview/MgSspWebView;->a(Lcom/mgtv/webview/c;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 13

    invoke-super {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->onDestroy()V

    sget-object v0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->k:Lcom/mgtv/ssp/authbase/MgSspAccountCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mgtv/ssp/authbase/MgSspAccountCallback;->onResult(ILjava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->k:Lcom/mgtv/ssp/authbase/MgSspAccountCallback;

    :cond_0
    invoke-static {p0}, Lcom/hunantv/imgo/a/f;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/f;

    move-result-object v1

    iget-object v6, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->n:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->l:Ljava/lang/String;

    iget-object v9, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->m:Ljava/lang/String;

    const-string v11, ""

    iget-object v12, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->o:Ljava/lang/String;

    const-string v2, "vip_click"

    const-string v3, "vip_out"

    const-string v4, "0"

    const/4 v5, 0x0

    const-string v7, ""

    const/4 v10, -0x1

    invoke-virtual/range {v1 .. v12}, Lcom/hunantv/imgo/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->j:Z

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    if-eqz p0, :cond_0

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, "webviewEnterBackground"

    invoke-virtual {p0, v2, v0, v1}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/webview/jsbridge/d;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/activity/SspVipWebActivity;->j:Z

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    if-eqz p0, :cond_0

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, "webviewBecomeActive"

    invoke-virtual {p0, v2, v0, v1}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/webview/jsbridge/d;)V

    :cond_0
    return-void
.end method
