.class public Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/custommma/mobile/tracking/viewability/webjs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsExplorer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;-><init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyWebViewClient:handlerWebJsMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mmaViewabilitySDK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7f93a69a

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0xac399ed

    if-eq v2, v3, :cond_1

    const v3, 0x36a91183

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "stopViewability"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    const-string v2, "getJSCacheData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v2, "saveJSCacheData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;->b(Landroid/net/Uri;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;->c(Landroid/net/Uri;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;->d(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v5

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 3

    const-string p0, "clear"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->h(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Lyr1;

    move-result-object v0

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->g(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyr1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "javascript:sendCacheMessage(JSON.stringify(%s))"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetJSCacheData->clear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  conetent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->h(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Lyr1;

    move-result-object p0

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->g(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyr1;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 1

    const-string p0, "data"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "saveJSCacheData protocol params data is empty."

    invoke-static {p0}, Lrq5;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->h(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Lyr1;

    move-result-object v0

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->g(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lyr1;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroid/net/Uri;)V
    .locals 1

    const-string p0, "AdviewabilityID"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p0, "stopViewability protocol params adviewabilityid is empty."

    invoke-static {p0}, Lrq5;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->f(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    sget-boolean p0, Lcn/com/custommma/mobile/tracking/api/Countly;->n:Z

    if-eqz p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    sget-object v0, Lcn/com/custommma/mobile/tracking/api/Countly;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->c(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->c(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/content/Context;

    move-result-object p3

    instance-of p3, p3, Landroid/app/Activity;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    :cond_0
    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->c(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->isDestroyed()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->c(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->c(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "\u8be5\u7f51\u7ad9\u7684\u8bc1\u4e66\u5b58\u5728\u5b89\u5168\u95ee\u9898"

    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a$a;

    invoke-direct {p1, p0, p2}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a$a;-><init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;Landroid/webkit/SslErrorHandler;)V

    const-string/jumbo v0, "\u7ee7\u7eed"

    invoke-virtual {p3, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a$b;

    invoke-direct {p1, p0, p2}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a$b;-><init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;Landroid/webkit/SslErrorHandler;)V

    const-string/jumbo p0, "\u53d6\u6d88"

    invoke-virtual {p3, p0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
