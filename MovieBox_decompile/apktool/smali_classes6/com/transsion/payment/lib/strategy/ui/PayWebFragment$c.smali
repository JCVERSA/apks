.class public final Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;
.super Landroid/webkit/WebViewClient;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

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
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->i0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->j0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 15
    .line 16
    const-string p3, "onPageStarted()"

    .line 17
    .line 18
    invoke-static {p1, p2, p3}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->d0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->h0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/16 p3, 0x8

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lxm/b;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p1, Lxm/b;->f:Landroid/widget/ProgressBar;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/util/HashMap;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->g0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/util/HashMap;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_4
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 102
    .line 103
    const/4 p2, 0x0

    .line 104
    invoke-static {p1, p2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->k0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Z)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "error"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->e0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " --> mWebViewClient --> onReceivedError() --> url = "

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, " --> error = "

    .line 48
    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 63
    .line 64
    const/4 p2, 0x1

    .line 65
    invoke-static {p1, p2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->k0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Z)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "errorResponse"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->e0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " --> mWebViewClient --> onReceivedHttpError() --> url = "

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, " --> errorResponse = "

    .line 48
    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 12
    .line 13
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "toString(...)"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "shouldInterceptRequest()"

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->d0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v3, 0x0

    .line 19
    const-string v4, "tel:"

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static {v0, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    sget-object p2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->e0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " --> mWebViewClient --> shouldOverrideUrlLoading() --> \u4f7f\u7528Intent\u6765\u5904\u7406\u62e8\u53f7\u8bf7\u6c42 --> url = "

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p2, v1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Landroid/content/Intent;

    .line 59
    .line 60
    const-string v1, "android.intent.action.DIAL"

    .line 61
    .line 62
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_0

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    return v3

    .line 84
    :cond_1
    const-string v2, "shouldOverrideUrlLoading()"

    .line 85
    .line 86
    invoke-static {v1, v0, v2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->d0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    return v3

    .line 93
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    return p1
.end method
