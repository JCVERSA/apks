.class public Lcom/mgtv/webview/b;
.super Lcom/mgtv/webview/jsbridge/c;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/mgtv/webview/jsbridge/BridgeWebView;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgtv/webview/jsbridge/c;-><init>(Lcom/mgtv/webview/jsbridge/BridgeWebView;)V

    iput-object p2, p0, Lcom/mgtv/webview/b;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/webview/b;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/webview/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/mgtv/webview/b;->a:Landroid/app/Activity;

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p3, Lcom/mgtv/ssp/R$string;->ssp_ssl_error:I

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget p3, Lcom/mgtv/ssp/R$string;->ssp_common_continue:I

    new-instance v0, Lcom/mgtv/webview/b$1;

    invoke-direct {v0, p0, p2}, Lcom/mgtv/webview/b$1;-><init>(Lcom/mgtv/webview/b;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget p3, Lcom/mgtv/ssp/R$string;->ssp_common_cancel:I

    new-instance v0, Lcom/mgtv/webview/b$2;

    invoke-direct {v0, p0, p2}, Lcom/mgtv/webview/b$2;-><init>(Lcom/mgtv/webview/b;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
