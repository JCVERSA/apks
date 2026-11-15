.class public final synthetic Llmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/socket/pkgdata/SocketData;

.field public final synthetic c:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/socket/pkgdata/SocketData;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmc;->b:Lcom/transsion/socket/pkgdata/SocketData;

    iput-object p2, p0, Llmc;->c:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llmc;->b:Lcom/transsion/socket/pkgdata/SocketData;

    iget-object p0, p0, Llmc;->c:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {v0, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->d(Lcom/transsion/socket/pkgdata/SocketData;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method
