.class public interface abstract Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/socket/internal/SocketHeartBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IServerHeartBeat"
.end annotation


# virtual methods
.method public abstract onSocketError(I)V
.end method

.method public abstract onSocketTimeout(Lcom/transsion/socket/SocketTransferChannel;)V
.end method
