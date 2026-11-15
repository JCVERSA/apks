.class public final synthetic Lcom/just/agentweb/jsbridge/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/just/agentweb/jsbridge/BridgeWebView;

.field public final synthetic c:Lcom/just/agentweb/jsbridge/JSResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/just/agentweb/jsbridge/BridgeWebView;Lcom/just/agentweb/jsbridge/JSResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/just/agentweb/jsbridge/a;->b:Lcom/just/agentweb/jsbridge/BridgeWebView;

    iput-object p2, p0, Lcom/just/agentweb/jsbridge/a;->c:Lcom/just/agentweb/jsbridge/JSResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/jsbridge/a;->b:Lcom/just/agentweb/jsbridge/BridgeWebView;

    iget-object p0, p0, Lcom/just/agentweb/jsbridge/a;->c:Lcom/just/agentweb/jsbridge/JSResponse;

    invoke-static {v0, p0}, Lcom/just/agentweb/jsbridge/BridgeWebView;->a(Lcom/just/agentweb/jsbridge/BridgeWebView;Lcom/just/agentweb/jsbridge/JSResponse;)V

    return-void
.end method
