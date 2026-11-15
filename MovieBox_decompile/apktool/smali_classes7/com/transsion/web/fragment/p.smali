.class public final synthetic Lcom/transsion/web/fragment/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/web/fragment/p;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/web/fragment/p;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/web/fragment/p;->a:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/web/fragment/p;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2;->v(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
