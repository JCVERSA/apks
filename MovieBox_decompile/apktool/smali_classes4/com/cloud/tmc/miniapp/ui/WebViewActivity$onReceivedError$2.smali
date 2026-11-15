.class public final Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;->this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRetry(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;->this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0Oo()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;->this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;

    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->access$setMLoadErrorFlag$p(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;Ljava/lang/Boolean;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;->this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getWb()Lcom/cloud/tmc/kernel/render/IWebView;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IWebView;->reload()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
