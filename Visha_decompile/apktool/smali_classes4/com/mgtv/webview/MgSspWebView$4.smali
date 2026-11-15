.class Lcom/mgtv/webview/MgSspWebView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/webview/jsbridge/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/webview/MgSspWebView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/webview/MgSspWebView;


# direct methods
.method public constructor <init>(Lcom/mgtv/webview/MgSspWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/webview/MgSspWebView$4;->a:Lcom/mgtv/webview/MgSspWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/d;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/webview/MgSspWebView$4;->a:Lcom/mgtv/webview/MgSspWebView;

    invoke-static {v0, p2}, Lcom/mgtv/webview/MgSspWebView;->a(Lcom/mgtv/webview/MgSspWebView;Lcom/mgtv/webview/jsbridge/d;)Lcom/mgtv/webview/jsbridge/d;

    iget-object p2, p0, Lcom/mgtv/webview/MgSspWebView$4;->a:Lcom/mgtv/webview/MgSspWebView;

    invoke-static {p2}, Lcom/mgtv/webview/MgSspWebView;->a(Lcom/mgtv/webview/MgSspWebView;)Lcom/mgtv/webview/c;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/mgtv/webview/MgSspWebView$4;->a:Lcom/mgtv/webview/MgSspWebView;

    invoke-static {p0}, Lcom/mgtv/webview/MgSspWebView;->a(Lcom/mgtv/webview/MgSspWebView;)Lcom/mgtv/webview/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/webview/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
