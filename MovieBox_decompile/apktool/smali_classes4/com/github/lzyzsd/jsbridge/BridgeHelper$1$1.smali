.class Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/OnBridgeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;->onCallBack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;->this$1:Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;->val$callbackId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/github/lzyzsd/jsbridge/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/github/lzyzsd/jsbridge/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;->val$callbackId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseId(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseData(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1$1;->this$1:Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/github/lzyzsd/jsbridge/BridgeHelper$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeHelper;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/github/lzyzsd/jsbridge/BridgeHelper;->d(Lcom/github/lzyzsd/jsbridge/BridgeHelper;Lcom/github/lzyzsd/jsbridge/Message;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
