.class public final Lcom/cloud/hisavana/sdk/t4;
.super Landroid/webkit/WebViewClient;
.source "source.java"


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/q$a;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/q$a;)V
    .locals 1

    .line 1
    const-string v0, "admHandlerListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t4;->a:Lcom/cloud/hisavana/sdk/q$a;

    .line 10
    .line 11
    const-string p1, "AdmWebClient"

    .line 12
    .line 13
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t4;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t4;->b:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "onPageFinished"

    .line 8
    .line 9
    invoke-virtual {p2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    const/16 p2, 0x64

    .line 21
    .line 22
    if-ne p1, p2, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/t4;->c:Z

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/t4;->c:Z

    .line 5
    .line 6
    if-nez p1, :cond_3

    .line 7
    .line 8
    if-eqz p2, :cond_3

    .line 9
    .line 10
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_3

    .line 16
    .line 17
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    :cond_0
    const-string p1, ""

    .line 30
    .line 31
    :cond_1
    if-eqz p3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/16 p2, 0xbc7

    .line 39
    .line 40
    :goto_0
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/t4;->a:Lcom/cloud/hisavana/sdk/q$a;

    .line 41
    .line 42
    invoke-interface {p3, p1, p2}, Lcom/cloud/hisavana/sdk/q$a;->a(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    :cond_3
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t4;->a:Lcom/cloud/hisavana/sdk/q$a;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/q$a;->a(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method
