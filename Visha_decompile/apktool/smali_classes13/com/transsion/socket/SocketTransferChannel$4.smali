.class Lcom/transsion/socket/SocketTransferChannel$4;
.super Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/socket/SocketTransferChannel;->runOnceReceiveHeartData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/socket/SocketTransferChannel;

.field final synthetic val$watchdog:Lcom/transsion/socket/internal/Watchdog;


# direct methods
.method public constructor <init>(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/internal/Watchdog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$4;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    iput-object p2, p0, Lcom/transsion/socket/SocketTransferChannel$4;->val$watchdog:Lcom/transsion/socket/internal/Watchdog;

    invoke-direct {p0}, Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel$4;->val$watchdog:Lcom/transsion/socket/internal/Watchdog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/internal/Watchdog;->run()V

    :cond_0
    return-void
.end method
