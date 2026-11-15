.class public interface abstract Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/socket/TransferSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SocketClientListener"
.end annotation


# virtual methods
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
