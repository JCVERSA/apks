.class Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/openadsdk/EjP/Ym;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/uA/vS;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;ZLcom/bytedance/sdk/component/uA/vS;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->sP:Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;

    .line 2
    .line 3
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p2

    .line 7
    move-object v2, p3

    .line 8
    move-object v3, p4

    .line 9
    move-object v4, p5

    .line 10
    move v5, p6

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setPreFinish(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setPreStart(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->EjP(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v3, "image"

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    move v3, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v4, "mp4"

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    move v1, v2

    .line 31
    :cond_1
    if-nez v3, :cond_2

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->TKC()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->sP:Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;

    .line 44
    .line 45
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 46
    .line 47
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->sP:I

    .line 48
    .line 49
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->TKC:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v4, 0x4

    .line 54
    invoke-static {v1, v2, v4, v3, v0}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;IILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->sP:Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->HiB:Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    .line 6
    .line 7
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->sP:I

    .line 8
    .line 9
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->TKC:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v4, 0x4

    .line 14
    invoke-static {v1, v2, v4, v3, v0}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Fmk/Sj;IILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->sP:Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->EjP:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v1, v0, Lcom/bytedance/sdk/component/uA/vS;->Sj:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    iput v1, v0, Lcom/bytedance/sdk/component/uA/vS;->Sj:I

    .line 21
    .line 22
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->sP()Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->sP:Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eMB()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;->getWebResourceResponse()Landroid/webkit/WebResourceResponse;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget v2, v1, Lcom/bytedance/sdk/component/uA/vS;->sP:I

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    iput v2, v1, Lcom/bytedance/sdk/component/uA/vS;->sP:I

    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;->getWebResourceResponse()Landroid/webkit/WebResourceResponse;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;->getMsg()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v1, 0x2

    .line 80
    if-ne v0, v1, :cond_4

    .line 81
    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Fmk/Sj$3$3;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    .line 83
    .line 84
    iget v1, v0, Lcom/bytedance/sdk/component/uA/vS;->TKC:I

    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    iput v1, v0, Lcom/bytedance/sdk/component/uA/vS;->TKC:I

    .line 89
    .line 90
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 91
    .line 92
    .line 93
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    return-object p1

    .line 95
    :catchall_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
