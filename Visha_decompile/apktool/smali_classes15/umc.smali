.class public final synthetic Lumc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

.field public final synthetic c:Lcom/transsion/vishatransfer/data/Conversation;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lumc;->b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iput-object p2, p0, Lumc;->c:Lcom/transsion/vishatransfer/data/Conversation;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lumc;->b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget-object p0, p0, Lumc;->c:Lcom/transsion/vishatransfer/data/Conversation;

    invoke-static {v0, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->d(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/Conversation;)Lzfb;

    move-result-object p0

    return-object p0
.end method
