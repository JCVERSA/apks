.class public interface abstract Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract bindRemoteSync(Landroid/content/Context;)Z
.end method

.method public abstract getServiceInterface()Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;
.end method

.method public abstract getSession()Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isConnecting()Z
.end method

.method public abstract remoteDesc()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract unbindRemote(Landroid/content/Context;)V
.end method
