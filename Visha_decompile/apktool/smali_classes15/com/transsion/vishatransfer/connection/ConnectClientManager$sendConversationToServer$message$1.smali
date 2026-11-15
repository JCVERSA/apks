.class public final Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendConversationToServer$message$1;
.super Lcom/transsion/vishatransfer/socket/TransferMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/connection/ConnectClientManager;->sendConversationToServer(Lcom/transsion/vishatransfer/data/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "com/transsion/vishatransfer/connection/ConnectClientManager$sendConversationToServer$message$1",
        "Lcom/transsion/vishatransfer/socket/TransferMessage;",
        "",
        "position",
        "Lzfb;",
        "progress",
        "(J)V",
        "complete",
        "()V",
        "beforeSend",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishatransfer/socket/TransferMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeSend()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getTAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sendConversationToServer beforeSend"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public complete()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getTAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sendConversationToServer complete"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public progress(J)V
    .locals 0

    return-void
.end method
