.class Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsExplorer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcn/com/custommma/mobile/tracking/viewability/webjs/b;


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance p0, Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->c(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->b(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p0

    invoke-static {v0, p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->d(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;Z)Z

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)Landroid/webkit/WebView;

    move-result-object p0

    new-instance v1, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;

    invoke-direct {v1, v0, v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b$a;-><init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsExplorer$1;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/b;->e(Lcn/com/custommma/mobile/tracking/viewability/webjs/b;)V

    return-void
.end method
