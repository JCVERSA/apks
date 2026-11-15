.class Lcom/mgtv/webview/jsbridge/BridgeWebView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/webview/jsbridge/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/webview/jsbridge/BridgeWebView$3;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mgtv/webview/jsbridge/BridgeWebView$3;


# direct methods
.method public constructor <init>(Lcom/mgtv/webview/jsbridge/BridgeWebView$3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$3$1;->b:Lcom/mgtv/webview/jsbridge/BridgeWebView$3;

    iput-object p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/mgtv/webview/jsbridge/f;

    invoke-direct {v0}, Lcom/mgtv/webview/jsbridge/f;-><init>()V

    iget-object v1, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$3$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/webview/jsbridge/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/mgtv/webview/jsbridge/f;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$3$1;->b:Lcom/mgtv/webview/jsbridge/BridgeWebView$3;

    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView$3;->a:Lcom/mgtv/webview/jsbridge/BridgeWebView;

    invoke-static {p0, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Lcom/mgtv/webview/jsbridge/BridgeWebView;Lcom/mgtv/webview/jsbridge/f;)V

    return-void
.end method
