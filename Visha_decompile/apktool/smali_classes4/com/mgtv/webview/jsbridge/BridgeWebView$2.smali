.class Lcom/mgtv/webview/jsbridge/BridgeWebView$2;
.super Lcom/mgtv/webview/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/webview/jsbridge/BridgeWebView;


# direct methods
.method public constructor <init>(Lcom/mgtv/webview/jsbridge/BridgeWebView;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$2;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-direct {p0, p2}, Lcom/mgtv/webview/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/mgtv/webview/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/mgtv/webview/a;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mgtv/webview/a;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
