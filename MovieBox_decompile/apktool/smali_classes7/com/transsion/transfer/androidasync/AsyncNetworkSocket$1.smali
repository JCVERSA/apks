.class Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

.field final synthetic val$list:Lcom/transsion/transfer/androidasync/ByteBufferList;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;->this$0:Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;->val$list:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;->this$0:Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;->val$list:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
