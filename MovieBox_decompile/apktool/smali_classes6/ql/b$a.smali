.class public final Lql/b$a;
.super Landroid/webkit/WebViewClient;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lql/b;->d(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;


# direct methods
.method constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lql/b$a;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lql/b;->a:Lql/b;

    .line 5
    .line 6
    iget-object v0, p0, Lql/b$a;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 7
    .line 8
    invoke-static {p1, v0, p2}, Lql/b;->a(Lql/b;Lcom/github/lzyzsd/jsbridge/BridgeWebView;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, ""

    .line 2
    :cond_1
    const-string v0, "http"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https"

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    const-string v0, "file"

    .line 4
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 5
    :try_start_0
    sget-object p2, Lql/b;->a:Lql/b;

    iget-object v0, p0, Lql/b$a;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p2, v0, v3}, Lql/b;->a(Lql/b;Lcom/github/lzyzsd/jsbridge/BridgeWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string p1, "http"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "https"

    invoke-static {p2, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    const-string p1, "file"

    .line 9
    invoke-static {p2, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    :try_start_0
    sget-object p1, Lql/b;->a:Lql/b;

    iget-object v0, p0, Lql/b$a;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-static {p1, v0, p2}, Lql/b;->a(Lql/b;Lcom/github/lzyzsd/jsbridge/BridgeWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0
.end method
