.class public abstract Ln5d;
.super Lq7d;
.source "SourceFile"


# instance fields
.field public b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lq7d;-><init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView;)V

    iput-object p2, p0, Ln5d;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    iget-object p1, p0, Ln5d;->b:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ln5d;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Ln5d;->b:Landroid/app/Activity;

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p3, Lcom/mgmi/R$string;->mgmi_ssl_error:I

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget p3, Lcom/mgmi/R$string;->mgmi_common_continue:I

    new-instance v0, Ln5d$a;

    invoke-direct {v0, p0, p2}, Ln5d$a;-><init>(Ln5d;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget p3, Lcom/mgmi/R$string;->mgmi_common_cancel:I

    new-instance v0, Ln5d$b;

    invoke-direct {v0, p0, p2}, Ln5d$b;-><init>(Ln5d;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
