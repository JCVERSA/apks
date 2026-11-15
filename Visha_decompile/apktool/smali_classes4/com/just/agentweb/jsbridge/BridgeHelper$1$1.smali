.class Lcom/just/agentweb/jsbridge/BridgeHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/just/agentweb/jsbridge/OnBridgeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/jsbridge/BridgeHelper$1;->onCallBack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/just/agentweb/jsbridge/BridgeHelper$1;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/jsbridge/BridgeHelper$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/just/agentweb/jsbridge/BridgeHelper$1$1;->this$1:Lcom/just/agentweb/jsbridge/BridgeHelper$1;

    iput-object p2, p0, Lcom/just/agentweb/jsbridge/BridgeHelper$1$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/just/agentweb/jsbridge/Message;

    invoke-direct {v0}, Lcom/just/agentweb/jsbridge/Message;-><init>()V

    iget-object v1, p0, Lcom/just/agentweb/jsbridge/BridgeHelper$1$1;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/just/agentweb/jsbridge/Message;->setResponseId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/just/agentweb/jsbridge/Message;->setResponseData(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper$1$1;->this$1:Lcom/just/agentweb/jsbridge/BridgeHelper$1;

    iget-object p0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper$1;->this$0:Lcom/just/agentweb/jsbridge/BridgeHelper;

    invoke-static {p0, v0}, Lcom/just/agentweb/jsbridge/BridgeHelper;->d(Lcom/just/agentweb/jsbridge/BridgeHelper;Lcom/just/agentweb/jsbridge/Message;)V

    return-void
.end method
