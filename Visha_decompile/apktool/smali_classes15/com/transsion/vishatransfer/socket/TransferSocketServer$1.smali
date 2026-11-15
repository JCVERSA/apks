.class Lcom/transsion/vishatransfer/socket/TransferSocketServer$1;
.super Lcom/transsion/socket/SocketTrafficStats;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/socket/TransferSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/socket/TransferSocketServer;JI)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/socket/SocketTrafficStats;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public onReceiveSpeedUpdate(JJJ)V
    .locals 1

    invoke-super/range {p0 .. p6}, Lcom/transsion/socket/SocketTrafficStats;->onReceiveSpeedUpdate(JJJ)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {v0, p1, p2}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->m(Lcom/transsion/vishatransfer/socket/TransferSocketServer;J)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1, p3, p4}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->j(Lcom/transsion/vishatransfer/socket/TransferSocketServer;J)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->i(Lcom/transsion/vishatransfer/socket/TransferSocketServer;Z)V

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$1;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p0

    invoke-interface {p0, p5, p6}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onProgress(J)V

    return-void
.end method
