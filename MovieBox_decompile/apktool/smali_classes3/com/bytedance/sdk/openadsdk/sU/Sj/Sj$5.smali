.class Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p4

    .line 7
    move-object v4, p5

    .line 8
    move v5, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->uA(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->vS(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(II)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->EjP(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "py_loading_success"

    .line 52
    .line 53
    invoke-static {p1, p2, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;Z)Z

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vS(Z)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 7
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;Z)Z

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vS(Z)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p3, p2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vS(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    invoke-virtual {p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(ZLjava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, La6/b;->f()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TEQ(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Fmk(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, La6/b;->f()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2, v1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ym(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-object v0

    .line 103
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 109
    .line 110
    .line 111
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    return-object p1

    .line 113
    :catchall_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1
.end method
