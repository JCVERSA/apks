.class public Lrfc$c;
.super Lcom/just/agentweb/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrfc;


# direct methods
.method public constructor <init>(Lrfc;)V
    .locals 0

    iput-object p1, p0, Lrfc$c;->a:Lrfc;

    invoke-direct {p0}, Lcom/just/agentweb/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    const/4 p0, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebChromeClientDelegate;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p0, p0, Lrfc$c;->a:Lrfc;

    iget-object p0, p0, Lrfc;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->A(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebChromeClientDelegate;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lrfc$c;->a:Lrfc;

    iget-object p0, p0, Lrfc;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->C(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebChromeClientDelegate;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p0, p0, Lrfc$c;->a:Lrfc;

    iget-object p0, p0, Lrfc;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->o(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/WebChromeClientDelegate;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    iget-object p0, p0, Lrfc$c;->a:Lrfc;

    iget-object p0, p0, Lrfc;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->l(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
