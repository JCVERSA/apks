.class Lcom/mgtv/webview/a$4;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/webview/a;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/webview/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/webview/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/webview/a$4;->a:Lcom/mgtv/webview/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/mgtv/webview/a$4;->a:Lcom/mgtv/webview/a;

    invoke-virtual {v0, p1, p2}, Lcom/mgtv/webview/a;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/mgtv/webview/a$4;->a:Lcom/mgtv/webview/a;

    invoke-static {p1}, Lcom/mgtv/webview/a;->a(Lcom/mgtv/webview/a;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/mgtv/webview/a$4;->a:Lcom/mgtv/webview/a;

    invoke-static {p0}, Lcom/mgtv/webview/a;->a(Lcom/mgtv/webview/a;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_1
    return v0
.end method
