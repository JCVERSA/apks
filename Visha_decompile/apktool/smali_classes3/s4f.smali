.class public final Ls4f;
.super Lp4f;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:Landroid/webkit/WebViewClient;

.field public final b:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

.field public final c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2

    invoke-direct {p0}, Lp4f;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    const-string v1, "JavaScript must be enabled on the WebView."

    invoke-static {v0, v1}, Lv2i;->f(ZLjava/lang/Object;)V

    iput-object p2, p0, Ls4f;->c:Landroid/webkit/WebView;

    new-instance v0, Lr4f;

    invoke-direct {v0, p2}, Lr4f;-><init>(Landroid/webkit/WebView;)V

    new-instance p2, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V

    iput-object p2, p0, Ls4f;->b:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    return-void
.end method


# virtual methods
.method public final a()Landroid/webkit/WebViewClient;
    .locals 0

    iget-object p0, p0, Ls4f;->a:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Ls4f;->b:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->clearAdObjects()V

    return-void
.end method

.method public final c(Landroid/webkit/WebViewClient;)V
    .locals 2

    if-eq p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Delegate cannot be itself."

    invoke-static {v0, v1}, Lv2i;->f(ZLjava/lang/Object;)V

    iput-object p1, p0, Ls4f;->a:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public final d(Landroid/webkit/WebView;)Z
    .locals 0

    iget-object p0, p0, Ls4f;->c:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Ls4f;->d(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls4f;->b:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->handleH5AdsRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lp4f;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ls4f;->c:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Ls4f;->d(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ls4f;->b:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->handleH5AdsRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Lp4f;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 5
    invoke-virtual {p0, p1}, Ls4f;->d(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Ls4f;->b:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    .line 6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->handleH5AdsRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Lp4f;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
