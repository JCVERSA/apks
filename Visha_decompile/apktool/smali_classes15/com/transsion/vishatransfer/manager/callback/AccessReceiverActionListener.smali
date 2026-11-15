.class public interface abstract Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000c\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ/\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;",
        "",
        "",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        "devices",
        "Lzfb;",
        "onPeersAvailable",
        "(Ljava/util/List;)V",
        "Landroid/net/NetworkInfo;",
        "networkInfo",
        "",
        "userType",
        "onConnectionChanged",
        "(Landroid/net/NetworkInfo;I)V",
        "",
        "totalSize",
        "transferedSize",
        "fileNum",
        "totalNum",
        "onProgress",
        "(JJII)V",
        "Lcom/transsion/vishatransfer/data/WifiModel;",
        "wifiModel",
        "onError",
        "(Lcom/transsion/vishatransfer/data/WifiModel;)V",
        "Lcom/transsion/vishatransfer/data/ConnectedState;",
        "socketState",
        "onTransferState",
        "(Lcom/transsion/vishatransfer/data/ConnectedState;)V",
        "Lcom/transsion/vishatransfer/data/FileData;",
        "fileData",
        "onFileTranslated",
        "(Lcom/transsion/vishatransfer/data/FileData;I)V",
        "Lcom/transsion/vishatransfer/data/Conversation;",
        "conversation",
        "onConversationMessage",
        "(Lcom/transsion/vishatransfer/data/Conversation;)V",
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
.method public abstract onConnectionChanged(Landroid/net/NetworkInfo;I)V
.end method

.method public abstract onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
.end method

.method public abstract onError(Lcom/transsion/vishatransfer/data/WifiModel;)V
.end method

.method public abstract onFileTranslated(Lcom/transsion/vishatransfer/data/FileData;I)V
.end method

.method public abstract onPeersAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(JJII)V
.end method

.method public abstract onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V
.end method
