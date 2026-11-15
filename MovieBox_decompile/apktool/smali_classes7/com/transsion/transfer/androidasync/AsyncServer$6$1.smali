.class Lcom/transsion/transfer/androidasync/AsyncServer$6$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncServer$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/transfer/androidasync/AsyncServer$6;

.field final synthetic val$result:[Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer$6;[Ljava/net/InetAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6$1;->this$1:Lcom/transsion/transfer/androidasync/AsyncServer$6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6$1;->val$result:[Ljava/net/InetAddress;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6$1;->this$1:Lcom/transsion/transfer/androidasync/AsyncServer$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->val$ret:Lcom/transsion/transfer/androidasync/future/w;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6$1;->val$result:[Ljava/net/InetAddress;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/future/w;->H(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
