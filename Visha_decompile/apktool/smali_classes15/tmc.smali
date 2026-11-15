.class public final synthetic Ltmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltmc;->b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ltmc;->b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;->i(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method
