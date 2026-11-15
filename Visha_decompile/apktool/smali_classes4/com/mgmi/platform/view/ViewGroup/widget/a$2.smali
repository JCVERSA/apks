.class Lcom/mgmi/platform/view/ViewGroup/widget/a$2;
.super Lmbd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/platform/view/ViewGroup/widget/a;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/platform/view/ViewGroup/widget/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/platform/view/ViewGroup/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-direct {p0}, Lmbd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-static {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->c(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a(Lcom/mgmi/platform/view/ViewGroup/widget/a;Z)Z

    .line 3
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-static {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a(Lcom/mgmi/platform/view/ViewGroup/widget/a;)V

    .line 4
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->v()V

    .line 5
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-static {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->d(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    const p1, 0x497cd

    invoke-static {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->e(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p3}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a(Lcom/mgmi/platform/view/ViewGroup/widget/a;ILjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    const p1, 0x497ce

    invoke-static {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->c(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p3}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a(Lcom/mgmi/platform/view/ViewGroup/widget/a;ILjava/lang/String;)V

    .line 8
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ; "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "creative"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 9
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-static {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->c(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a(Lcom/mgmi/platform/view/ViewGroup/widget/a;Z)Z

    .line 11
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-static {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a(Lcom/mgmi/platform/view/ViewGroup/widget/a;)V

    .line 12
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->v()V

    .line 13
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-static {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->d(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    const p1, 0x497cd

    invoke-static {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->e(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a(Lcom/mgmi/platform/view/ViewGroup/widget/a;ILjava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    const p1, 0x497ce

    invoke-static {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->c(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a(Lcom/mgmi/platform/view/ViewGroup/widget/a;ILjava/lang/String;)V

    .line 16
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ; "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "creative"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 17
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    iget-object p1, p1, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz p1, :cond_2

    .line 18
    const-string p2, "playStart"

    invoke-static {}, Lcom/mgmi/platform/c;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    .line 19
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-static {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-static {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b(Lcom/mgmi/platform/view/ViewGroup/widget/a;)Lcom/mgmi/ads/api/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/ads/api/a;->isFullScreen()Z

    move-result p2

    iput-boolean p2, p1, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a:Z

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    iget-boolean p2, p1, Lcom/mgmi/platform/view/ViewGroup/widget/a;->a:Z

    const-string v0, "orientationChange"

    if-eqz p2, :cond_1

    .line 22
    iget-object p1, p1, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    const-string p2, "landscape"

    invoke-virtual {p1, v0, p2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p1, Lcom/mgmi/platform/view/ViewGroup/widget/a;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    const-string p2, "portrait"

    invoke-virtual {p1, v0, p2, v1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/a$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/a;

    invoke-static {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/a;->f(Lcom/mgmi/platform/view/ViewGroup/widget/a;)V

    :cond_2
    return-void
.end method
