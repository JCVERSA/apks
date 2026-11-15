.class Lcom/mgtv/a/c/b$14;
.super Lmbd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Lmbd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object p3, p3, Lcom/mgtv/a/c/b;->s:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2
    iget-object p3, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object p3, p3, Lcom/mgtv/a/c/b;->z:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ll4d;->f(Landroid/view/View;I)Z

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SspH5Player"

    invoke-static {p3, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object p3, p1, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/a/c/b;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    invoke-static {p1}, Lcom/mgtv/a/c/b;->f(Lcom/mgtv/a/c/b;)Z

    move-result p1

    const-string p3, "1"

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object p1, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/a/c/b;->b()Ljava/lang/String;

    move-result-object p0

    const v0, 0x497cd

    invoke-interface {p1, p0, v0, p3}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object p1, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgtv/a/c/b;->s:Ljava/lang/String;

    const v0, 0x497ce

    invoke-interface {p1, p0, v0, p3}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

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

    const-string p1, "adh5"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object v1, v1, Lcom/mgtv/a/c/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object v0, v0, Lcom/mgtv/a/c/b;->z:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedHttpError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SspH5Player"

    invoke-static {v0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object v0, p1, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/a/c/b;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    invoke-static {p1}, Lcom/mgtv/a/c/b;->f(Lcom/mgtv/a/c/b;)Z

    move-result p1

    const-string v0, "1"

    if-eqz p1, :cond_0

    .line 14
    iget-object p0, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object p1, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/a/c/b;->b()Ljava/lang/String;

    move-result-object p0

    const v1, 0x497cd

    invoke-interface {p1, p0, v1, v0}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object p1, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgtv/a/c/b;->s:Ljava/lang/String;

    const v1, 0x497ce

    invoke-interface {p1, p0, v1, v0}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    :cond_1
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

    const-string p1, "adh5"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2}, Lmbd;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object p0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 19
    invoke-interface {p0}, Lcom/mgtv/a/c/e;->b()V

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2, p3}, Lmbd;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageStarted url "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SspH5Player"

    invoke-static {p2, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Lcom/mgtv/a/c/b$14;->a:Lcom/mgtv/a/c/b;

    iget-object p0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 23
    invoke-interface {p0}, Lcom/mgtv/a/c/e;->a()V

    :cond_0
    return-void
.end method
