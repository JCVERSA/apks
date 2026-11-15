.class public interface abstract Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;",
        "Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;",
        "Lcom/transsion/vishatransfer/data/Conversation;",
        "conversation",
        "Lzfb;",
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
.method public abstract onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
.end method
