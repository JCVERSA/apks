.class public Lcom/mgadplus/brower/CustomWebActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public b:Lcom/mgadplus/brower/ImgoAdWebView;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/TextView;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/mgadplus/brower/CustomWebActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ads/api/d;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/mgadplus/brower/CustomWebActivity;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/mgadplus/brower/CustomWebActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "url"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "uuid"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p0, p3}, Lh2d;->d(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/mgadplus/brower/CustomWebActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/brower/CustomWebActivity;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/mgadplus/brower/CustomWebActivity;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1}, Lcom/mgadplus/brower/CustomWebActivity;->c(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:///"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javascript:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yy:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic i(Lcom/mgadplus/brower/CustomWebActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic l(Lcom/mgadplus/brower/CustomWebActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity;->e:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic n(Lcom/mgadplus/brower/CustomWebActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgadplus/brower/CustomWebActivity;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->h:J

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/mgadplus/brower/CustomWebActivity;->o(Ljava/lang/String;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_1

    return p2

    :cond_1
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    const-string p1, ".apk"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    if-nez v0, :cond_0

    :try_start_0
    sget v0, Lcom/mgmi/R$id;->webViewPage:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/brower/ImgoAdWebView;

    iput-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CustomWebActivity"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/mgadplus/brower/CustomWebActivity$b;

    invoke-direct {v1, p0}, Lcom/mgadplus/brower/CustomWebActivity$b;-><init>(Lcom/mgadplus/brower/CustomWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgadplus/brower/ImgoAdWebView;->setWebViewDownloadCallBack(Lo7d;)V

    iget-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    new-instance v1, Lcom/mgadplus/brower/CustomWebActivity$c;

    invoke-direct {v1, p0}, Lcom/mgadplus/brower/CustomWebActivity$c;-><init>(Lcom/mgadplus/brower/CustomWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgadplus/brower/ImgoAdWebView;->setWebViewLifeCycleCallback(Lmbd;)V

    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/CustomWebActivity;->m(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/brower/CustomWebActivity;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/mgadplus/brower/CustomWebActivity;->i:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/mgadplus/brower/CustomWebActivity;->i:Ljava/lang/String;

    const-string v0, "intent_show"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/mgmi/ViewGroup/a/a;

    invoke-direct {p2, p0}, Lcom/mgmi/ViewGroup/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_confirm_download:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgmi/ViewGroup/a/a;->a(Ljava/lang/CharSequence;)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_common_cancel:I

    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->b(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_common_confim:I

    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->c(I)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->a(Z)Lcom/mgmi/ViewGroup/a/a;

    move-result-object v0

    new-instance v1, Lcom/mgadplus/brower/CustomWebActivity$d;

    invoke-direct {v1, p0, p2, p1}, Lcom/mgadplus/brower/CustomWebActivity$d;-><init>(Lcom/mgadplus/brower/CustomWebActivity;Lcom/mgmi/ViewGroup/a/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mgmi/ViewGroup/a/a;->a(Lcom/mgmi/ViewGroup/a/a$a;)Lcom/mgmi/ViewGroup/a/a;

    invoke-virtual {p2}, Lcom/mgmi/ViewGroup/a/a;->b()Z

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/mgmi/platform/e;->a()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p2

    :goto_0
    invoke-static {p0}, Lk7d;->c(Landroid/content/Context;)Lk7d;

    move-result-object p0

    invoke-static {}, Lg4d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lk7d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/ImgoAdWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init webview exception"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CustomWebActivity"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "application/vnd.android.package-archive"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/mgmi/R$layout;->mgad_custom_webview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/mgmi/R$id;->llBackView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mgadplus/brower/CustomWebActivity;->c:Landroid/widget/LinearLayout;

    sget p1, Lcom/mgmi/R$id;->ivProgress:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgadplus/brower/CustomWebActivity;->d:Landroid/widget/ImageView;

    sget p1, Lcom/mgmi/R$id;->rlLoadingError:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mgadplus/brower/CustomWebActivity;->e:Landroid/widget/RelativeLayout;

    sget p1, Lcom/mgmi/R$id;->txtCenterTitle:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgadplus/brower/CustomWebActivity;->f:Landroid/widget/TextView;

    sget p1, Lcom/mgmi/R$id;->webViewPage:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/brower/ImgoAdWebView;

    iput-object p1, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {p1, v0}, Lcom/mgadplus/brower/ImgoAdWebView;->setIslandpage(Z)V

    iget-object p1, p0, Lcom/mgadplus/brower/CustomWebActivity;->c:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mgadplus/brower/CustomWebActivity$a;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/CustomWebActivity$a;-><init>(Lcom/mgadplus/brower/CustomWebActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_show"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/CustomWebActivity;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgadplus/brower/ImgoAdWebView;->b()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgadplus/brower/BaseWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
