.class Lcom/mgtv/webview/MgSspWebView$3;
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

    iput-object p1, p0, Lcom/mgtv/webview/MgSspWebView$3;->a:Lcom/mgtv/webview/MgSspWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/d;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object p2

    new-instance v0, Lcom/mgtv/webview/MgSspWebView$3$1;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$3$1;-><init>(Lcom/mgtv/webview/MgSspWebView$3;)V

    invoke-virtual {p2, p1, v0}, Lcom/mgtv/data/aphone/a/a;->a(Ljava/lang/String;Lcom/mgtv/data/aphone/a/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
