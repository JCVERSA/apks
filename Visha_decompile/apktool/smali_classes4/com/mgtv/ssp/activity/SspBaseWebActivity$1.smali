.class Lcom/mgtv/ssp/activity/SspBaseWebActivity$1;
.super Lcom/mgtv/webview/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/activity/SspBaseWebActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/activity/SspBaseWebActivity;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/activity/SspBaseWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspBaseWebActivity;

    invoke-direct {p0}, Lcom/mgtv/webview/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mgtv/webview/d;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspBaseWebActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->a(Lcom/mgtv/ssp/activity/SspBaseWebActivity;)V

    .line 6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspBaseWebActivity;

    iget-object p1, p1, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->b:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspBaseWebActivity;

    sget p1, Lcom/mgtv/ssp/R$string;->load_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->a(Lcom/mgtv/ssp/activity/SspBaseWebActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/mgtv/webview/d;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 9
    iget-object p1, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspBaseWebActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->a(Lcom/mgtv/ssp/activity/SspBaseWebActivity;)V

    if-eqz p2, :cond_0

    .line 10
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspBaseWebActivity;

    iget-object p2, p2, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspBaseWebActivity;

    sget p1, Lcom/mgtv/ssp/R$string;->load_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->a(Lcom/mgtv/ssp/activity/SspBaseWebActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/mgtv/webview/d;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspBaseWebActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->a(Lcom/mgtv/ssp/activity/SspBaseWebActivity;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/mgtv/webview/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
