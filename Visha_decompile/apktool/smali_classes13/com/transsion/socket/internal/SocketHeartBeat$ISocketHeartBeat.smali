.class public interface abstract Lcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/socket/internal/SocketHeartBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISocketHeartBeat"
.end annotation


# virtual methods
.method public abstract onSocketError(Lcom/transsion/socket/SocketClient;I)V
.end method

.method public abstract onSocketTimeout(Lcom/transsion/socket/SocketClient;)V
.end method
