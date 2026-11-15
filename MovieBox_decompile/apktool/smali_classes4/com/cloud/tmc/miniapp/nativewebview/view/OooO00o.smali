.class public final Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;
.super Landroid/webkit/WebView;
.source "source.java"


# instance fields
.field public OooO00o:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

.field public OooO0O0:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

.field public OooO0OO:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

.field public OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;

.field public final OooO0o:Lkotlin/Lazy;

.field public OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object p1, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o$OooO00o;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getMHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public OooO00o()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3
    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0O0:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;-><init>(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;

    .line 4
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 7
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 13
    new-instance v0, Lcom/cloud/tmc/miniapp/nativewebview/interfaces/NativeWebviewInterface;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/nativewebview/interfaces/NativeWebviewInterface;-><init>()V

    const-string v1, "dltNativeWebview"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V
    .locals 1

    const-string v0, "pageCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0O0:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V
    .locals 1

    const-string v0, "pageEventCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    return-void
.end method

.method public OooO00o(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[load Url]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeWebView"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0Oo:Lcom/cloud/tmc/miniapp/nativewebview/webclient/OooO00o;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 18
    .line 19
    :cond_1
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0O0:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    .line 26
    .line 27
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final getMWebChromeClient()Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    .line 2
    .line 3
    return-object v0
.end method

.method public goBack()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 4

    .line 1
    const-string v0, "NativeWebView"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-super {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v2, "onCheckIsTextEditor() does not run in the main thread"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :goto_0
    const-string v3, "Probable deadlock detected due to WebView API being called on incorrect thread while the UI thread is blocked."

    .line 32
    .line 33
    invoke-static {v0, v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    return v1
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sub-int/2addr p1, p3

    .line 9
    sub-int/2addr p2, p4

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;->onScroll(II)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setMWebChromeClient(Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollChangedCallback(Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/view/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    .line 2
    .line 3
    return-void
.end method
