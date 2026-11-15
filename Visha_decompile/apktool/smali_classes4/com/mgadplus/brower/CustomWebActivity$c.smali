.class public Lcom/mgadplus/brower/CustomWebActivity$c;
.super Lmbd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/brower/CustomWebActivity;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mgadplus/brower/CustomWebActivity;


# direct methods
.method public constructor <init>(Lcom/mgadplus/brower/CustomWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/CustomWebActivity$c;->b:Lcom/mgadplus/brower/CustomWebActivity;

    invoke-direct {p0}, Lmbd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity$c;->b:Lcom/mgadplus/brower/CustomWebActivity;

    invoke-static {p0}, Lcom/mgadplus/brower/CustomWebActivity;->l(Lcom/mgadplus/brower/CustomWebActivity;)Landroid/widget/RelativeLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedHttpError getStatusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomWebActivity"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-super {p0, p1, p2, p3}, Lmbd;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Lmbd;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/mgadplus/brower/CustomWebActivity$c;->b:Lcom/mgadplus/brower/CustomWebActivity;

    invoke-static {p1}, Lcom/mgadplus/brower/CustomWebActivity;->n(Lcom/mgadplus/brower/CustomWebActivity;)V

    .line 9
    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity$c;->b:Lcom/mgadplus/brower/CustomWebActivity;

    invoke-static {p0}, Lcom/mgadplus/brower/CustomWebActivity;->i(Lcom/mgadplus/brower/CustomWebActivity;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lmbd;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 5
    iget-object p1, p0, Lcom/mgadplus/brower/CustomWebActivity$c;->b:Lcom/mgadplus/brower/CustomWebActivity;

    invoke-static {p1}, Lcom/mgadplus/brower/CustomWebActivity;->i(Lcom/mgadplus/brower/CustomWebActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 6
    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity$c;->b:Lcom/mgadplus/brower/CustomWebActivity;

    invoke-static {p0}, Lcom/mgadplus/brower/CustomWebActivity;->l(Lcom/mgadplus/brower/CustomWebActivity;)Landroid/widget/RelativeLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmbd;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity$c;->b:Lcom/mgadplus/brower/CustomWebActivity;

    invoke-static {v0}, Lcom/mgadplus/brower/CustomWebActivity;->a(Lcom/mgadplus/brower/CustomWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity$c;->b:Lcom/mgadplus/brower/CustomWebActivity;

    invoke-static {p0}, Lcom/mgadplus/brower/CustomWebActivity;->a(Lcom/mgadplus/brower/CustomWebActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity$c;->b:Lcom/mgadplus/brower/CustomWebActivity;

    invoke-static {p0, p1}, Lcom/mgadplus/brower/CustomWebActivity;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
