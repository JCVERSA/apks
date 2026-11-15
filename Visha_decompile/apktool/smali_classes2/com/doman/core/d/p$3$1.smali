.class final Lcom/doman/core/d/p$3$1;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/d/p$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/d/p$3;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/doman/core/d/p$3;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/d/p$3$1;->a:Lcom/doman/core/d/p$3;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const-string p1, "WsWebChromeClient"

    iput-object p1, p0, Lcom/doman/core/d/p$3$1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
