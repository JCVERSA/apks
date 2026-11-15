.class public interface abstract Lcom/transsion/vishatransfer/manager/ITransferHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishatransfer/manager/ITransferHelper$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J/\u0010\r\u001a\u00020\u00062\u001e\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0017\u00a2\u0006\u0004\u0008\r\u0010\u000eJ/\u0010\u000f\u001a\u00020\u00062\u001e\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0017\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ/\u0010\u0010\u001a\u00020\u00062\u001e\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ7\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u001e\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0017\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J/\u0010\u0015\u001a\u00020\u00062\u001e\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u000eJ/\u0010\u0016\u001a\u00020\u00062\u001e\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u000eJ\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001d\u0010\u001c\u001a\u00020\u00062\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\"\u0010!J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0018J7\u0010&\u001a\u00020\u00062&\u0010\u000c\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010%\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060$H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008*\u0010)J\u0017\u0010,\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00082\u00103J\u0017\u00105\u001a\u0002042\u0006\u00101\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00085\u00106J\u0017\u00107\u001a\u0002042\u0006\u00101\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00087\u00106J\u0017\u00108\u001a\u0002042\u0006\u00101\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00088\u00106\u00a8\u00069"
    }
    d2 = {
        "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
        "",
        "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;",
        "listener",
        "",
        "userType",
        "Lzfb;",
        "registerListener",
        "(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V",
        "Lkotlin/Function3;",
        "",
        "",
        "callback",
        "createGroupAsync",
        "(Lu74;)V",
        "createGroupAsyncWithRetry",
        "searchDevicesAsync",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        "device",
        "connectAsync",
        "(Landroid/net/wifi/p2p/WifiP2pDevice;Lu74;)V",
        "disconnectAsync",
        "removeGroupAsync",
        "release",
        "(I)V",
        "",
        "Lcom/transsion/vishatransfer/data/FileData;",
        "fileDataList",
        "sendFileDataToServerAsync",
        "(Ljava/util/List;)V",
        "Lcom/transsion/vishatransfer/data/Conversation;",
        "conversation",
        "sendConversationToService",
        "(Lcom/transsion/vishatransfer/data/Conversation;)V",
        "sendConversationToClient",
        "cancelTransfer",
        "Lkotlin/Function4;",
        "Landroid/net/wifi/p2p/WifiP2pInfo;",
        "getConnectionInfoAsync",
        "(Lw74;)V",
        "unRegisterServerReceiver",
        "()V",
        "unregisterP2pConnectReceiver",
        "accessReceiverActionListener",
        "unregisterCallback",
        "(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V",
        "Lcom/transsion/vishatransfer/data/ConnectedState;",
        "getConnectState",
        "()Lcom/transsion/vishatransfer/data/ConnectedState;",
        "isClient",
        "getTotalNum",
        "(Z)I",
        "",
        "getTotalSize",
        "(Z)J",
        "getRecentSpeedPerSecond",
        "getAverageSpeedPerSecond",
        "vishatransferlib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract cancelTransfer(I)V
.end method

.method public abstract connectAsync(Landroid/net/wifi/p2p/WifiP2pDevice;Lu74;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            "Lu74;",
            ")V"
        }
    .end annotation
.end method

.method public abstract createGroupAsync(Lu74;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            ")V"
        }
    .end annotation
.end method

.method public abstract createGroupAsyncWithRetry(Lu74;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            ")V"
        }
    .end annotation
.end method

.method public abstract disconnectAsync(Lu74;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getAverageSpeedPerSecond(Z)J
.end method

.method public abstract getConnectState()Lcom/transsion/vishatransfer/data/ConnectedState;
.end method

.method public abstract getConnectionInfoAsync(Lw74;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw74;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getRecentSpeedPerSecond(Z)J
.end method

.method public abstract getTotalNum(Z)I
.end method

.method public abstract getTotalSize(Z)J
.end method

.method public abstract registerListener(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V
.end method

.method public abstract release(I)V
.end method

.method public abstract removeGroupAsync(Lu74;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            ")V"
        }
    .end annotation
.end method

.method public abstract searchDevicesAsync(Lu74;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendConversationToClient(Lcom/transsion/vishatransfer/data/Conversation;)V
.end method

.method public abstract sendConversationToService(Lcom/transsion/vishatransfer/data/Conversation;)V
.end method

.method public abstract sendFileDataToServerAsync(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/vishatransfer/data/FileData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unRegisterServerReceiver()V
.end method

.method public abstract unregisterCallback(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V
.end method

.method public abstract unregisterP2pConnectReceiver()V
.end method
