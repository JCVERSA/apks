.class Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;
.super Lg7/j;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;->h()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lg7/j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setLoadStartTime(J)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/o0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 39
    .line 40
    iget-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->o:Z

    .line 41
    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->o:Z

    .line 46
    .line 47
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getRedirectType()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getLoadTime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-static/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 87
    .line 88
    .line 89
    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/o0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    .line 6
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    const-string p2, "error"

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorType(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorCode(I)V

    :cond_1
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/o0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    .line 51
    .line 52
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 53
    .line 54
    const-string p2, "error"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorType(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 62
    .line 63
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorCode(I)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/o0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    .line 43
    .line 44
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 45
    .line 46
    const-string p2, "ssl"

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorType(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/EWOfficialActivity;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorCode(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method
