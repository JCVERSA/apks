.class Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$a;
.super Lg7/j;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$a;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    invoke-direct {p0}, Lg7/j;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    const/4 p2, 0x5

    .line 7
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method
