.class Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper;->injectWebview(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$jsInject:Ljava/lang/StringBuilder;

.field final synthetic val$valueCallback:Landroid/webkit/ValueCallback;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/StringBuilder;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper$2;->val$webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper$2;->val$jsInject:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper$2;->val$valueCallback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper$2;->val$webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper$2;->val$jsInject:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper$2;->val$valueCallback:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
