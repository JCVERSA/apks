.class public interface abstract Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/socket/TransferSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SocketServerListener"
.end annotation


# virtual methods
.method public abstract onAccept()V
.end method

.method public abstract onCreateFail()V
.end method

.method public abstract onCreateSuccess()V
.end method

.method public abstract onDisconnected()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onProgress(J)V
.end method

.method public onReceiveFinish()V
    .locals 0

    return-void
.end method

.method public abstract onReceived(IILcom/transsion/socket/pkgdata/SocketData;)V
.end method
