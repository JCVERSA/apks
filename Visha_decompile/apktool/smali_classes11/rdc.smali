.class public Lrdc;
.super Lcom/just/agentweb/jsbridge/BridgeWebView$BaseJavascriptInterface;
.source "SourceFile"


# instance fields
.field public a:Lcom/just/agentweb/jsbridge/BridgeWebView;

.field public b:Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/just/agentweb/jsbridge/BridgeWebView;Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/just/agentweb/jsbridge/BridgeWebView$BaseJavascriptInterface;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lrdc;->a:Lcom/just/agentweb/jsbridge/BridgeWebView;

    iput-object p3, p0, Lrdc;->b:Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;

    return-void
.end method


# virtual methods
.method public jsToNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VishaVip_jsNative"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lrdc;->b:Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/jsbridge/IJsToNative;->jsToNative(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
