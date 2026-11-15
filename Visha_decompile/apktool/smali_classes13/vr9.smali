.class public final synthetic Lvr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/socket/SocketTrafficStats;

.field public final synthetic c:Lcom/transsion/socket/SocketTransferChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/socket/SocketTrafficStats;Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvr9;->b:Lcom/transsion/socket/SocketTrafficStats;

    iput-object p2, p0, Lvr9;->c:Lcom/transsion/socket/SocketTransferChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvr9;->b:Lcom/transsion/socket/SocketTrafficStats;

    iget-object p0, p0, Lvr9;->c:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0, p0}, Lcom/transsion/socket/SocketTrafficStats;->b(Lcom/transsion/socket/SocketTrafficStats;Lcom/transsion/socket/SocketTransferChannel;)V

    return-void
.end method
