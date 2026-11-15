.class Lcom/transsion/transfer/androidasync/AsyncServer$2$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncServer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/nio/channels/ServerSocketChannel;

.field final synthetic b:Lcom/transsion/transfer/androidasync/y;

.field final synthetic c:Ljava/nio/channels/SelectionKey;

.field final synthetic d:Lcom/transsion/transfer/androidasync/AsyncServer$2;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer$2;Ljava/nio/channels/ServerSocketChannel;Lcom/transsion/transfer/androidasync/y;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2$a;->d:Lcom/transsion/transfer/androidasync/AsyncServer$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2$a;->a:Ljava/nio/channels/ServerSocketChannel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2$a;->b:Lcom/transsion/transfer/androidasync/y;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2$a;->c:Ljava/nio/channels/SelectionKey;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2$a;->b:Lcom/transsion/transfer/androidasync/y;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/io/Closeable;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v0, v1, v2

    .line 8
    .line 9
    invoke-static {v1}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2$a;->c:Ljava/nio/channels/SelectionKey;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    return-void
.end method
