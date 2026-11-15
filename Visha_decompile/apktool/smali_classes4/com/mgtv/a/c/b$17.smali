.class Lcom/mgtv/a/c/b$17;
.super Lmbd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->y()V
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

    iput-object p1, p0, Lcom/mgtv/a/c/b$17;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Lmbd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Lmbd;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/mgtv/a/c/b$17;->a:Lcom/mgtv/a/c/b;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/mgtv/a/c/b;->D:Z

    .line 15
    invoke-static {p1}, Lcom/mgtv/a/c/b;->g(Lcom/mgtv/a/c/b;)V

    .line 16
    iget-object p0, p0, Lcom/mgtv/a/c/b$17;->a:Lcom/mgtv/a/c/b;

    iget-object p0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz p0, :cond_0

    .line 17
    const-string p1, "closeMedia"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 18
    invoke-super {p0, p1, p2, p3}, Lmbd;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 19
    iget-object p1, p0, Lcom/mgtv/a/c/b$17;->a:Lcom/mgtv/a/c/b;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/mgtv/a/c/b;->D:Z

    .line 20
    invoke-static {p1}, Lcom/mgtv/a/c/b;->g(Lcom/mgtv/a/c/b;)V

    .line 21
    iget-object p0, p0, Lcom/mgtv/a/c/b$17;->a:Lcom/mgtv/a/c/b;

    iget-object p0, p0, Lcom/mgtv/a/c/b;->u:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz p0, :cond_0

    .line 22
    const-string p1, "closeMedia"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-super {p0, p1, p2}, Lmbd;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/c/b$17;->a:Lcom/mgtv/a/c/b;

    iget-object p2, p1, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Lcom/mgtv/a/c/d;->l()Z

    move-result p2

    iput-boolean p2, p1, Lcom/mgtv/a/c/b;->E:Z

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/c/b$17;->a:Lcom/mgtv/a/c/b;

    iget-boolean p2, p1, Lcom/mgtv/a/c/b;->E:Z

    const/4 v0, 0x0

    const-string v1, "orientationChange"

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p1, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz p1, :cond_2

    .line 8
    const-string p2, "landscape"

    invoke-virtual {p1, v1, p2, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/mgtv/a/c/b;->v:Lcom/mgadplus/brower/ImgoAdWebView;

    if-eqz p1, :cond_2

    .line 10
    const-string p2, "portrait"

    invoke-virtual {p1, v1, p2, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    .line 11
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/mgtv/a/c/b$17;->a:Lcom/mgtv/a/c/b;

    iget-boolean p1, p0, Lcom/mgtv/a/c/b;->D:Z

    if-nez p1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {p0}, Lcom/mgtv/a/c/b;->g(Lcom/mgtv/a/c/b;)V

    :goto_1
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lmbd;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/c/b$17;->a:Lcom/mgtv/a/c/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/a/c/b;->D:Z

    return-void
.end method
