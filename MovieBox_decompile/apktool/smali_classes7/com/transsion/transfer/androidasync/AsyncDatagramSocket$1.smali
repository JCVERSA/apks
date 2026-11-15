.class Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;->H(Ljava/lang/String;ILjava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;

.field final synthetic val$buffer:Ljava/nio/ByteBuffer;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;Ljava/lang/String;ILjava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->this$0:Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$host:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$port:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$buffer:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->this$0:Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$host:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$port:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;->val$buffer:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;->H(Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
