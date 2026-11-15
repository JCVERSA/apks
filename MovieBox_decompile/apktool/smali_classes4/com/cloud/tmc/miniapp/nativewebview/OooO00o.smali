.class public final Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;
.super Landroid/webkit/WebChromeClient;
.source "source.java"


# instance fields
.field public OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO00o;->OooO00o:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onReceivedTitle(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
