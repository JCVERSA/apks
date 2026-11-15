.class Lcom/cloud/hisavana/sdk/t$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient$OverrideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/t;->u(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/cloud/hisavana/sdk/t;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t$d;->b:Lcom/cloud/hisavana/sdk/t;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/t$d;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public OnOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t$d;->b:Lcom/cloud/hisavana/sdk/t;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/t;->x(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clone()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    .line 7
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAdChoiceClickUrl(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0, p2}, Lcom/cloud/hisavana/sdk/J0;->m(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return v2

    :cond_0
    return v0
.end method

.method public OnOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$d;->b:Lcom/cloud/hisavana/sdk/t;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->x(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clone()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAdChoiceClickUrl(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, p2, v1}, Lcom/cloud/hisavana/sdk/J0;->m(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return v2
.end method

.method public onError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/t$d;->a:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t$d;->b:Lcom/cloud/hisavana/sdk/t;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t$d;->b:Lcom/cloud/hisavana/sdk/t;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p2;->P()V

    .line 28
    .line 29
    .line 30
    new-instance p1, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    const-string p3, "s_err_code"

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p2, ""

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t$d;->b:Lcom/cloud/hisavana/sdk/t;

    .line 62
    .line 63
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    sget-object p3, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_LOAD_WEB_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 68
    .line 69
    invoke-virtual {p2, p3, p1}, Lcom/cloud/hisavana/sdk/p2;->L(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :catchall_0
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 p2, 0x64

    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/t$d;->a:Z

    .line 13
    .line 14
    :cond_0
    return-void
.end method
